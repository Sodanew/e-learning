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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello`
  String get greeting {
    return Intl.message(
      'Hello',
      name: 'greeting',
      desc: '',
      args: [],
    );
  }

  /// `The best app for`
  String get onboarding_1_title {
    return Intl.message(
      'The best app for',
      name: 'onboarding_1_title',
      desc: '',
      args: [],
    );
  }

  /// `Find Your Dream Job`
  String get onboarding_1_title_2 {
    return Intl.message(
      'Find Your Dream Job',
      name: 'onboarding_1_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Explore thousands of job opportunities that match your skills and interests. Let us help you connect with top companies and land your dream job!`
  String get onboarding_1_description {
    return Intl.message(
      'Explore thousands of job opportunities that match your skills and interests. Let us help you connect with top companies and land your dream job!',
      name: 'onboarding_1_description',
      desc: '',
      args: [],
    );
  }

  /// `Better future is`
  String get onboarding_2_title {
    return Intl.message(
      'Better future is',
      name: 'onboarding_2_title',
      desc: '',
      args: [],
    );
  }

  /// `starting from you`
  String get onboarding_2_title_2 {
    return Intl.message(
      'starting from you',
      name: 'onboarding_2_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Your future starts with the right career choice. Take control of your journey today and unlock new opportunities for success!`
  String get onboarding_2_description {
    return Intl.message(
      'Your future starts with the right career choice. Take control of your journey today and unlock new opportunities for success!',
      name: 'onboarding_2_description',
      desc: '',
      args: [],
    );
  }

  /// `Application surely viewed by`
  String get onboarding_3_title {
    return Intl.message(
      'Application surely viewed by',
      name: 'onboarding_3_title',
      desc: '',
      args: [],
    );
  }

  /// `each company`
  String get onboarding_3_title_2 {
    return Intl.message(
      'each company',
      name: 'onboarding_3_title_2',
      desc: '',
      args: [],
    );
  }

  /// `No more ignored applications! We ensure your resume reaches the right employers, increasing your chances of getting hired.`
  String get onboarding_3_description {
    return Intl.message(
      'No more ignored applications! We ensure your resume reaches the right employers, increasing your chances of getting hired.',
      name: 'onboarding_3_description',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
