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

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: 'The conventional newborn programmer greeting',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Who are you?`
  String get whoAreYou {
    return Intl.message(
      'Who are you?',
      name: 'whoAreYou',
      desc: '',
      args: [],
    );
  }

  /// `Client`
  String get client {
    return Intl.message(
      'Client',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Technician`
  String get technician {
    return Intl.message(
      'Technician',
      name: 'technician',
      desc: '',
      args: [],
    );
  }

  /// `Collaborator`
  String get collaborator {
    return Intl.message(
      'Collaborator',
      name: 'collaborator',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continuation {
    return Intl.message(
      'Continue',
      name: 'continuation',
      desc: '',
      args: [],
    );
  }

  /// `REGISTRATION`
  String get registration {
    return Intl.message(
      'REGISTRATION',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Referral Code (if any)`
  String get referralCode {
    return Intl.message(
      'Referral Code (if any)',
      name: 'referralCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter`
  String get pleaseEntering {
    return Intl.message(
      'Please enter',
      name: 'pleaseEntering',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign in now!`
  String get signInNow {
    return Intl.message(
      'Sign in now!',
      name: 'signInNow',
      desc: '',
      args: [],
    );
  }

  /// `Current Address`
  String get currentAddress {
    return Intl.message(
      'Current Address',
      name: 'currentAddress',
      desc: '',
      args: [],
    );
  }

  /// `Expertise`
  String get expertise {
    return Intl.message(
      'Expertise',
      name: 'expertise',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Citizen ID Image`
  String get citizenIdImage {
    return Intl.message(
      'Citizen ID Image',
      name: 'citizenIdImage',
      desc: '',
      args: [],
    );
  }

  /// `Please upload 2 images of the front and back of your Citizen ID card.`
  String get citizenIdHint {
    return Intl.message(
      'Please upload 2 images of the front and back of your Citizen ID card.',
      name: 'citizenIdHint',
      desc: '',
      args: [],
    );
  }

  /// `Add Personal Images`
  String get personalImages {
    return Intl.message(
      'Add Personal Images',
      name: 'personalImages',
      desc: '',
      args: [],
    );
  }

  /// `Note:`
  String get note {
    return Intl.message(
      'Note:',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Do not upload revealing images. The images should be clear, well-lit, and professional.`
  String get noteOne {
    return Intl.message(
      'Do not upload revealing images. The images should be clear, well-lit, and professional.',
      name: 'noteOne',
      desc: '',
      args: [],
    );
  }

  /// `Do not upload revealing images. The images should be clear, well-lit, and professional.`
  String get noteTwo {
    return Intl.message(
      'Do not upload revealing images. The images should be clear, well-lit, and professional.',
      name: 'noteTwo',
      desc: '',
      args: [],
    );
  }

  /// `Please add at least 2 images`
  String get personalImageWarning {
    return Intl.message(
      'Please add at least 2 images',
      name: 'personalImageWarning',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `City of Work`
  String get cityOfWork {
    return Intl.message(
      'City of Work',
      name: 'cityOfWork',
      desc: '',
      args: [],
    );
  }

  /// `District of Work`
  String get districtOfWork {
    return Intl.message(
      'District of Work',
      name: 'districtOfWork',
      desc: '',
      args: [],
    );
  }

  /// `Describe Yourself`
  String get yourselfDescription {
    return Intl.message(
      'Describe Yourself',
      name: 'yourselfDescription',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get signIn {
    return Intl.message(
      'SIGN IN',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up now!`
  String get signUpNow {
    return Intl.message(
      'Sign up now!',
      name: 'signUpNow',
      desc: '',
      args: [],
    );
  }

  /// `Or sign in with`
  String get or {
    return Intl.message(
      'Or sign in with',
      name: 'or',
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
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'vi'),
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
