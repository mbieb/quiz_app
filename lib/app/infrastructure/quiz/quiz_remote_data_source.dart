import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app/app/domain/quiz/quiz.dart';

@injectable
class QuizRemoteDataSource {
  Future<List<Quiz>> getData() async {
    final quizRef = await FirebaseFirestore.instance.collection('quiz').get();
    List<Quiz> data = [];

    for (var element in quizRef.docs) {
      List<Map<String, dynamic>> questionsMap = await _getQuestions(element.id);
      List<Question> questions = _mapToQuestions(questionsMap);
      data.add(
        Quiz(
          name: element['name'],
          topicId: element['topicId'],
          questions: questions,
        ),
      );
    }

    return data;
  }

  Future<List<Map<String, dynamic>>> _getQuestions(String quizId) async {
    List<Map<String, dynamic>> questions = [];

    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('quiz')
          .doc(quizId)
          .collection('questions')
          .get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        Map<String, dynamic> questionData = doc.data() as Map<String, dynamic>;
        questionData['id'] = doc.id;
        List<Map<String, dynamic>> answers = await _getAnswers(quizId, doc.id);
        questionData['answers'] = answers;

        questions.add(questionData);
      }
    } catch (e) {
      print('Error getting questions: $e');
    }

    return questions;
  }

  Future<List<Map<String, dynamic>>> _getAnswers(
      String quizId, String questionId) async {
    List<Map<String, dynamic>> answers = [];

    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('quiz')
          .doc(quizId)
          .collection('questions')
          .doc(questionId)
          .collection('answers')
          .get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        Map<String, dynamic> questionData = doc.data() as Map<String, dynamic>;
        questionData['id'] = doc.id;
        answers.add(questionData);
      }
    } catch (e) {
      print('Error getting answers: $e');
    }

    return answers;
  }

  List<Question> _mapToQuestions(List<Map<String, dynamic>> questionsMap) {
    return questionsMap.map((question) {
      List<Answer> answers = _mapToAnswers(question['answers']);
      String imgUrl = '';
      if (question.containsKey('imgUrl')) {
        imgUrl = question['imgUrl'];
      }
      return Question(
        answers: answers,
        correcAnswerId: question['correctAnswerId'],
        question: question['question'],
        imgUrl: imgUrl,
      );
    }).toList();
  }

  List<Answer> _mapToAnswers(List<Map<String, dynamic>> answersMap) {
    return answersMap.map((answer) {
      return Answer(id: answer['id'], text: answer['text']);
    }).toList();
  }
}
