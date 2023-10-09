// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alertCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "alertConfirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "alertFailed": MessageLookupByLibrary.simpleMessage("Failed"),
        "alertLogout": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to log out?"),
        "alertNoConnection": MessageLookupByLibrary.simpleMessage(
            "No connection, please check your internet"),
        "alertOk": MessageLookupByLibrary.simpleMessage("Ok"),
        "alertQuit": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to quit the app?"),
        "alertTimeOut":
            MessageLookupByLibrary.simpleMessage("Request time out"),
        "alertWarning": MessageLookupByLibrary.simpleMessage("Warning"),
        "appInfo":
            MessageLookupByLibrary.simpleMessage("Learn + Take Quiz + Repeat"),
        "appTitle": MessageLookupByLibrary.simpleMessage("Flutter Quiz App"),
        "play": MessageLookupByLibrary.simpleMessage("Play"),
        "quizPage": MessageLookupByLibrary.simpleMessage("Quiz Page"),
        "rateUs": MessageLookupByLibrary.simpleMessage("Rate Us"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "shareYourScore":
            MessageLookupByLibrary.simpleMessage("Share Your Score"),
        "topics": MessageLookupByLibrary.simpleMessage("Topics"),
        "yourReport": MessageLookupByLibrary.simpleMessage("Your Report"),
        "yourScore": MessageLookupByLibrary.simpleMessage("Your Score")
      };
}
