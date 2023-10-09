// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Flutter Quiz App`
  String get appTitle {
    return Intl.message(
      'Flutter Quiz App',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Learn + Take Quiz + Repeat`
  String get appInfo {
    return Intl.message(
      'Learn + Take Quiz + Repeat',
      name: 'appInfo',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get alertWarning {
    return Intl.message(
      'Warning',
      name: 'alertWarning',
      desc: '',
      args: [],
    );
  }

  /// `No connection, please check your internet`
  String get alertNoConnection {
    return Intl.message(
      'No connection, please check your internet',
      name: 'alertNoConnection',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get alertFailed {
    return Intl.message(
      'Failed',
      name: 'alertFailed',
      desc: '',
      args: [],
    );
  }

  /// `Request time out`
  String get alertTimeOut {
    return Intl.message(
      'Request time out',
      name: 'alertTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get alertConfirm {
    return Intl.message(
      'Confirm',
      name: 'alertConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get alertCancel {
    return Intl.message(
      'Cancel',
      name: 'alertCancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get alertOk {
    return Intl.message(
      'Ok',
      name: 'alertOk',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get alertLogout {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'alertLogout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit the app?`
  String get alertQuit {
    return Intl.message(
      'Are you sure you want to quit the app?',
      name: 'alertQuit',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Topics`
  String get topics {
    return Intl.message(
      'Topics',
      name: 'topics',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Rate Us`
  String get rateUs {
    return Intl.message(
      'Rate Us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `Quiz Page`
  String get quizPage {
    return Intl.message(
      'Quiz Page',
      name: 'quizPage',
      desc: '',
      args: [],
    );
  }

  /// `Your Score`
  String get yourScore {
    return Intl.message(
      'Your Score',
      name: 'yourScore',
      desc: '',
      args: [],
    );
  }

  /// `Your Report`
  String get yourReport {
    return Intl.message(
      'Your Report',
      name: 'yourReport',
      desc: '',
      args: [],
    );
  }

  /// `Share Your Score`
  String get shareYourScore {
    return Intl.message(
      'Share Your Score',
      name: 'shareYourScore',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
