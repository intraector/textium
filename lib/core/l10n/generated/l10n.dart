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

  /// `Разрешить`
  String get allow {
    return Intl.message(
      'Разрешить',
      name: 'allow',
      desc: '',
      args: [],
    );
  }

  /// `Логотип приложения`
  String get appLogo {
    return Intl.message(
      'Логотип приложения',
      name: 'appLogo',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Очистить`
  String get clear {
    return Intl.message(
      'Очистить',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть`
  String get close {
    return Intl.message(
      'Закрыть',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Изменить пароль`
  String get changePassword {
    return Intl.message(
      'Изменить пароль',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть окно с настройкой кода доступа`
  String get closePermAlert {
    return Intl.message(
      'Закрыть окно с настройкой кода доступа',
      name: 'closePermAlert',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация соискателя`
  String get createAccount {
    return Intl.message(
      'Регистрация соискателя',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get done {
    return Intl.message(
      'Готово',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get phone {
    return Intl.message(
      'Телефон',
      name: 'phone',
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

  /// `Введите код из письма`
  String get enterEmailCode {
    return Intl.message(
      'Введите код из письма',
      name: 'enterEmailCode',
      desc: '',
      args: [],
    );
  }

  /// `Введите код быстрого доступа`
  String get enterFastAccessCode {
    return Intl.message(
      'Введите код быстрого доступа',
      name: 'enterFastAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Ввести код быстрого доступа`
  String get enterPincode {
    return Intl.message(
      'Ввести код быстрого доступа',
      name: 'enterPincode',
      desc: '',
      args: [],
    );
  }

  /// `Повторите код`
  String get enterPincodeAgain {
    return Intl.message(
      'Повторите код',
      name: 'enterPincodeAgain',
      desc: '',
      args: [],
    );
  }

  /// `Введите код из смс`
  String get enterSmsCode {
    return Intl.message(
      'Введите код из смс',
      name: 'enterSmsCode',
      desc: '',
      args: [],
    );
  }

  /// `Забыли пароль`
  String get forgotPassword {
    return Intl.message(
      'Забыли пароль',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Забыли код быстрого доступа?`
  String get forgotPin {
    return Intl.message(
      'Забыли код быстрого доступа?',
      name: 'forgotPin',
      desc: '',
      args: [],
    );
  }

  /// `Для сброса кода быстрого доступа необходимо выйти из аккаунта и авторизоваться снова.`
  String get forgotPinHint {
    return Intl.message(
      'Для сброса кода быстрого доступа необходимо выйти из аккаунта и авторизоваться снова.',
      name: 'forgotPinHint',
      desc: '',
      args: [],
    );
  }

  /// `Имя и фамилия`
  String get fullName {
    return Intl.message(
      'Имя и фамилия',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Есть аккаунт`
  String get haveAccount {
    return Intl.message(
      'Есть аккаунт',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Иконка показать или скрыть пароль`
  String get iconForPassword {
    return Intl.message(
      'Иконка показать или скрыть пароль',
      name: 'iconForPassword',
      desc: '',
      args: [],
    );
  }

  /// `ИИН`
  String get iin {
    return Intl.message(
      'ИИН',
      name: 'iin',
      desc: '',
      args: [],
    );
  }

  /// `Да, это мой ИИН`
  String get iinIsMine {
    return Intl.message(
      'Да, это мой ИИН',
      name: 'iinIsMine',
      desc: '',
      args: [],
    );
  }

  /// `Нет, указать другой ИИН`
  String get iinIsNotMine {
    return Intl.message(
      'Нет, указать другой ИИН',
      name: 'iinIsNotMine',
      desc: '',
      args: [],
    );
  }

  /// `Это ваш ИИН`
  String get iinIsYours {
    return Intl.message(
      'Это ваш ИИН',
      name: 'iinIsYours',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте данные`
  String get inputErrorGeneral {
    return Intl.message(
      'Проверьте данные',
      name: 'inputErrorGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Введите новый email`
  String get inputEmail {
    return Intl.message(
      'Введите новый email',
      name: 'inputEmail',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте email`
  String get inputErrorEmailIncorrect {
    return Intl.message(
      'Проверьте email',
      name: 'inputErrorEmailIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Введите email`
  String get inputErrorEmailIsEmpty {
    return Intl.message(
      'Введите email',
      name: 'inputErrorEmailIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Некорректный ИИН`
  String get inputErrorIin {
    return Intl.message(
      'Некорректный ИИН',
      name: 'inputErrorIin',
      desc: '',
      args: [],
    );
  }

  /// `Введите пароль`
  String get inputErrorPasswordIsEmpty {
    return Intl.message(
      'Введите пароль',
      name: 'inputErrorPasswordIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Минимум 8 символов`
  String get inputErrorPasswordIsShort {
    return Intl.message(
      'Минимум 8 символов',
      name: 'inputErrorPasswordIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Минимум одна цифра`
  String get inputErrorPasswordMustContainDigit {
    return Intl.message(
      'Минимум одна цифра',
      name: 'inputErrorPasswordMustContainDigit',
      desc: '',
      args: [],
    );
  }

  /// `Минимум один специальный символ (%, $, @, &, *, #, ^ и т.д.)`
  String get inputErrorPasswordMustContainSpecSymbol {
    return Intl.message(
      'Минимум один специальный символ (%, \$, @, &, *, #, ^ и т.д.)',
      name: 'inputErrorPasswordMustContainSpecSymbol',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте номер телефона`
  String get inputErrorPhoneIncorrect {
    return Intl.message(
      'Проверьте номер телефона',
      name: 'inputErrorPhoneIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Введите номер телефона`
  String get inputErrorPhoneIsEmpty {
    return Intl.message(
      'Введите номер телефона',
      name: 'inputErrorPhoneIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Введите ИИН`
  String get inputIin {
    return Intl.message(
      'Введите ИИН',
      name: 'inputIin',
      desc: '',
      args: [],
    );
  }

  /// `Введите новый номер телефона`
  String get inputPhone {
    return Intl.message(
      'Введите новый номер телефона',
      name: 'inputPhone',
      desc: '',
      args: [],
    );
  }

  /// `Используйте отпечаток пальца или пароль`
  String get localAuthLocalizedReason {
    return Intl.message(
      'Используйте отпечаток пальца или пароль',
      name: 'localAuthLocalizedReason',
      desc: '',
      args: [],
    );
  }

  /// `Защита паролем не установлена в настройках вашего устройстве`
  String get localAuthNotEnrolled {
    return Intl.message(
      'Защита паролем не установлена в настройках вашего устройстве',
      name: 'localAuthNotEnrolled',
      desc: '',
      args: [],
    );
  }

  /// `Пожалуйста, установите пароль в настройках вашего устройства`
  String get localAuthPassCodeNotSet {
    return Intl.message(
      'Пожалуйста, установите пароль в настройках вашего устройства',
      name: 'localAuthPassCodeNotSet',
      desc: '',
      args: [],
    );
  }

  /// `Слишком много попыток, требуется разблокировка`
  String get localAuthPermanentlyLocked {
    return Intl.message(
      'Слишком много попыток, требуется разблокировка',
      name: 'localAuthPermanentlyLocked',
      desc: '',
      args: [],
    );
  }

  /// `Требуется авторизация`
  String get localAuthSignInTitle {
    return Intl.message(
      'Требуется авторизация',
      name: 'localAuthSignInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Слишком много попыток, попробуйте позже`
  String get localAuthTooManyAttempts {
    return Intl.message(
      'Слишком много попыток, попробуйте позже',
      name: 'localAuthTooManyAttempts',
      desc: '',
      args: [],
    );
  }

  /// `Биометрия недоступна, попробуйте позже`
  String get localAuthUnavailable {
    return Intl.message(
      'Биометрия недоступна, попробуйте позже',
      name: 'localAuthUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Нет данных`
  String get noData {
    return Intl.message(
      'Нет данных',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Нет аккаунта`
  String get noAccount {
    return Intl.message(
      'Нет аккаунта',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Нет, спасибо`
  String get noThanks {
    return Intl.message(
      'Нет, спасибо',
      name: 'noThanks',
      desc: '',
      args: [],
    );
  }

  /// `Для получения услуги вам необходимо зарегистрироваться в БМГ`
  String get notRegisteredInBmgSubtitle {
    return Intl.message(
      'Для получения услуги вам необходимо зарегистрироваться в БМГ',
      name: 'notRegisteredInBmgSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Вы не зарегистрированы в Базе мобильных граждан`
  String get notRegisteredInBmgTitle {
    return Intl.message(
      'Вы не зарегистрированы в Базе мобильных граждан',
      name: 'notRegisteredInBmgTitle',
      desc: '',
      args: [],
    );
  }

  /// `Или`
  String get or {
    return Intl.message(
      'Или',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Разрешить доступ можно в настройках приватности на вашем устройстве`
  String get permissionsRequestHint {
    return Intl.message(
      'Разрешить доступ можно в настройках приватности на вашем устройстве',
      name: 'permissionsRequestHint',
      desc: '',
      args: [],
    );
  }

  /// `Приложению требуется разрешение на доступ к фото`
  String get permissionsRequestPhoto {
    return Intl.message(
      'Приложению требуется разрешение на доступ к фото',
      name: 'permissionsRequestPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Приложению требуется разрешение на доступ к файлам`
  String get permissionsRequestStorage {
    return Intl.message(
      'Приложению требуется разрешение на доступ к файлам',
      name: 'permissionsRequestStorage',
      desc: '',
      args: [],
    );
  }

  /// `Нет разрешения на доступ к уведомлениям`
  String get permissionsRequestPushNotifs {
    return Intl.message(
      'Нет разрешения на доступ к уведомлениям',
      name: 'permissionsRequestPushNotifs',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get phoneNumber {
    return Intl.message(
      'Номер телефона',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Коды не совпадают`
  String get pinDoesntMatch {
    return Intl.message(
      'Коды не совпадают',
      name: 'pinDoesntMatch',
      desc: '',
      args: [],
    );
  }

  /// `Подождите {duration} сек.`
  String pincodeErrorTimeout(Object duration) {
    return Intl.message(
      'Подождите $duration сек.',
      name: 'pincodeErrorTimeout',
      desc: '',
      args: [duration],
    );
  }

  /// `Не удалось отключить уведомления`
  String get pushNotifsErrorCantSwitchOff {
    return Intl.message(
      'Не удалось отключить уведомления',
      name: 'pushNotifsErrorCantSwitchOff',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось включить уведомления`
  String get pushNotifsErrorCantSwitchOn {
    return Intl.message(
      'Не удалось включить уведомления',
      name: 'pushNotifsErrorCantSwitchOn',
      desc: '',
      args: [],
    );
  }

  /// `Восстановить пароль`
  String get recoverPassword {
    return Intl.message(
      'Восстановить пароль',
      name: 'recoverPassword',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Отправить код`
  String get sendCode {
    return Intl.message(
      'Отправить код',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Отправили код подтверждения на\n{address}`
  String sentCodeTo(Object address) {
    return Intl.message(
      'Отправили код подтверждения на\n$address',
      name: 'sentCodeTo',
      desc: '',
      args: [address],
    );
  }

  /// `Установите код быстрого доступа`
  String get setFastAccessCode {
    return Intl.message(
      'Установите код быстрого доступа',
      name: 'setFastAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Найти`
  String get find {
    return Intl.message(
      'Найти',
      name: 'find',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get signin {
    return Intl.message(
      'Войти',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Войти как`
  String get signinAs {
    return Intl.message(
      'Войти как',
      name: 'signinAs',
      desc: '',
      args: [],
    );
  }

  /// `Войти через БМГ`
  String get signinViaBmg {
    return Intl.message(
      'Войти через БМГ',
      name: 'signinViaBmg',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Apple`
  String get signinWithApple {
    return Intl.message(
      'Войти с Apple',
      name: 'signinWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Facebook`
  String get signinWithFacebook {
    return Intl.message(
      'Войти с Facebook',
      name: 'signinWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Google`
  String get signinWithGoogle {
    return Intl.message(
      'Войти с Google',
      name: 'signinWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get signout {
    return Intl.message(
      'Выйти',
      name: 'signout',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из аккаунта`
  String get signoutOfAccount {
    return Intl.message(
      'Выйти из аккаунта',
      name: 'signoutOfAccount',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get signup {
    return Intl.message(
      'Зарегистрироваться',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Запросить код`
  String get smsCodeRequest {
    return Intl.message(
      'Запросить код',
      name: 'smsCodeRequest',
      desc: '',
      args: [],
    );
  }

  /// `Запросить код повторно через {timeout} сек`
  String smsCodeRequestTimeout(Object timeout) {
    return Intl.message(
      'Запросить код повторно через $timeout сек',
      name: 'smsCodeRequestTimeout',
      desc: '',
      args: [timeout],
    );
  }

  /// `Слишком много попыток.\nПожалуйста, подождите`
  String get smsCodeTooManyAttemts {
    return Intl.message(
      'Слишком много попыток.\nПожалуйста, подождите',
      name: 'smsCodeTooManyAttemts',
      desc: '',
      args: [],
    );
  }

  /// `Что-то пошло не так`
  String get somethingWentWrong {
    return Intl.message(
      'Что-то пошло не так',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Текстовое поле`
  String get textField {
    return Intl.message(
      'Текстовое поле',
      name: 'textField',
      desc: '',
      args: [],
    );
  }

  /// `Попробовать снова`
  String get tryAgain {
    return Intl.message(
      'Попробовать снова',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Использовать`
  String get use {
    return Intl.message(
      'Использовать',
      name: 'use',
      desc: '',
      args: [],
    );
  }

  /// `Использовать код быстрого доступа`
  String get useAccessCode {
    return Intl.message(
      'Использовать код быстрого доступа',
      name: 'useAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Разрешить вход по отпечатку пальца и Face ID?`
  String get useFaceId {
    return Intl.message(
      'Разрешить вход по отпечатку пальца и Face ID?',
      name: 'useFaceId',
      desc: '',
      args: [],
    );
  }

  /// `Разрешить вход по отпечатку пальца?`
  String get useFingerprints {
    return Intl.message(
      'Разрешить вход по отпечатку пальца?',
      name: 'useFingerprints',
      desc: '',
      args: [],
    );
  }

  /// `Использовать код быстрого доступа?`
  String get usePincode {
    return Intl.message(
      'Использовать код быстрого доступа?',
      name: 'usePincode',
      desc: '',
      args: [],
    );
  }

  /// `Cоглашаюсь с условиями`
  String get userLicenseAgree1 {
    return Intl.message(
      'Cоглашаюсь с условиями',
      name: 'userLicenseAgree1',
      desc: '',
      args: [],
    );
  }

  /// `Пользовательского соглашения`
  String get userLicenseAgree2 {
    return Intl.message(
      'Пользовательского соглашения',
      name: 'userLicenseAgree2',
      desc: '',
      args: [],
    );
  }

  /// `По email`
  String get withEmail {
    return Intl.message(
      'По email',
      name: 'withEmail',
      desc: '',
      args: [],
    );
  }

  /// `По мобильному`
  String get withPhone {
    return Intl.message(
      'По мобильному',
      name: 'withPhone',
      desc: '',
      args: [],
    );
  }

  /// `Неверный код`
  String get wrongCode {
    return Intl.message(
      'Неверный код',
      name: 'wrongCode',
      desc: '',
      args: [],
    );
  }

  /// `Выход из аккаунта`
  String get exitFromAccount {
    return Intl.message(
      'Выход из аккаунта',
      name: 'exitFromAccount',
      desc: '',
      args: [],
    );
  }

  /// `О приложении`
  String get aboutApp {
    return Intl.message(
      'О приложении',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Все сервисы`
  String get allServices {
    return Intl.message(
      'Все сервисы',
      name: 'allServices',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите выйти?`
  String get appExitConfirmation {
    return Intl.message(
      'Вы действительно хотите выйти?',
      name: 'appExitConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Вход по отпечатку пальца и Face ID`
  String get biometrics {
    return Intl.message(
      'Вход по отпечатку пальца и Face ID',
      name: 'biometrics',
      desc: '',
      args: [],
    );
  }

  /// `Изменить email`
  String get changeEmail {
    return Intl.message(
      'Изменить email',
      name: 'changeEmail',
      desc: '',
      args: [],
    );
  }

  /// `Изменить код быстрого доступа`
  String get changeFastAccessCode {
    return Intl.message(
      'Изменить код быстрого доступа',
      name: 'changeFastAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Изменить номер телефона`
  String get changePhoneNumber {
    return Intl.message(
      'Изменить номер телефона',
      name: 'changePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть диалоговое окно`
  String get closeModal {
    return Intl.message(
      'Закрыть диалоговое окно',
      name: 'closeModal',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get confirm {
    return Intl.message(
      'Подтвердить',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить пароль`
  String get confPassword {
    return Intl.message(
      'Подтвердить пароль',
      name: 'confPassword',
      desc: '',
      args: [],
    );
  }

  /// `Текущий пароль`
  String get currentPassword {
    return Intl.message(
      'Текущий пароль',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Введите код из письма`
  String get emailCodeLabel {
    return Intl.message(
      'Введите код из письма',
      name: 'emailCodeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Email сохранен`
  String get emailSaved {
    return Intl.message(
      'Email сохранен',
      name: 'emailSaved',
      desc: '',
      args: [],
    );
  }

  /// `Введите код из смс`
  String get enterCodeFromSms {
    return Intl.message(
      'Введите код из смс',
      name: 'enterCodeFromSms',
      desc: '',
      args: [],
    );
  }

  /// `Ошибка`
  String get error {
    return Intl.message(
      'Ошибка',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Помощь`
  String get help {
    return Intl.message(
      'Помощь',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение ИИН`
  String get iinConfirmation {
    return Intl.message(
      'Подтверждение ИИН',
      name: 'iinConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо подтвердить ваш ИИН`
  String get iinConfirmationHint {
    return Intl.message(
      'Необходимо подтвердить ваш ИИН',
      name: 'iinConfirmationHint',
      desc: '',
      args: [],
    );
  }

  /// `Язык интерфейса`
  String get interfaceLang {
    return Intl.message(
      'Язык интерфейса',
      name: 'interfaceLang',
      desc: '',
      args: [],
    );
  }

  /// `Казахский`
  String get kazakh {
    return Intl.message(
      'Казахский',
      name: 'kazakh',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get main {
    return Intl.message(
      'Главная',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Показать главное меню`
  String get mainMenuHint {
    return Intl.message(
      'Показать главное меню',
      name: 'mainMenuHint',
      desc: '',
      args: [],
    );
  }

  /// `Подробнее`
  String get more {
    return Intl.message(
      'Подробнее',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Перейти на экран уведомлений`
  String get navigateToNotificationsScreen {
    return Intl.message(
      'Перейти на экран уведомлений',
      name: 'navigateToNotificationsScreen',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль`
  String get newPassword {
    return Intl.message(
      'Новый пароль',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Номер отсутствует`
  String get numberIsMissing {
    return Intl.message(
      'Номер отсутствует',
      name: 'numberIsMissing',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notifs {
    return Intl.message(
      'Уведомления',
      name: 'notifs',
      desc: '',
      args: [],
    );
  }

  /// `ОК`
  String get okay {
    return Intl.message(
      'ОК',
      name: 'okay',
      desc: '',
      args: [],
    );
  }

  /// `Понятно, спасибо`
  String get okThanks {
    return Intl.message(
      'Понятно, спасибо',
      name: 'okThanks',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get passwordsDontMatch {
    return Intl.message(
      'Пароли не совпадают',
      name: 'passwordsDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `Пароль сохранен`
  String get passwordSaved {
    return Intl.message(
      'Пароль сохранен',
      name: 'passwordSaved',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона сохранен`
  String get phoneNumberSaved {
    return Intl.message(
      'Номер телефона сохранен',
      name: 'phoneNumberSaved',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Push - уведомления`
  String get pushNotifs {
    return Intl.message(
      'Push - уведомления',
      name: 'pushNotifs',
      desc: '',
      args: [],
    );
  }

  /// `Удалить аккаунт`
  String get removeAccount {
    return Intl.message(
      'Удалить аккаунт',
      name: 'removeAccount',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get russian {
    return Intl.message(
      'Русский',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Безопасность`
  String get security {
    return Intl.message(
      'Безопасность',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Политика безопасности`
  String get securityPolicy {
    return Intl.message(
      'Политика безопасности',
      name: 'securityPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать`
  String get select {
    return Intl.message(
      'Выбрать',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Отправить смс-код`
  String get sendSmsCode {
    return Intl.message(
      'Отправить смс-код',
      name: 'sendSmsCode',
      desc: '',
      args: [],
    );
  }

  /// `Отправить смс-код на номер телефона, зарегистрированный в БМГ`
  String get sendSmsForBmgPhone {
    return Intl.message(
      'Отправить смс-код на номер телефона, зарегистрированный в БМГ',
      name: 'sendSmsForBmgPhone',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Использовать код быстрого доступа`
  String get useFastAccessCode {
    return Intl.message(
      'Использовать код быстрого доступа',
      name: 'useFastAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Пользовательское соглашение`
  String get userAgreement {
    return Intl.message(
      'Пользовательское соглашение',
      name: 'userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `Ваш номер телефона в Базе мобильных граждан (БМГ)`
  String get yourPhoneNumberInBmg {
    return Intl.message(
      'Ваш номер телефона в Базе мобильных граждан (БМГ)',
      name: 'yourPhoneNumberInBmg',
      desc: '',
      args: [],
    );
  }

  /// `Принять`
  String get accept {
    return Intl.message(
      'Принять',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Согласие на собеседование`
  String get acceptForInterview {
    return Intl.message(
      'Согласие на собеседование',
      name: 'acceptForInterview',
      desc: '',
      args: [],
    );
  }

  /// `Выдача участнику системы обязательного социального страхования информации о состоянии и движении социальных отчислений`
  String get acceptPaymentInfoTwo {
    return Intl.message(
      'Выдача участнику системы обязательного социального страхования информации о состоянии и движении социальных отчислений',
      name: 'acceptPaymentInfoTwo',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждаю, что социальные отчисления оплачены полностью`
  String get acceptPaymentSocial {
    return Intl.message(
      'Подтверждаю, что социальные отчисления оплачены полностью',
      name: 'acceptPaymentSocial',
      desc: '',
      args: [],
    );
  }

  /// `Убедитесь, что обязательные социальные отчисления до даты регистрации в качестве безработного оплачены полностью, поскольку от полноты отчислений зависит величина социальной выплаты по потере работы.\n\nПроверить обязательные социальные отчисления можно на портале Egov.kz, заказав услугу `
  String get acceptPaymentinfoOne {
    return Intl.message(
      'Убедитесь, что обязательные социальные отчисления до даты регистрации в качестве безработного оплачены полностью, поскольку от полноты отчислений зависит величина социальной выплаты по потере работы.\n\nПроверить обязательные социальные отчисления можно на портале Egov.kz, заказав услугу ',
      name: 'acceptPaymentinfoOne',
      desc: '',
      args: [],
    );
  }

  /// `Принятые`
  String get accepted {
    return Intl.message(
      'Принятые',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Удалить аккаунт`
  String get accountDelete {
    return Intl.message(
      'Удалить аккаунт',
      name: 'accountDelete',
      desc: '',
      args: [],
    );
  }

  /// `Ваши данные (резюме, отклики на вакансии, статус занятости и другие) будут удалены без возможности восстановления.\n\nЧтобы получить доступ к мобильному приложению Enbek, необходимо будет пройти регистрацию повторно`
  String get accountDeletetionConfirmationBody {
    return Intl.message(
      'Ваши данные (резюме, отклики на вакансии, статус занятости и другие) будут удалены без возможности восстановления.\n\nЧтобы получить доступ к мобильному приложению Enbek, необходимо будет пройти регистрацию повторно',
      name: 'accountDeletetionConfirmationBody',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите удалить аккаунт?`
  String get accountDeletetionConfirmationTitle {
    return Intl.message(
      'Вы действительно хотите удалить аккаунт?',
      name: 'accountDeletetionConfirmationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Аккаунт удален`
  String get accountIsDeleted {
    return Intl.message(
      'Аккаунт удален',
      name: 'accountIsDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Выйти из аккаунта?`
  String get accountLogout {
    return Intl.message(
      'Выйти из аккаунта?',
      name: 'accountLogout',
      desc: '',
      args: [],
    );
  }

  /// `Активные`
  String get active {
    return Intl.message(
      'Активные',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Обратите внимание, в Единой системе учета трудовых договоров у вас имеется действующий трудовой договор.\n\nПродолжить регистрацию?`
  String get activeErhBody {
    return Intl.message(
      'Обратите внимание, в Единой системе учета трудовых договоров у вас имеется действующий трудовой договор.\n\nПродолжить регистрацию?',
      name: 'activeErhBody',
      desc: '',
      args: [],
    );
  }

  /// `Активный трудовой договор`
  String get activeErhTitle {
    return Intl.message(
      'Активный трудовой договор',
      name: 'activeErhTitle',
      desc: '',
      args: [],
    );
  }

  /// `Добавить`
  String get add {
    return Intl.message(
      'Добавить',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Добавить заявку`
  String get addApplication {
    return Intl.message(
      'Добавить заявку',
      name: 'addApplication',
      desc: '',
      args: [],
    );
  }

  /// `Добавить язык`
  String get addLang {
    return Intl.message(
      'Добавить язык',
      name: 'addLang',
      desc: '',
      args: [],
    );
  }

  /// `Добавить номер телефона`
  String get addPhoneNumber {
    return Intl.message(
      'Добавить номер телефона',
      name: 'addPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Добавить резюме`
  String get addResume {
    return Intl.message(
      'Добавить резюме',
      name: 'addResume',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте резюме, чтобы откликаться на вакансии`
  String get addResumeForVacancy {
    return Intl.message(
      'Добавьте резюме, чтобы откликаться на вакансии',
      name: 'addResumeForVacancy',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте резюме, чтобы откликаться на вакансии`
  String get addResumeForYou {
    return Intl.message(
      'Добавьте резюме, чтобы откликаться на вакансии',
      name: 'addResumeForYou',
      desc: '',
      args: [],
    );
  }

  /// `Добавьте резюме, чтобы откликаться на вакансии, или восстановите резюме из архива`
  String get addResumeOrRestore {
    return Intl.message(
      'Добавьте резюме, чтобы откликаться на вакансии, или восстановите резюме из архива',
      name: 'addResumeOrRestore',
      desc: '',
      args: [],
    );
  }

  /// `Добавляйте вакансии в избранное, чтобы не потерять или откликнуться позже`
  String get addVacanciesRespondFavorites {
    return Intl.message(
      'Добавляйте вакансии в избранное, чтобы не потерять или откликнуться позже',
      name: 'addVacanciesRespondFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительно`
  String get additional {
    return Intl.message(
      'Дополнительно',
      name: 'additional',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные условия`
  String get additionalFeatures {
    return Intl.message(
      'Дополнительные условия',
      name: 'additionalFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get address {
    return Intl.message(
      'Адрес',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `продвинутый`
  String get advanced {
    return Intl.message(
      'продвинутый',
      name: 'advanced',
      desc: '',
      args: [],
    );
  }

  /// `После автоматической проверки на право регистрации в качестве безработного ждите уведомления в личном кабинете`
  String get afterAutomaticCheck {
    return Intl.message(
      'После автоматической проверки на право регистрации в качестве безработного ждите уведомления в личном кабинете',
      name: 'afterAutomaticCheck',
      desc: '',
      args: [],
    );
  }

  /// `После регистрации статус безработного позволит получить поддержку от государства:`
  String get afterRegStatusUnemployed {
    return Intl.message(
      'После регистрации статус безработного позволит получить поддержку от государства:',
      name: 'afterRegStatusUnemployed',
      desc: '',
      args: [],
    );
  }

  /// `После успешной регистрации в качестве безработного выберите государственные меры поддержки занятости`
  String get afterSuccessReg {
    return Intl.message(
      'После успешной регистрации в качестве безработного выберите государственные меры поддержки занятости',
      name: 'afterSuccessReg',
      desc: '',
      args: [],
    );
  }

  /// `Возраст`
  String get age {
    return Intl.message(
      'Возраст',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Согласиться`
  String get agree {
    return Intl.message(
      'Согласиться',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Цель учета`
  String get aimOfAccounting {
    return Intl.message(
      'Цель учета',
      name: 'aimOfAccounting',
      desc: '',
      args: [],
    );
  }

  /// `Все`
  String get all {
    return Intl.message(
      'Все',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Согласен(-а) работать по специальности`
  String get allowToWorkByProfession {
    return Intl.message(
      'Согласен(-а) работать по специальности',
      name: 'allowToWorkByProfession',
      desc: '',
      args: [],
    );
  }

  /// `Согласен(-а) работать по специальности`
  String get allowToWorkBySpecialty {
    return Intl.message(
      'Согласен(-а) работать по специальности',
      name: 'allowToWorkBySpecialty',
      desc: '',
      args: [],
    );
  }

  /// `Вы уже оставляли жалобу на данную вакансию!`
  String get alreadySubmitted {
    return Intl.message(
      'Вы уже оставляли жалобу на данную вакансию!',
      name: 'alreadySubmitted',
      desc: '',
      args: [],
    );
  }

  /// `Ответ придет на указанную почту`
  String get answerToEmail {
    return Intl.message(
      'Ответ придет на указанную почту',
      name: 'answerToEmail',
      desc: '',
      args: [],
    );
  }

  /// `Соискатель`
  String get applicant {
    return Intl.message(
      'Соискатель',
      name: 'applicant',
      desc: '',
      args: [],
    );
  }

  /// `Отказ соискателя`
  String get applicantDeclined {
    return Intl.message(
      'Отказ соискателя',
      name: 'applicantDeclined',
      desc: '',
      args: [],
    );
  }

  /// `Заявка от`
  String get applicationFrom {
    return Intl.message(
      'Заявка от',
      name: 'applicationFrom',
      desc: '',
      args: [],
    );
  }

  /// `Заявка успешно обновлена`
  String get applicationHasBeenUpdated {
    return Intl.message(
      'Заявка успешно обновлена',
      name: 'applicationHasBeenUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Заявка не найдена`
  String get applicationIsNotFound {
    return Intl.message(
      'Заявка не найдена',
      name: 'applicationIsNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Подать заявку`
  String get apply {
    return Intl.message(
      'Подать заявку',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Принята`
  String get applyAccepted {
    return Intl.message(
      'Принята',
      name: 'applyAccepted',
      desc: '',
      args: [],
    );
  }

  /// `Отклонена`
  String get applyDeclined {
    return Intl.message(
      'Отклонена',
      name: 'applyDeclined',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться как ЛИР`
  String get applyForLir {
    return Intl.message(
      'Зарегистрироваться как ЛИР',
      name: 'applyForLir',
      desc: '',
      args: [],
    );
  }

  /// `Заявка на выплату`
  String get applyForPayment {
    return Intl.message(
      'Заявка на выплату',
      name: 'applyForPayment',
      desc: '',
      args: [],
    );
  }

  /// `Уточните при необходимости контактные данные, чтобы сотрудники уполномоченных органов по выплате пособий могли связаться с вами`
  String get applyForPaymentContactData {
    return Intl.message(
      'Уточните при необходимости контактные данные, чтобы сотрудники уполномоченных органов по выплате пособий могли связаться с вами',
      name: 'applyForPaymentContactData',
      desc: '',
      args: [],
    );
  }

  /// `Заявка отправлена`
  String get applySend {
    return Intl.message(
      'Заявка отправлена',
      name: 'applySend',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get applySort {
    return Intl.message(
      'Применить',
      name: 'applySort',
      desc: '',
      args: [],
    );
  }

  /// `Архив`
  String get archive {
    return Intl.message(
      'Архив',
      name: 'archive',
      desc: '',
      args: [],
    );
  }

  /// `Архив пуст`
  String get archiveEmpty {
    return Intl.message(
      'Архив пуст',
      name: 'archiveEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите выйти?`
  String get areYouSureWantToExit {
    return Intl.message(
      'Вы действительно хотите выйти?',
      name: 'areYouSureWantToExit',
      desc: '',
      args: [],
    );
  }

  /// `Автозаполнение при помощи ИИН`
  String get autofillByIin {
    return Intl.message(
      'Автозаполнение при помощи ИИН',
      name: 'autofillByIin',
      desc: '',
      args: [],
    );
  }

  /// `средний уровень`
  String get averageLevel {
    return Intl.message(
      'средний уровень',
      name: 'averageLevel',
      desc: '',
      args: [],
    );
  }

  /// `Назад`
  String get back {
    return Intl.message(
      'Назад',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Раньше`
  String get before {
    return Intl.message(
      'Раньше',
      name: 'before',
      desc: '',
      args: [],
    );
  }

  /// `Начните вводить навык для поиска`
  String get beginInputQualityQuery {
    return Intl.message(
      'Начните вводить навык для поиска',
      name: 'beginInputQualityQuery',
      desc: '',
      args: [],
    );
  }

  /// `Вход по отпечатку пальца и Face ID`
  String get biometricEntry {
    return Intl.message(
      'Вход по отпечатку пальца и Face ID',
      name: 'biometricEntry',
      desc: '',
      args: [],
    );
  }

  /// `Использование отпечатка пальца/Face ID возможно только при установленном коде быстрого доступа`
  String get biometricsOnlyWithPin {
    return Intl.message(
      'Использование отпечатка пальца/Face ID возможно только при установленном коде быстрого доступа',
      name: 'biometricsOnlyWithPin',
      desc: '',
      args: [],
    );
  }

  /// `Дата рождения`
  String get birthdate {
    return Intl.message(
      'Дата рождения',
      name: 'birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Центр занятости`
  String get bisnessCenter {
    return Intl.message(
      'Центр занятости',
      name: 'bisnessCenter',
      desc: '',
      args: [],
    );
  }

  /// `Статус занятости`
  String get businessStatus {
    return Intl.message(
      'Статус занятости',
      name: 'businessStatus',
      desc: '',
      args: [],
    );
  }

  /// `По дате`
  String get byDate {
    return Intl.message(
      'По дате',
      name: 'byDate',
      desc: '',
      args: [],
    );
  }

  /// `По email`
  String get byEmail {
    return Intl.message(
      'По email',
      name: 'byEmail',
      desc: '',
      args: [],
    );
  }

  /// `По мобильному`
  String get byPhone {
    return Intl.message(
      'По мобильному',
      name: 'byPhone',
      desc: '',
      args: [],
    );
  }

  /// `По зарплате`
  String get bySalary {
    return Intl.message(
      'По зарплате',
      name: 'bySalary',
      desc: '',
      args: [],
    );
  }

  /// `Кабинет`
  String get cabinet {
    return Intl.message(
      'Кабинет',
      name: 'cabinet',
      desc: '',
      args: [],
    );
  }

  /// `Здравствуйте! Я принял(а) решение отказаться от трудоустройства на данную вакансию. Прошу не рассматривать мою кандидатуру на данную должность.\nС уважением`
  String get cancelResponse {
    return Intl.message(
      'Здравствуйте! Я принял(а) решение отказаться от трудоустройства на данную вакансию. Прошу не рассматривать мою кандидатуру на данную должность.\nС уважением',
      name: 'cancelResponse',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get cancelVerb {
    return Intl.message(
      'Отменить',
      name: 'cancelVerb',
      desc: '',
      args: [],
    );
  }

  /// `Желаемая должность`
  String get careerObjective {
    return Intl.message(
      'Желаемая должность',
      name: 'careerObjective',
      desc: '',
      args: [],
    );
  }

  /// `Категория`
  String get category {
    return Intl.message(
      'Категория',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Дата выдачи свидетельства о регистрации заключения/ расторжения брака`
  String get certificateDate {
    return Intl.message(
      'Дата выдачи свидетельства о регистрации заключения/ расторжения брака',
      name: 'certificateDate',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо прикрепить изображение сертификата`
  String get certificateImageRequired {
    return Intl.message(
      'Необходимо прикрепить изображение сертификата',
      name: 'certificateImageRequired',
      desc: '',
      args: [],
    );
  }

  /// `Номер свидетельства о регистрации ИП`
  String get certificateRegistrationNum {
    return Intl.message(
      'Номер свидетельства о регистрации ИП',
      name: 'certificateRegistrationNum',
      desc: '',
      args: [],
    );
  }

  /// `Серия свидетельства о регистрации ИП`
  String get certificateRegistrationSerial {
    return Intl.message(
      'Серия свидетельства о регистрации ИП',
      name: 'certificateRegistrationSerial',
      desc: '',
      args: [],
    );
  }

  /// `Сертификаты`
  String get certificates {
    return Intl.message(
      'Сертификаты',
      name: 'certificates',
      desc: '',
      args: [],
    );
  }

  /// `Изменить`
  String get change {
    return Intl.message(
      'Изменить',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Изменить код быстрого доступа`
  String get changeAccessCode {
    return Intl.message(
      'Изменить код быстрого доступа',
      name: 'changeAccessCode',
      desc: '',
      args: [],
    );
  }

  /// `Изменить фото`
  String get changePhoto {
    return Intl.message(
      'Изменить фото',
      name: 'changePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Обязуюсь сообщить обо всех изменениях`
  String get changingCallBack {
    return Intl.message(
      'Обязуюсь сообщить обо всех изменениях',
      name: 'changingCallBack',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо сообщить обо всех изменениях, влекущих изменение (приостановление, прекращение) размера социальной выплаты на случай потери работы, а также об изменении места жительства (в том числе выезд за пределы Республики Казахстан), анкетных данных, банковских реквизитов в Центр обслуживания населения в течение десяти календарных дней со дня возникновения таких изменений.`
  String get changingCallBackBody {
    return Intl.message(
      'Необходимо сообщить обо всех изменениях, влекущих изменение (приостановление, прекращение) размера социальной выплаты на случай потери работы, а также об изменении места жительства (в том числе выезд за пределы Республики Казахстан), анкетных данных, банковских реквизитов в Центр обслуживания населения в течение десяти календарных дней со дня возникновения таких изменений.',
      name: 'changingCallBackBody',
      desc: '',
      args: [],
    );
  }

  /// `Персонаж не найден`
  String get character404 {
    return Intl.message(
      'Персонаж не найден',
      name: 'character404',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте введенные данные`
  String get checkData {
    return Intl.message(
      'Проверьте введенные данные',
      name: 'checkData',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать`
  String get choose {
    return Intl.message(
      'Выбрать',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Выберите минимум один активный фильтр`
  String get chooseFilterHint {
    return Intl.message(
      'Выберите минимум один активный фильтр',
      name: 'chooseFilterHint',
      desc: '',
      args: [],
    );
  }

  /// `Выберите причину`
  String get chooseReason {
    return Intl.message(
      'Выберите причину',
      name: 'chooseReason',
      desc: '',
      args: [],
    );
  }

  /// `Выберите Причину жалобы`
  String get chooseReasonComplaint {
    return Intl.message(
      'Выберите Причину жалобы',
      name: 'chooseReasonComplaint',
      desc: '',
      args: [],
    );
  }

  /// `Выберите резюме`
  String get chooseResume {
    return Intl.message(
      'Выберите резюме',
      name: 'chooseResume',
      desc: '',
      args: [],
    );
  }

  /// `Гражданство`
  String get citizenship {
    return Intl.message(
      'Гражданство',
      name: 'citizenship',
      desc: '',
      args: [],
    );
  }

  /// `Уточнение желаемой должности`
  String get clarificationDesiredPosition {
    return Intl.message(
      'Уточнение желаемой должности',
      name: 'clarificationDesiredPosition',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть регистрацию`
  String get closeReg {
    return Intl.message(
      'Закрыть регистрацию',
      name: 'closeReg',
      desc: '',
      args: [],
    );
  }

  /// `Отправили код подтверждения на\n{address}`
  String codeLabelHint(Object address) {
    return Intl.message(
      'Отправили код подтверждения на\n$address',
      name: 'codeLabelHint',
      desc: '',
      args: [address],
    );
  }

  /// `Код отправлен на номер {phone}`
  String codeSentFor(Object phone) {
    return Intl.message(
      'Код отправлен на номер $phone',
      name: 'codeSentFor',
      desc: '',
      args: [phone],
    );
  }

  /// `Вернуться назад`
  String get comeBack {
    return Intl.message(
      'Вернуться назад',
      name: 'comeBack',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий`
  String get comment {
    return Intl.message(
      'Комментарий',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Карточка предприятия`
  String get companyCard {
    return Intl.message(
      'Карточка предприятия',
      name: 'companyCard',
      desc: '',
      args: [],
    );
  }

  /// `Карточка предприятия {companyName} \n\n{url}`
  String companyCardLink(Object companyName, Object url) {
    return Intl.message(
      'Карточка предприятия $companyName \n\n$url',
      name: 'companyCardLink',
      desc: '',
      args: [companyName, url],
    );
  }

  /// `ID предприятия`
  String get companyID {
    return Intl.message(
      'ID предприятия',
      name: 'companyID',
      desc: '',
      args: [],
    );
  }

  /// `Наименование предприятия`
  String get companyName {
    return Intl.message(
      'Наименование предприятия',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `Пожаловаться`
  String get complain {
    return Intl.message(
      'Пожаловаться',
      name: 'complain',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить ИИН`
  String get confirmIIn {
    return Intl.message(
      'Подтвердить ИИН',
      name: 'confirmIIn',
      desc: '',
      args: [],
    );
  }

  /// `Контактное лицо`
  String get contactPerson {
    return Intl.message(
      'Контактное лицо',
      name: 'contactPerson',
      desc: '',
      args: [],
    );
  }

  /// `Контакты для граждан`
  String get contactsForCitizen {
    return Intl.message(
      'Контакты для граждан',
      name: 'contactsForCitizen',
      desc: '',
      args: [],
    );
  }

  /// `Контакты по оказанию социальной помощи`
  String get contactsForHelp {
    return Intl.message(
      'Контакты по оказанию социальной помощи',
      name: 'contactsForHelp',
      desc: '',
      args: [],
    );
  }

  /// `Дата заключения ТД`
  String get contractDate {
    return Intl.message(
      'Дата заключения ТД',
      name: 'contractDate',
      desc: '',
      args: [],
    );
  }

  /// `Название курса`
  String get courseName {
    return Intl.message(
      'Название курса',
      name: 'courseName',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо указать название курса`
  String get courseNameRequired {
    return Intl.message(
      'Необходимо указать название курса',
      name: 'courseNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Курсы и сертификаты`
  String get coursesAndCertificates {
    return Intl.message(
      'Курсы и сертификаты',
      name: 'coursesAndCertificates',
      desc: '',
      args: [],
    );
  }

  /// `Дата завершения`
  String get dateEnd {
    return Intl.message(
      'Дата завершения',
      name: 'dateEnd',
      desc: '',
      args: [],
    );
  }

  /// `Дата заявления`
  String get dateOfAppoint {
    return Intl.message(
      'Дата заявления',
      name: 'dateOfAppoint',
      desc: '',
      args: [],
    );
  }

  /// `Дата рождения: {date}`
  String dateOfBirthday(Object date) {
    return Intl.message(
      'Дата рождения: $date',
      name: 'dateOfBirthday',
      desc: '',
      args: [date],
    );
  }

  /// `Дата решения о назначении`
  String get dateOfResult {
    return Intl.message(
      'Дата решения о назначении',
      name: 'dateOfResult',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала`
  String get dateOfStart {
    return Intl.message(
      'Дата начала',
      name: 'dateOfStart',
      desc: '',
      args: [],
    );
  }

  /// `Дата "с" не должна быть больше или равна дате "по"`
  String get dateOfendMustBeEarlier {
    return Intl.message(
      'Дата "с" не должна быть больше или равна дате "по"',
      name: 'dateOfendMustBeEarlier',
      desc: '',
      args: [],
    );
  }

  /// `Отказать`
  String get decline {
    return Intl.message(
      'Отказать',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Отклоненные`
  String get declined {
    return Intl.message(
      'Отклоненные',
      name: 'declined',
      desc: '',
      args: [],
    );
  }

  /// `Отказы`
  String get declines {
    return Intl.message(
      'Отказы',
      name: 'declines',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Удалить все уведомления?`
  String get deleteAllNotifications {
    return Intl.message(
      'Удалить все уведомления?',
      name: 'deleteAllNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Удалить сертификат?`
  String get deleteCert {
    return Intl.message(
      'Удалить сертификат?',
      name: 'deleteCert',
      desc: '',
      args: [],
    );
  }

  /// `Удалить язык?`
  String get deleteLang {
    return Intl.message(
      'Удалить язык?',
      name: 'deleteLang',
      desc: '',
      args: [],
    );
  }

  /// `Удалить фото`
  String get deletePhoto {
    return Intl.message(
      'Удалить фото',
      name: 'deletePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Удалить этот поиск?`
  String get deleteSearch {
    return Intl.message(
      'Удалить этот поиск?',
      name: 'deleteSearch',
      desc: '',
      args: [],
    );
  }

  /// `Удалить место работы?`
  String get deleteWorkPlace {
    return Intl.message(
      'Удалить место работы?',
      name: 'deleteWorkPlace',
      desc: '',
      args: [],
    );
  }

  /// `Отказы`
  String get denial {
    return Intl.message(
      'Отказы',
      name: 'denial',
      desc: '',
      args: [],
    );
  }

  /// `Отказано`
  String get denied {
    return Intl.message(
      'Отказано',
      name: 'denied',
      desc: '',
      args: [],
    );
  }

  /// `Наименование отдела РАГС`
  String get departmentName {
    return Intl.message(
      'Наименование отдела РАГС',
      name: 'departmentName',
      desc: '',
      args: [],
    );
  }

  /// `Группа инвалидности`
  String get disabilityGroup {
    return Intl.message(
      'Группа инвалидности',
      name: 'disabilityGroup',
      desc: '',
      args: [],
    );
  }

  /// `Дата переосвидетельствования`
  String get disabilityRebeginDate {
    return Intl.message(
      'Дата переосвидетельствования',
      name: 'disabilityRebeginDate',
      desc: '',
      args: [],
    );
  }

  /// `№ справки об инвалидности`
  String get disabilityReferenceNum {
    return Intl.message(
      '№ справки об инвалидности',
      name: 'disabilityReferenceNum',
      desc: '',
      args: [],
    );
  }

  /// `Номер отдела МСЭ`
  String get disabilitydepartmentNum {
    return Intl.message(
      'Номер отдела МСЭ',
      name: 'disabilitydepartmentNum',
      desc: '',
      args: [],
    );
  }

  /// `Дата установления группы инвалидности`
  String get disabiltyBeginDate {
    return Intl.message(
      'Дата установления группы инвалидности',
      name: 'disabiltyBeginDate',
      desc: '',
      args: [],
    );
  }

  /// `Дата окончания инвалидности`
  String get disabiltyEndDate {
    return Intl.message(
      'Дата окончания инвалидности',
      name: 'disabiltyEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить`
  String get discard {
    return Intl.message(
      'Сбросить',
      name: 'discard',
      desc: '',
      args: [],
    );
  }

  /// `Документы, удостоверяющие личность`
  String get documentsFull {
    return Intl.message(
      'Документы, удостоверяющие личность',
      name: 'documentsFull',
      desc: '',
      args: [],
    );
  }

  /// `Нет аккаунта`
  String get dontHaveAccount {
    return Intl.message(
      'Нет аккаунта',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Скачать резюме`
  String get downloadResume {
    return Intl.message(
      'Скачать резюме',
      name: 'downloadResume',
      desc: '',
      args: [],
    );
  }

  /// `Категории водительских прав`
  String get driverLicenseCategories {
    return Intl.message(
      'Категории водительских прав',
      name: 'driverLicenseCategories',
      desc: '',
      args: [],
    );
  }

  /// `Водительские права`
  String get drivingLicense {
    return Intl.message(
      'Водительские права',
      name: 'drivingLicense',
      desc: '',
      args: [],
    );
  }

  /// `Действительно с {start} по {end}`
  String durationFromTo(Object start, Object end) {
    return Intl.message(
      'Действительно с $start по $end',
      name: 'durationFromTo',
      desc: '',
      args: [start, end],
    );
  }

  /// `Обязательно требуется наличие ЭЦП*`
  String get eds {
    return Intl.message(
      'Обязательно требуется наличие ЭЦП*',
      name: 'eds',
      desc: '',
      args: [],
    );
  }

  /// `Образование`
  String get education {
    return Intl.message(
      'Образование',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Сведения об образовании`
  String get educationInformation {
    return Intl.message(
      'Сведения об образовании',
      name: 'educationInformation',
      desc: '',
      args: [],
    );
  }

  /// `Уровень образования`
  String get educationLevel {
    return Intl.message(
      'Уровень образования',
      name: 'educationLevel',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала обучения`
  String get educationStartDate {
    return Intl.message(
      'Дата начала обучения',
      name: 'educationStartDate',
      desc: '',
      args: [],
    );
  }

  /// `начальный`
  String get elementary {
    return Intl.message(
      'начальный',
      name: 'elementary',
      desc: '',
      args: [],
    );
  }

  /// `Центр занятости населения {name}`
  String empCenterIn(Object name) {
    return Intl.message(
      'Центр занятости населения $name',
      name: 'empCenterIn',
      desc: '',
      args: [name],
    );
  }

  /// `Название предприятия`
  String get empName {
    return Intl.message(
      'Название предприятия',
      name: 'empName',
      desc: '',
      args: [],
    );
  }

  /// `Работники`
  String get employees {
    return Intl.message(
      'Работники',
      name: 'employees',
      desc: '',
      args: [],
    );
  }

  /// `Работников`
  String get employeesCount {
    return Intl.message(
      'Работников',
      name: 'employeesCount',
      desc: '',
      args: [],
    );
  }

  /// `Работодатель`
  String get employer {
    return Intl.message(
      'Работодатель',
      name: 'employer',
      desc: '',
      args: [],
    );
  }

  /// `Отказ работодателя`
  String get employerDeclined {
    return Intl.message(
      'Отказ работодателя',
      name: 'employerDeclined',
      desc: '',
      args: [],
    );
  }

  /// `Трудоустройство`
  String get employment {
    return Intl.message(
      'Трудоустройство',
      name: 'employment',
      desc: '',
      args: [],
    );
  }

  /// `Центры занятости`
  String get employmentCenters {
    return Intl.message(
      'Центры занятости',
      name: 'employmentCenters',
      desc: '',
      args: [],
    );
  }

  /// `Тип занятости`
  String get employmentType {
    return Intl.message(
      'Тип занятости',
      name: 'employmentType',
      desc: '',
      args: [],
    );
  }

  /// `Окончание обучения`
  String get endOfEducation {
    return Intl.message(
      'Окончание обучения',
      name: 'endOfEducation',
      desc: '',
      args: [],
    );
  }

  /// `Окончание`
  String get ending {
    return Intl.message(
      'Окончание',
      name: 'ending',
      desc: '',
      args: [],
    );
  }

  /// `Английский`
  String get english {
    return Intl.message(
      'Английский',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Введите ФИО`
  String get enterFullName {
    return Intl.message(
      'Введите ФИО',
      name: 'enterFullName',
      desc: '',
      args: [],
    );
  }

  /// `Введите код быстрого доступа`
  String get enterPincodeImperative {
    return Intl.message(
      'Введите код быстрого доступа',
      name: 'enterPincodeImperative',
      desc: '',
      args: [],
    );
  }

  /// `Начните вводить название навыка`
  String get enterSkillsPromo {
    return Intl.message(
      'Начните вводить название навыка',
      name: 'enterSkillsPromo',
      desc: '',
      args: [],
    );
  }

  /// `Введите навык для поиска`
  String get enterSkillsPromo2 {
    return Intl.message(
      'Введите навык для поиска',
      name: 'enterSkillsPromo2',
      desc: '',
      args: [],
    );
  }

  /// `Укажите специализацию, название участка работ или название отдела/департамента`
  String get enterSpecFotWorkPlaceOrNameOfdepartment {
    return Intl.message(
      'Укажите специализацию, название участка работ или название отдела/департамента',
      name: 'enterSpecFotWorkPlaceOrNameOfdepartment',
      desc: '',
      args: [],
    );
  }

  /// `Укажите только то количество лет стажа, в течение которого вы работали на должности, на которую хотите трудоустроиться`
  String get enterWorkExpInYers {
    return Intl.message(
      'Укажите только то количество лет стажа, в течение которого вы работали на должности, на которую хотите трудоустроиться',
      name: 'enterWorkExpInYers',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте данные`
  String get errorGeneralInput {
    return Intl.message(
      'Проверьте данные',
      name: 'errorGeneralInput',
      desc: '',
      args: [],
    );
  }

  /// `Штатная должность`
  String get establishedPost {
    return Intl.message(
      'Штатная должность',
      name: 'establishedPost',
      desc: '',
      args: [],
    );
  }

  /// `Выход`
  String get exit {
    return Intl.message(
      'Выход',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Дата окончания срока действия`
  String get expirationDate {
    return Intl.message(
      'Дата окончания срока действия',
      name: 'expirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Вход по биометрии`
  String get faceIdAuth {
    return Intl.message(
      'Вход по биометрии',
      name: 'faceIdAuth',
      desc: '',
      args: [],
    );
  }

  /// `В избранных поисках пусто`
  String get favSearchesAreEmpty {
    return Intl.message(
      'В избранных поисках пусто',
      name: 'favSearchesAreEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favorite {
    return Intl.message(
      'Избранное',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `В избранных вакансиях пусто`
  String get favoriteEmpty {
    return Intl.message(
      'В избранных вакансиях пусто',
      name: 'favoriteEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Обратная связь`
  String get feedback {
    return Intl.message(
      'Обратная связь',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  /// `Данная форма обращения только для технических вопросов по работе мобильного приложения. Для уточнения информации по вакансиям и резюме необходимо обращаться по контактам, указанным непосредственно в карточках вакансий и резюме`
  String get feedbackNote {
    return Intl.message(
      'Данная форма обращения только для технических вопросов по работе мобильного приложения. Для уточнения информации по вакансиям и резюме необходимо обращаться по контактам, указанным непосредственно в карточках вакансий и резюме',
      name: 'feedbackNote',
      desc: '',
      args: [],
    );
  }

  /// `Файл успешно скачан, вы можете найти его в папке с загрузками или поделиться им`
  String get fileDownloadSuccess {
    return Intl.message(
      'Файл успешно скачан, вы можете найти его в папке с загрузками или поделиться им',
      name: 'fileDownloadSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо заполнить все поля`
  String get fillAllFields {
    return Intl.message(
      'Необходимо заполнить все поля',
      name: 'fillAllFields',
      desc: '',
      args: [],
    );
  }

  /// `Заполнить вручную`
  String get fillByHand {
    return Intl.message(
      'Заполнить вручную',
      name: 'fillByHand',
      desc: '',
      args: [],
    );
  }

  /// `Фильтр`
  String get filter {
    return Intl.message(
      'Фильтр',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Вход по отпечатку пальца`
  String get fingerprintsAuth {
    return Intl.message(
      'Вход по отпечатку пальца',
      name: 'fingerprintsAuth',
      desc: '',
      args: [],
    );
  }

  /// `За 2 недели`
  String get for2Weeks {
    return Intl.message(
      'За 2 недели',
      name: 'for2Weeks',
      desc: '',
      args: [],
    );
  }

  /// `За 3 дня`
  String get for3days {
    return Intl.message(
      'За 3 дня',
      name: 'for3days',
      desc: '',
      args: [],
    );
  }

  /// `За 24 часа`
  String get for24hour {
    return Intl.message(
      'За 24 часа',
      name: 'for24hour',
      desc: '',
      args: [],
    );
  }

  /// `За все время`
  String get forAllTime {
    return Intl.message(
      'За все время',
      name: 'forAllTime',
      desc: '',
      args: [],
    );
  }

  /// `Для повышения эффективности резюме вы можете добавить:`
  String get forMoreAddFields {
    return Intl.message(
      'Для повышения эффективности резюме вы можете добавить:',
      name: 'forMoreAddFields',
      desc: '',
      args: [],
    );
  }

  /// `За неделю`
  String get forWeek {
    return Intl.message(
      'За неделю',
      name: 'forWeek',
      desc: '',
      args: [],
    );
  }

  /// `Забыли код-пароль?`
  String get forgotPincode {
    return Intl.message(
      'Забыли код-пароль?',
      name: 'forgotPincode',
      desc: '',
      args: [],
    );
  }

  /// `ФИО`
  String get fio {
    return Intl.message(
      'ФИО',
      name: 'fio',
      desc: '',
      args: [],
    );
  }

  /// `Галерея`
  String get galery {
    return Intl.message(
      'Галерея',
      name: 'galery',
      desc: '',
      args: [],
    );
  }

  /// `Получатель социальных выплат и пособий`
  String get gbdAsp {
    return Intl.message(
      'Получатель социальных выплат и пособий',
      name: 'gbdAsp',
      desc: '',
      args: [],
    );
  }

  /// `Сведения о наличии трудового договора`
  String get gbdEhrStatus {
    return Intl.message(
      'Сведения о наличии трудового договора',
      name: 'gbdEhrStatus',
      desc: '',
      args: [],
    );
  }

  /// `Статус плательщика единого социального платежа`
  String get gbdEsp {
    return Intl.message(
      'Статус плательщика единого социального платежа',
      name: 'gbdEsp',
      desc: '',
      args: [],
    );
  }

  /// `Сведения о наличии инвалидности`
  String get gbdInvalid {
    return Intl.message(
      'Сведения о наличии инвалидности',
      name: 'gbdInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Статус индивидуального предпринимателя`
  String get gbdKgd {
    return Intl.message(
      'Статус индивидуального предпринимателя',
      name: 'gbdKgd',
      desc: '',
      args: [],
    );
  }

  /// `Cреднее образование`
  String get gbdMonSred {
    return Intl.message(
      'Cреднее образование',
      name: 'gbdMonSred',
      desc: '',
      args: [],
    );
  }

  /// `Профессиональное образование`
  String get gbdMonTeh {
    return Intl.message(
      'Профессиональное образование',
      name: 'gbdMonTeh',
      desc: '',
      args: [],
    );
  }

  /// `Высшее образование`
  String get gbdMonVyz {
    return Intl.message(
      'Высшее образование',
      name: 'gbdMonVyz',
      desc: '',
      args: [],
    );
  }

  /// `Сведения о водительских правах`
  String get gbdMvd {
    return Intl.message(
      'Сведения о водительских правах',
      name: 'gbdMvd',
      desc: '',
      args: [],
    );
  }

  /// `Статус кандаса`
  String get gbdOralman {
    return Intl.message(
      'Статус кандаса',
      name: 'gbdOralman',
      desc: '',
      args: [],
    );
  }

  /// `Сведения об обязательных пенсионных отчислениях`
  String get gbdPension {
    return Intl.message(
      'Сведения об обязательных пенсионных отчислениях',
      name: 'gbdPension',
      desc: '',
      args: [],
    );
  }

  /// `Сведения о заключении брака`
  String get gbdZags {
    return Intl.message(
      'Сведения о заключении брака',
      name: 'gbdZags',
      desc: '',
      args: [],
    );
  }

  /// `Пол`
  String get gender {
    return Intl.message(
      'Пол',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Как получить государственные меры поддержки занятости ? `
  String get getGovernmentSupport {
    return Intl.message(
      'Как получить государственные меры поддержки занятости ? ',
      name: 'getGovernmentSupport',
      desc: '',
      args: [],
    );
  }

  /// `В архив резюме`
  String get goArchiveResume {
    return Intl.message(
      'В архив резюме',
      name: 'goArchiveResume',
      desc: '',
      args: [],
    );
  }

  /// `год`
  String get god {
    return Intl.message(
      'год',
      name: 'god',
      desc: '',
      args: [],
    );
  }

  /// `годa`
  String get goda {
    return Intl.message(
      'годa',
      name: 'goda',
      desc: '',
      args: [],
    );
  }

  /// `У вас хороший шанс найти работу!`
  String get goodPercentsForJob {
    return Intl.message(
      'У вас хороший шанс найти работу!',
      name: 'goodPercentsForJob',
      desc: '',
      args: [],
    );
  }

  /// `Государственные услуги`
  String get govermentServices {
    return Intl.message(
      'Государственные услуги',
      name: 'govermentServices',
      desc: '',
      args: [],
    );
  }

  /// `Директор`
  String get head {
    return Intl.message(
      'Директор',
      name: 'head',
      desc: '',
      args: [],
    );
  }

  /// `Здравствуйте, {name}!`
  String helloUser(Object name) {
    return Intl.message(
      'Здравствуйте, $name!',
      name: 'helloUser',
      desc: '',
      args: [name],
    );
  }

  /// `Хобби и увлечения`
  String get hobbies {
    return Intl.message(
      'Хобби и увлечения',
      name: 'hobbies',
      desc: '',
      args: [],
    );
  }

  /// `IBAN`
  String get iban {
    return Intl.message(
      'IBAN',
      name: 'iban',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `ID резюме`
  String get idResume {
    return Intl.message(
      'ID резюме',
      name: 'idResume',
      desc: '',
      args: [],
    );
  }

  /// `ID вакансии: {id}`
  String idVacancy(Object id) {
    return Intl.message(
      'ID вакансии: $id',
      name: 'idVacancy',
      desc: '',
      args: [id],
    );
  }

  /// `Наименование ИП/ФИО`
  String get individualEntrepreneurName {
    return Intl.message(
      'Наименование ИП/ФИО',
      name: 'individualEntrepreneurName',
      desc: '',
      args: [],
    );
  }

  /// `Информация о соискателе`
  String get infoAboutApplicants {
    return Intl.message(
      'Информация о соискателе',
      name: 'infoAboutApplicants',
      desc: '',
      args: [],
    );
  }

  /// `Информация о ЛИР`
  String get infoAboutLir {
    return Intl.message(
      'Информация о ЛИР',
      name: 'infoAboutLir',
      desc: '',
      args: [],
    );
  }

  /// `Сведения из ГО`
  String get infoFromGbd {
    return Intl.message(
      'Сведения из ГО',
      name: 'infoFromGbd',
      desc: '',
      args: [],
    );
  }

  /// `Введите опыт работы`
  String get inputExp {
    return Intl.message(
      'Введите опыт работы',
      name: 'inputExp',
      desc: '',
      args: [],
    );
  }

  /// `Введите сумму`
  String get inputSum {
    return Intl.message(
      'Введите сумму',
      name: 'inputSum',
      desc: '',
      args: [],
    );
  }

  /// `Инструкции`
  String get instructions {
    return Intl.message(
      'Инструкции',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// `Согласие прийти на собеседование`
  String get interviewAgreed {
    return Intl.message(
      'Согласие прийти на собеседование',
      name: 'interviewAgreed',
      desc: '',
      args: [],
    );
  }

  /// `Дата собеседования`
  String get interviewDate {
    return Intl.message(
      'Дата собеседования',
      name: 'interviewDate',
      desc: '',
      args: [],
    );
  }

  /// `Отказ прийти на собеседование`
  String get interviewDeclined {
    return Intl.message(
      'Отказ прийти на собеседование',
      name: 'interviewDeclined',
      desc: '',
      args: [],
    );
  }

  /// `Приглашений`
  String get invitations {
    return Intl.message(
      'Приглашений',
      name: 'invitations',
      desc: '',
      args: [],
    );
  }

  /// `Приглашения`
  String get invites {
    return Intl.message(
      'Приглашения',
      name: 'invites',
      desc: '',
      args: [],
    );
  }

  /// `Дата снятия с учета в качестве ИП`
  String get iopDeregistrationDate {
    return Intl.message(
      'Дата снятия с учета в качестве ИП',
      name: 'iopDeregistrationDate',
      desc: '',
      args: [],
    );
  }

  /// `Дата регистрации в качестве ИП`
  String get ipRegistrationDate {
    return Intl.message(
      'Дата регистрации в качестве ИП',
      name: 'ipRegistrationDate',
      desc: '',
      args: [],
    );
  }

  /// `Дата выдачи`
  String get issueDate {
    return Intl.message(
      'Дата выдачи',
      name: 'issueDate',
      desc: '',
      args: [],
    );
  }

  /// `Кем выдан`
  String get issuedBy {
    return Intl.message(
      'Кем выдан',
      name: 'issuedBy',
      desc: '',
      args: [],
    );
  }

  /// `Должность`
  String get job {
    return Intl.message(
      'Должность',
      name: 'job',
      desc: '',
      args: [],
    );
  }

  /// `Обязанности`
  String get jobFunctions {
    return Intl.message(
      'Обязанности',
      name: 'jobFunctions',
      desc: '',
      args: [],
    );
  }

  /// `на случай потери работы`
  String get jobLoss {
    return Intl.message(
      'на случай потери работы',
      name: 'jobLoss',
      desc: '',
      args: [],
    );
  }

  /// `Выплата по потере работы`
  String get jobLossPayment {
    return Intl.message(
      'Выплата по потере работы',
      name: 'jobLossPayment',
      desc: '',
      args: [],
    );
  }

  /// `Должностные обязанности`
  String get jobResponsibilities {
    return Intl.message(
      'Должностные обязанности',
      name: 'jobResponsibilities',
      desc: '',
      args: [],
    );
  }

  /// `Название должности`
  String get jobTitle {
    return Intl.message(
      'Название должности',
      name: 'jobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Знание языков`
  String get languageKnowledge {
    return Intl.message(
      'Знание языков',
      name: 'languageKnowledge',
      desc: '',
      args: [],
    );
  }

  /// `Языки`
  String get languages {
    return Intl.message(
      'Языки',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Дата последнего отчисления`
  String get lastPaymentDate {
    return Intl.message(
      'Дата последнего отчисления',
      name: 'lastPaymentDate',
      desc: '',
      args: [],
    );
  }

  /// `Менее года`
  String get lessThanAYear {
    return Intl.message(
      'Менее года',
      name: 'lessThanAYear',
      desc: '',
      args: [],
    );
  }

  /// `лет`
  String get let {
    return Intl.message(
      'лет',
      name: 'let',
      desc: '',
      args: [],
    );
  }

  /// `Лицо, ищущее работу`
  String get lir {
    return Intl.message(
      'Лицо, ищущее работу',
      name: 'lir',
      desc: '',
      args: [],
    );
  }

  /// `Cоглашаюсь на сбор и обработку персональных данных`
  String get lirAgreed {
    return Intl.message(
      'Cоглашаюсь на сбор и обработку персональных данных',
      name: 'lirAgreed',
      desc: '',
      args: [],
    );
  }

  /// `Чтобы продолжить, нужно согласиться на сбор и обработку персональных данных`
  String get lirAgreementRequired {
    return Intl.message(
      'Чтобы продолжить, нужно согласиться на сбор и обработку персональных данных',
      name: 'lirAgreementRequired',
      desc: '',
      args: [],
    );
  }

  /// `Ваша заявка оформлена. Для регистрации в качестве лица, ищущего работу, нажмите на кнопку «Зарегистрироваться как ЛИР»`
  String get lirCreatedConfirmation {
    return Intl.message(
      'Ваша заявка оформлена. Для регистрации в качестве лица, ищущего работу, нажмите на кнопку «Зарегистрироваться как ЛИР»',
      name: 'lirCreatedConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Уважаемый(ая) {name}!\nВаша заявка на регистрацию в качестве лица, ищущего работу оформлена.\nДля просмотра и регистрации заявки нажамите на кнопку "Просмотреть".`
  String lirInvitation(Object name) {
    return Intl.message(
      'Уважаемый(ая) $name!\nВаша заявка на регистрацию в качестве лица, ищущего работу оформлена.\nДля просмотра и регистрации заявки нажамите на кнопку "Просмотреть".',
      name: 'lirInvitation',
      desc: '',
      args: [name],
    );
  }

  /// `Регистрация ЛИР`
  String get lirReg {
    return Intl.message(
      'Регистрация ЛИР',
      name: 'lirReg',
      desc: '',
      args: [],
    );
  }

  /// `Обратите внимание, в Единой системе учета трудовых договоров у Вас имеется действующий трудовой договор с {employer} {position}.\nПожалуйста, обратитесь к работодателю.\n\nРегистрация в качестве лица, ищущего работу, предназначена для лиц, не имеющих работы и/или заработка (ст. 13 Закона РК "О занятости населения").\n\nПродолжить регистрацию?`
  String lirRegContractIsActiveBody(Object employer, Object position) {
    return Intl.message(
      'Обратите внимание, в Единой системе учета трудовых договоров у Вас имеется действующий трудовой договор с $employer $position.\nПожалуйста, обратитесь к работодателю.\n\nРегистрация в качестве лица, ищущего работу, предназначена для лиц, не имеющих работы и/или заработка (ст. 13 Закона РК "О занятости населения").\n\nПродолжить регистрацию?',
      name: 'lirRegContractIsActiveBody',
      desc: '',
      args: [employer, position],
    );
  }

  /// `Вы зарегистрированы в качестве лица, ищущего работу, в центре занятости населения.`
  String get lirRegContractIsActiveTitle {
    return Intl.message(
      'Вы зарегистрированы в качестве лица, ищущего работу, в центре занятости населения.',
      name: 'lirRegContractIsActiveTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enbek подберет для вас подходящие вакансии.\n\nОткликайтесь на них и посещайте собеседования с работодателями.\n\nЕсли в течение 3-х рабочих дней, включая день регистрации, вы не найдете работу, то Enbek автоматически зарегистрирует вас в качестве безработного.\n\nВы можете быть сняты с учета в качестве безработного центром занятости населения в случаях, предусмотренных статьей 16 Закона РК «О занятости населения».`
  String get lirRegSuccess {
    return Intl.message(
      'Enbek подберет для вас подходящие вакансии.\n\nОткликайтесь на них и посещайте собеседования с работодателями.\n\nЕсли в течение 3-х рабочих дней, включая день регистрации, вы не найдете работу, то Enbek автоматически зарегистрирует вас в качестве безработного.\n\nВы можете быть сняты с учета в качестве безработного центром занятости населения в случаях, предусмотренных статьей 16 Закона РК «О занятости населения».',
      name: 'lirRegSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Обратите внимание, в Единой системе учета трудовых договоров у Вас имеется действующий трудовой договор с {employer} {position}.\nПожалуйста, обратитесь к работодателю.\n\nРегистрация в качестве лица, ищущего работу, предназначена для лиц, не имеющих работы и/или заработка (ст. 13 Закона РК "О занятости населения").\n\nПродолжить регистрацию?`
  String lirRegSuccessBody(Object employer, Object position) {
    return Intl.message(
      'Обратите внимание, в Единой системе учета трудовых договоров у Вас имеется действующий трудовой договор с $employer $position.\nПожалуйста, обратитесь к работодателю.\n\nРегистрация в качестве лица, ищущего работу, предназначена для лиц, не имеющих работы и/или заработка (ст. 13 Закона РК "О занятости населения").\n\nПродолжить регистрацию?',
      name: 'lirRegSuccessBody',
      desc: '',
      args: [employer, position],
    );
  }

  /// `Вы зарегистрированы в качестве лица, ищущего работу, в центре занятости населения.`
  String get lirRegSuccessTitle {
    return Intl.message(
      'Вы зарегистрированы в качестве лица, ищущего работу, в центре занятости населения.',
      name: 'lirRegSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Смотреть заявку`
  String get lirSeeApplication {
    return Intl.message(
      'Смотреть заявку',
      name: 'lirSeeApplication',
      desc: '',
      args: [],
    );
  }

  /// `Список пуст`
  String get listIsEmpty {
    return Intl.message(
      'Список пуст',
      name: 'listIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Временные рабочие места: социальные рабочие места, общественные работы, молодежная практика, первое рабочее место, контракт поколений, серебряный возраст`
  String get listTemporaryJobs {
    return Intl.message(
      'Временные рабочие места: социальные рабочие места, общественные работы, молодежная практика, первое рабочее место, контракт поколений, серебряный возраст',
      name: 'listTemporaryJobs',
      desc: '',
      args: [],
    );
  }

  /// `Населенный пункт`
  String get locality {
    return Intl.message(
      'Населенный пункт',
      name: 'locality',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get logout {
    return Intl.message(
      'Выйти',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Тема письма`
  String get mailTheme {
    return Intl.message(
      'Тема письма',
      name: 'mailTheme',
      desc: '',
      args: [],
    );
  }

  /// `Основная информация`
  String get mainInfo {
    return Intl.message(
      'Основная информация',
      name: 'mainInfo',
      desc: '',
      args: [],
    );
  }

  /// `Ответственное лицо`
  String get manager {
    return Intl.message(
      'Ответственное лицо',
      name: 'manager',
      desc: '',
      args: [],
    );
  }

  /// `ФИО ответственного лица`
  String get managerName {
    return Intl.message(
      'ФИО ответственного лица',
      name: 'managerName',
      desc: '',
      args: [],
    );
  }

  /// `Размер файла превышает максимально допустимый ({size} Мб)`
  String maxFileSizeError(Object size) {
    return Intl.message(
      'Размер файла превышает максимально допустимый ($size Мб)',
      name: 'maxFileSizeError',
      desc: '',
      args: [size],
    );
  }

  /// `Сообщение`
  String get message {
    return Intl.message(
      'Сообщение',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Сообщения`
  String get messages {
    return Intl.message(
      'Сообщения',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Минимальная желаемая оплата труда (тенге)`
  String get minimalDisuredSalaryTenge {
    return Intl.message(
      'Минимальная желаемая оплата труда (тенге)',
      name: 'minimalDisuredSalaryTenge',
      desc: '',
      args: [],
    );
  }

  /// `Перенести`
  String get move {
    return Intl.message(
      'Перенести',
      name: 'move',
      desc: '',
      args: [],
    );
  }

  /// `Восстановить из архива`
  String get moveToActive {
    return Intl.message(
      'Восстановить из архива',
      name: 'moveToActive',
      desc: '',
      args: [],
    );
  }

  /// `Перенести резюме в активные?`
  String get moveToActiveConf {
    return Intl.message(
      'Перенести резюме в активные?',
      name: 'moveToActiveConf',
      desc: '',
      args: [],
    );
  }

  /// `Перенести в архив`
  String get moveToArchive {
    return Intl.message(
      'Перенести в архив',
      name: 'moveToArchive',
      desc: '',
      args: [],
    );
  }

  /// `Перенести резюме в архив?`
  String get moveToArchiveConf {
    return Intl.message(
      'Перенести резюме в архив?',
      name: 'moveToArchiveConf',
      desc: '',
      args: [],
    );
  }

  /// `Переезд в другой город, регион`
  String get movingAnotherCityRegion {
    return Intl.message(
      'Переезд в другой город, регион',
      name: 'movingAnotherCityRegion',
      desc: '',
      args: [],
    );
  }

  /// `Мои трудоустройства`
  String get myEmployments {
    return Intl.message(
      'Мои трудоустройства',
      name: 'myEmployments',
      desc: '',
      args: [],
    );
  }

  /// `Мои резюме`
  String get myResume {
    return Intl.message(
      'Мои резюме',
      name: 'myResume',
      desc: '',
      args: [],
    );
  }

  /// `Мои резюме`
  String get myResumes {
    return Intl.message(
      'Мои резюме',
      name: 'myResumes',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get name {
    return Intl.message(
      'Имя',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Наименование учебного заведения`
  String get nameOfEducationInstitution {
    return Intl.message(
      'Наименование учебного заведения',
      name: 'nameOfEducationInstitution',
      desc: '',
      args: [],
    );
  }

  /// `Имя и фамилия`
  String get nameSurname {
    return Intl.message(
      'Имя и фамилия',
      name: 'nameSurname',
      desc: '',
      args: [],
    );
  }

  /// `Национальный проект`
  String get nationalProject {
    return Intl.message(
      'Национальный проект',
      name: 'nationalProject',
      desc: '',
      args: [],
    );
  }

  /// `Национальные проекты`
  String get nationalProjects {
    return Intl.message(
      'Национальные проекты',
      name: 'nationalProjects',
      desc: '',
      args: [],
    );
  }

  /// `Наличие статуса «Малообеспеченные»`
  String get needyStatus {
    return Intl.message(
      'Наличие статуса «Малообеспеченные»',
      name: 'needyStatus',
      desc: '',
      args: [],
    );
  }

  /// `Новые приглашения`
  String get newInvites {
    return Intl.message(
      'Новые приглашения',
      name: 'newInvites',
      desc: '',
      args: [],
    );
  }

  /// `Новая`
  String get newRequest {
    return Intl.message(
      'Новая',
      name: 'newRequest',
      desc: '',
      args: [],
    );
  }

  /// `Новые`
  String get newResponses {
    return Intl.message(
      'Новые',
      name: 'newResponses',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next {
    return Intl.message(
      'Далее',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Заявок пока нет`
  String get noActiveRequest {
    return Intl.message(
      'Заявок пока нет',
      name: 'noActiveRequest',
      desc: '',
      args: [],
    );
  }

  /// `Активных резюме пока нет`
  String get noActiveResumes {
    return Intl.message(
      'Активных резюме пока нет',
      name: 'noActiveResumes',
      desc: '',
      args: [],
    );
  }

  /// `Активных вакансий пока нет`
  String get noActiveVacancies {
    return Intl.message(
      'Активных вакансий пока нет',
      name: 'noActiveVacancies',
      desc: '',
      args: [],
    );
  }

  /// `Заявок пока нет`
  String get noApplicationsYet {
    return Intl.message(
      'Заявок пока нет',
      name: 'noApplicationsYet',
      desc: '',
      args: [],
    );
  }

  /// `Архив пуст`
  String get noArchiveResumes {
    return Intl.message(
      'Архив пуст',
      name: 'noArchiveResumes',
      desc: '',
      args: [],
    );
  }

  /// `Cведения по Вашему ИИН отсутствуют`
  String get noDataForIin {
    return Intl.message(
      'Cведения по Вашему ИИН отсутствуют',
      name: 'noDataForIin',
      desc: '',
      args: [],
    );
  }

  /// `Желаемая зарплата не указана`
  String get noDesiredSalary {
    return Intl.message(
      'Желаемая зарплата не указана',
      name: 'noDesiredSalary',
      desc: '',
      args: [],
    );
  }

  /// `Сведения по вашему ИИН отсутствуют`
  String get noInfoForYourIin {
    return Intl.message(
      'Сведения по вашему ИИН отсутствуют',
      name: 'noInfoForYourIin',
      desc: '',
      args: [],
    );
  }

  /// `Нет новых уведомлений`
  String get noNewNotifications {
    return Intl.message(
      'Нет новых уведомлений',
      name: 'noNewNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось отпределить тип уведомления`
  String get noNotificationType {
    return Intl.message(
      'Не удалось отпределить тип уведомления',
      name: 'noNotificationType',
      desc: '',
      args: [],
    );
  }

  /// `Нет результатов для фильтрации`
  String get noResultForFilters {
    return Intl.message(
      'Нет результатов для фильтрации',
      name: 'noResultForFilters',
      desc: '',
      args: [],
    );
  }

  /// `Нет результатов поиска`
  String get noResultsOfSearch {
    return Intl.message(
      'Нет результатов поиска',
      name: 'noResultsOfSearch',
      desc: '',
      args: [],
    );
  }

  /// `Нет результатов`
  String get noSearchResults {
    return Intl.message(
      'Нет результатов',
      name: 'noSearchResults',
      desc: '',
      args: [],
    );
  }

  /// `Нет опыта работы`
  String get noWorkExp {
    return Intl.message(
      'Нет опыта работы',
      name: 'noWorkExp',
      desc: '',
      args: [],
    );
  }

  /// `Причина незанятости`
  String get nonemploymentReason {
    return Intl.message(
      'Причина незанятости',
      name: 'nonemploymentReason',
      desc: '',
      args: [],
    );
  }

  /// `не готов(-а) к переезду`
  String get notReadyToMove {
    return Intl.message(
      'не готов(-а) к переезду',
      name: 'notReadyToMove',
      desc: '',
      args: [],
    );
  }

  /// `Уведомление`
  String get notification {
    return Intl.message(
      'Уведомление',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Уведомления`
  String get notifications {
    return Intl.message(
      'Уведомления',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `По настоящее время`
  String get now {
    return Intl.message(
      'По настоящее время',
      name: 'now',
      desc: '',
      args: [],
    );
  }

  /// `Номер`
  String get number {
    return Intl.message(
      'Номер',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Номер 20-значного лицевого счета (IBAN-счет)`
  String get numberIBAN {
    return Intl.message(
      'Номер 20-значного лицевого счета (IBAN-счет)',
      name: 'numberIBAN',
      desc: '',
      args: [],
    );
  }

  /// `Номер решения о назначении`
  String get numberOfResult {
    return Intl.message(
      'Номер решения о назначении',
      name: 'numberOfResult',
      desc: '',
      args: [],
    );
  }

  /// `Количество вакансий: {numberOfVacancies}`
  String numberOfVacancies(Object numberOfVacancies) {
    return Intl.message(
      'Количество вакансий: $numberOfVacancies',
      name: 'numberOfVacancies',
      desc: '',
      args: [numberOfVacancies],
    );
  }

  /// `Понятно, спасибо`
  String get ok {
    return Intl.message(
      'Понятно, спасибо',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `На рассмотрении `
  String get onReview {
    return Intl.message(
      'На рассмотрении ',
      name: 'onReview',
      desc: '',
      args: [],
    );
  }

  /// `Открыть камеру`
  String get openCamera {
    return Intl.message(
      'Открыть камеру',
      name: 'openCamera',
      desc: '',
      args: [],
    );
  }

  /// `Отчество`
  String get parentName {
    return Intl.message(
      'Отчество',
      name: 'parentName',
      desc: '',
      args: [],
    );
  }

  /// `Пассажир`
  String get passenger {
    return Intl.message(
      'Пассажир',
      name: 'passenger',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Пароли не совпадают`
  String get passwordsDidntMatched {
    return Intl.message(
      'Пароли не совпадают',
      name: 'passwordsDidntMatched',
      desc: '',
      args: [],
    );
  }

  /// `Назначенная сумма`
  String get paymentAmount {
    return Intl.message(
      'Назначенная сумма',
      name: 'paymentAmount',
      desc: '',
      args: [],
    );
  }

  /// `У Вас уже есть активная заявка. Пожалуйста дождитесь ответа.`
  String get paymentRequestError {
    return Intl.message(
      'У Вас уже есть активная заявка. Пожалуйста дождитесь ответа.',
      name: 'paymentRequestError',
      desc: '',
      args: [],
    );
  }

  /// `Срок выплаты`
  String get paymentTerm {
    return Intl.message(
      'Срок выплаты',
      name: 'paymentTerm',
      desc: '',
      args: [],
    );
  }

  /// `Период`
  String get period {
    return Intl.message(
      'Период',
      name: 'period',
      desc: '',
      args: [],
    );
  }

  /// `Личные данные`
  String get personData {
    return Intl.message(
      'Личные данные',
      name: 'personData',
      desc: '',
      args: [],
    );
  }

  /// `Cоглашаюсь на сбор и обработку персональных данных`
  String get personalDataCollection {
    return Intl.message(
      'Cоглашаюсь на сбор и обработку персональных данных',
      name: 'personalDataCollection',
      desc: '',
      args: [],
    );
  }

  /// `Согласен на сбор и обработку персональных данных`
  String get personalDataUsage {
    return Intl.message(
      'Согласен на сбор и обработку персональных данных',
      name: 'personalDataUsage',
      desc: '',
      args: [],
    );
  }

  /// `Личные качества`
  String get personalQualities {
    return Intl.message(
      'Личные качества',
      name: 'personalQualities',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона сохранен`
  String get phoneSaved {
    return Intl.message(
      'Номер телефона сохранен',
      name: 'phoneSaved',
      desc: '',
      args: [],
    );
  }

  /// `Фотография`
  String get photo {
    return Intl.message(
      'Фотография',
      name: 'photo',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать файл`
  String get pickFile {
    return Intl.message(
      'Выбрать файл',
      name: 'pickFile',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестный формат файла`
  String get pickerErrorFileType {
    return Intl.message(
      'Неизвестный формат файла',
      name: 'pickerErrorFileType',
      desc: '',
      args: [],
    );
  }

  /// `Превышен лимит по размеру файла`
  String get pickerErrorMaxSize {
    return Intl.message(
      'Превышен лимит по размеру файла',
      name: 'pickerErrorMaxSize',
      desc: '',
      args: [],
    );
  }

  /// `Забыли код быстрого доступа?`
  String get pinForgot {
    return Intl.message(
      'Забыли код быстрого доступа?',
      name: 'pinForgot',
      desc: '',
      args: [],
    );
  }

  /// `Для сброса кода быстрого доступа необходимо выйти из аккаунта и авторизоваться снова.`
  String get pinForgotText {
    return Intl.message(
      'Для сброса кода быстрого доступа необходимо выйти из аккаунта и авторизоваться снова.',
      name: 'pinForgotText',
      desc: '',
      args: [],
    );
  }

  /// `Вход по коду быстрого доступа`
  String get pincodeAuth {
    return Intl.message(
      'Вход по коду быстрого доступа',
      name: 'pincodeAuth',
      desc: '',
      args: [],
    );
  }

  /// `Place For Video here`
  String get placeForVideo {
    return Intl.message(
      'Place For Video here',
      name: 'placeForVideo',
      desc: '',
      args: [],
    );
  }

  /// `Должность`
  String get position {
    return Intl.message(
      'Должность',
      name: 'position',
      desc: '',
      args: [],
    );
  }

  /// `Должность и профессиональные навыки`
  String get positionAndProfessionalSkills {
    return Intl.message(
      'Должность и профессиональные навыки',
      name: 'positionAndProfessionalSkills',
      desc: '',
      args: [],
    );
  }

  /// `Должность и зарплата`
  String get positionAndSalary {
    return Intl.message(
      'Должность и зарплата',
      name: 'positionAndSalary',
      desc: '',
      args: [],
    );
  }

  /// `Настоящее время`
  String get presentTime {
    return Intl.message(
      'Настоящее время',
      name: 'presentTime',
      desc: '',
      args: [],
    );
  }

  /// `Опыт работы`
  String get prevexp {
    return Intl.message(
      'Опыт работы',
      name: 'prevexp',
      desc: '',
      args: [],
    );
  }

  /// `Стажировка`
  String get probation {
    return Intl.message(
      'Стажировка',
      name: 'probation',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get proceed {
    return Intl.message(
      'Продолжить',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Смежные (родственные) профессии сгруппированы в определенные области. Например, для должности «Бухгалтер» соответствует профобласть «Финансы и бухучет».\n\nДолжности руководителей высшего и среднего звена, в том числе по функциональным направлениям включены в профобласть «Руководители», например «Главный бухгалтер», «Главный редактор» или «Директор по стратегии».`
  String get profAreaHint {
    return Intl.message(
      'Смежные (родственные) профессии сгруппированы в определенные области. Например, для должности «Бухгалтер» соответствует профобласть «Финансы и бухучет».\n\nДолжности руководителей высшего и среднего звена, в том числе по функциональным направлениям включены в профобласть «Руководители», например «Главный бухгалтер», «Главный редактор» или «Директор по стратегии».',
      name: 'profAreaHint',
      desc: '',
      args: [],
    );
  }

  /// `Уточнение должности`
  String get profNote {
    return Intl.message(
      'Уточнение должности',
      name: 'profNote',
      desc: '',
      args: [],
    );
  }

  /// `Профессия`
  String get profession {
    return Intl.message(
      'Профессия',
      name: 'profession',
      desc: '',
      args: [],
    );
  }

  /// `Профессиональная область`
  String get professionalArea {
    return Intl.message(
      'Профессиональная область',
      name: 'professionalArea',
      desc: '',
      args: [],
    );
  }

  /// `Профессиональные навыки`
  String get professionalSkills {
    return Intl.message(
      'Профессиональные навыки',
      name: 'professionalSkills',
      desc: '',
      args: [],
    );
  }

  /// `Уровень владения`
  String get proficiencyLevel {
    return Intl.message(
      'Уровень владения',
      name: 'proficiencyLevel',
      desc: '',
      args: [],
    );
  }

  /// `Проект`
  String get project {
    return Intl.message(
      'Проект',
      name: 'project',
      desc: '',
      args: [],
    );
  }

  /// `Срок публикации истек`
  String get pubExpired {
    return Intl.message(
      'Срок публикации истек',
      name: 'pubExpired',
      desc: '',
      args: [],
    );
  }

  /// `Опубликована {dateOpen}`
  String publicationDate(Object dateOpen) {
    return Intl.message(
      'Опубликована $dateOpen',
      name: 'publicationDate',
      desc: '',
      args: [dateOpen],
    );
  }

  /// `Срок публикации резюме`
  String get publicationDeadline {
    return Intl.message(
      'Срок публикации резюме',
      name: 'publicationDeadline',
      desc: '',
      args: [],
    );
  }

  /// `Выберите срок публикации`
  String get publicationPeriod {
    return Intl.message(
      'Выберите срок публикации',
      name: 'publicationPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Опубликовано`
  String get published {
    return Intl.message(
      'Опубликовано',
      name: 'published',
      desc: '',
      args: [],
    );
  }

  /// `Push - уведомления`
  String get pushNotifications {
    return Intl.message(
      'Push - уведомления',
      name: 'pushNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Вопросы и ответы`
  String get qa {
    return Intl.message(
      'Вопросы и ответы',
      name: 'qa',
      desc: '',
      args: [],
    );
  }

  /// `Квалификация`
  String get qualification {
    return Intl.message(
      'Квалификация',
      name: 'qualification',
      desc: '',
      args: [],
    );
  }

  /// `готов(-а) к переезду`
  String get readyToMove {
    return Intl.message(
      'готов(-а) к переезду',
      name: 'readyToMove',
      desc: '',
      args: [],
    );
  }

  /// `Причина`
  String get reason {
    return Intl.message(
      'Причина',
      name: 'reason',
      desc: '',
      args: [],
    );
  }

  /// `Причина жалобы`
  String get reasonComplaint {
    return Intl.message(
      'Причина жалобы',
      name: 'reasonComplaint',
      desc: '',
      args: [],
    );
  }

  /// `Получатель`
  String get receiver {
    return Intl.message(
      'Получатель',
      name: 'receiver',
      desc: '',
      args: [],
    );
  }

  /// `ФИО получателя`
  String get receiverName {
    return Intl.message(
      'ФИО получателя',
      name: 'receiverName',
      desc: '',
      args: [],
    );
  }

  /// `Этапы получения:`
  String get receivingSteps {
    return Intl.message(
      'Этапы получения:',
      name: 'receivingSteps',
      desc: '',
      args: [],
    );
  }

  /// `Восстановить`
  String get recover {
    return Intl.message(
      'Восстановить',
      name: 'recover',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация в качестве безработного`
  String get regAsUnepmoyed {
    return Intl.message(
      'Регистрация в качестве безработного',
      name: 'regAsUnepmoyed',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация в пару кликов`
  String get regCoupleClick {
    return Intl.message(
      'Регистрация в пару кликов',
      name: 'regCoupleClick',
      desc: '',
      args: [],
    );
  }

  /// `Завершение регистрации`
  String get regFinishing {
    return Intl.message(
      'Завершение регистрации',
      name: 'regFinishing',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация безработного`
  String get regUnemployed {
    return Intl.message(
      'Регистрация безработного',
      name: 'regUnemployed',
      desc: '',
      args: [],
    );
  }

  /// `Регион`
  String get region {
    return Intl.message(
      'Регион',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `Укажите регион, пожалуйста`
  String get regionRequired {
    return Intl.message(
      'Укажите регион, пожалуйста',
      name: 'regionRequired',
      desc: '',
      args: [],
    );
  }

  /// `Пройти регистрацию`
  String get register {
    return Intl.message(
      'Пройти регистрацию',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Вы регистрируетесь в качестве лица, ищущего работу`
  String get registerJobFounder {
    return Intl.message(
      'Вы регистрируетесь в качестве лица, ищущего работу',
      name: 'registerJobFounder',
      desc: '',
      args: [],
    );
  }

  /// `Это значит, что вы обратились за содействием в трудоустройстве черxез портал Enbek.kz и должны приложить усилия в поиске работы.\n\nEnbek.kz будет подбирать для вас подходящую работу. Найденные вакансии будут поступать в виде уведомлений в ваш личный кабинет на Enbek.kz и на электронную почту.\n\nВы должны откликаться на подходящие для вас вакансии и после получения приглашений от работодателей посещать собеседования.\n\nЕсли в течение 3 (трёх) рабочих дней, включая день регистрации, вы не трудоустроитесь, то Enbek.kz автоматически проверит ваше право на регистрацию в качестве безработного лица и в случае подтверждения вы получите статус безработного.`
  String get registerJobFounderBody {
    return Intl.message(
      'Это значит, что вы обратились за содействием в трудоустройстве черxез портал Enbek.kz и должны приложить усилия в поиске работы.\n\nEnbek.kz будет подбирать для вас подходящую работу. Найденные вакансии будут поступать в виде уведомлений в ваш личный кабинет на Enbek.kz и на электронную почту.\n\nВы должны откликаться на подходящие для вас вакансии и после получения приглашений от работодателей посещать собеседования.\n\nЕсли в течение 3 (трёх) рабочих дней, включая день регистрации, вы не трудоустроитесь, то Enbek.kz автоматически проверит ваше право на регистрацию в качестве безработного лица и в случае подтверждения вы получите статус безработного.',
      name: 'registerJobFounderBody',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация закрыта: `
  String get registrationClosed {
    return Intl.message(
      'Регистрация закрыта: ',
      name: 'registrationClosed',
      desc: '',
      args: [],
    );
  }

  /// `Дата регистрации`
  String get registrationDate {
    return Intl.message(
      'Дата регистрации',
      name: 'registrationDate',
      desc: '',
      args: [],
    );
  }

  /// `Дата закрытия регистрации`
  String get registrationEndDate {
    return Intl.message(
      'Дата закрытия регистрации',
      name: 'registrationEndDate',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация ЛИР: `
  String get registrationLIR {
    return Intl.message(
      'Регистрация ЛИР: ',
      name: 'registrationLIR',
      desc: '',
      args: [],
    );
  }

  /// `Причина отказа`
  String get rejectionReason {
    return Intl.message(
      'Причина отказа',
      name: 'rejectionReason',
      desc: '',
      args: [],
    );
  }

  /// `Укажите готовы ли Вы переехать в другой город или регион для трудоустройства по желаемой должности.`
  String get relocateConsentHint {
    return Intl.message(
      'Укажите готовы ли Вы переехать в другой город или регион для трудоустройства по желаемой должности.',
      name: 'relocateConsentHint',
      desc: '',
      args: [],
    );
  }

  /// `Откликнуться`
  String get reply {
    return Intl.message(
      'Откликнуться',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `от {date}`
  String requestTitle(Object date) {
    return Intl.message(
      'от $date',
      name: 'requestTitle',
      desc: '',
      args: [date],
    );
  }

  /// `Проверка сведений`
  String get requestingGbdInfo {
    return Intl.message(
      'Проверка сведений',
      name: 'requestingGbdInfo',
      desc: '',
      args: [],
    );
  }

  /// `Требуется выбрать профессиональную область`
  String get requiredChooseProfArea {
    return Intl.message(
      'Требуется выбрать профессиональную область',
      name: 'requiredChooseProfArea',
      desc: '',
      args: [],
    );
  }

  /// `Требуется выбрать желаемую должность`
  String get requiredChooseProf {
    return Intl.message(
      'Требуется выбрать желаемую должность',
      name: 'requiredChooseProf',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить фильтр`
  String get resetFilter {
    return Intl.message(
      'Сбросить фильтр',
      name: 'resetFilter',
      desc: '',
      args: [],
    );
  }

  /// `Для сброса код-пароля потребуется авторизация по номеру телефона.\nПродолжить?`
  String get resetPinCodeHint {
    return Intl.message(
      'Для сброса код-пароля потребуется авторизация по номеру телефона.\nПродолжить?',
      name: 'resetPinCodeHint',
      desc: '',
      args: [],
    );
  }

  /// `Отклики`
  String get responses {
    return Intl.message(
      'Отклики',
      name: 'responses',
      desc: '',
      args: [],
    );
  }

  /// `Восстановить резюме`
  String get restoreResume {
    return Intl.message(
      'Восстановить резюме',
      name: 'restoreResume',
      desc: '',
      args: [],
    );
  }

  /// `Резюме`
  String get resume {
    return Intl.message(
      'Резюме',
      name: 'resume',
      desc: '',
      args: [],
    );
  }

  /// `Резюме заполнено на {percent}%`
  String resumeFilledOn(Object percent) {
    return Intl.message(
      'Резюме заполнено на $percent%',
      name: 'resumeFilledOn',
      desc: '',
      args: [percent],
    );
  }

  /// `Резюме создано`
  String get resumeIsCreated {
    return Intl.message(
      'Резюме создано',
      name: 'resumeIsCreated',
      desc: '',
      args: [],
    );
  }

  /// `Данное резюме используется в поиске работы для Вас в качестве лица, ищущего работу/безработного, поэтому редактирование невозможно. Вы  можете создать в личном кабинете новое резюме для откликов на вакансии.`
  String get resumeIsUsed {
    return Intl.message(
      'Данное резюме используется в поиске работы для Вас в качестве лица, ищущего работу/безработного, поэтому редактирование невозможно. Вы  можете создать в личном кабинете новое резюме для откликов на вакансии.',
      name: 'resumeIsUsed',
      desc: '',
      args: [],
    );
  }

  /// `Резюме восстановлено из архива`
  String get resumeMovedToActive {
    return Intl.message(
      'Резюме восстановлено из архива',
      name: 'resumeMovedToActive',
      desc: '',
      args: [],
    );
  }

  /// `Резюме перенесено в архив`
  String get resumeMovedToArchive {
    return Intl.message(
      'Резюме перенесено в архив',
      name: 'resumeMovedToArchive',
      desc: '',
      args: [],
    );
  }

  /// `Резюме сохранено`
  String get resumeSaved {
    return Intl.message(
      'Резюме сохранено',
      name: 'resumeSaved',
      desc: '',
      args: [],
    );
  }

  /// `{views} просмотра резюме`
  String resumeViewsFew(Object views) {
    return Intl.message(
      '$views просмотра резюме',
      name: 'resumeViewsFew',
      desc: '',
      args: [views],
    );
  }

  /// `{views} просмотр резюме`
  String resumeViewsOne(Object views) {
    return Intl.message(
      '$views просмотр резюме',
      name: 'resumeViewsOne',
      desc: '',
      args: [views],
    );
  }

  /// `{views} просмотров резюме`
  String resumeViewsOther(Object views) {
    return Intl.message(
      '$views просмотров резюме',
      name: 'resumeViewsOther',
      desc: '',
      args: [views],
    );
  }

  /// `Рассмотрено`
  String get reviewed {
    return Intl.message(
      'Рассмотрено',
      name: 'reviewed',
      desc: '',
      args: [],
    );
  }

  /// `Оплата труда`
  String get salary {
    return Intl.message(
      'Оплата труда',
      name: 'salary',
      desc: '',
      args: [],
    );
  }

  /// `От {amount} ₸`
  String salaryFrom(Object amount) {
    return Intl.message(
      'От $amount ₸',
      name: 'salaryFrom',
      desc: '',
      args: [amount],
    );
  }

  /// `От {min} до {max} ₸`
  String salaryFromTo(Object min, Object max) {
    return Intl.message(
      'От $min до $max ₸',
      name: 'salaryFromTo',
      desc: '',
      args: [min, max],
    );
  }

  /// `до {salaryMax} ₸`
  String salaryMax(Object salaryMax) {
    return Intl.message(
      'до $salaryMax ₸',
      name: 'salaryMax',
      desc: '',
      args: [salaryMax],
    );
  }

  /// `от {salaryMin} ₸`
  String salaryMin(Object salaryMin) {
    return Intl.message(
      'от $salaryMin ₸',
      name: 'salaryMin',
      desc: '',
      args: [salaryMin],
    );
  }

  /// `Сумма должна быть больше 70 000`
  String get salaryMustBiggertThan {
    return Intl.message(
      'Сумма должна быть больше 70 000',
      name: 'salaryMustBiggertThan',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить поиск`
  String get saveSearch {
    return Intl.message(
      'Сохранить поиск',
      name: 'saveSearch',
      desc: '',
      args: [],
    );
  }

  /// `Сохраняйте поиски и получайте новые вакансии сразу`
  String get saveSearchesPromo {
    return Intl.message(
      'Сохраняйте поиски и получайте новые вакансии сразу',
      name: 'saveSearchesPromo',
      desc: '',
      args: [],
    );
  }

  /// `Название учебного заведения`
  String get schoolName {
    return Intl.message(
      'Название учебного заведения',
      name: 'schoolName',
      desc: '',
      args: [],
    );
  }

  /// `По навыкам`
  String get searchBySkills {
    return Intl.message(
      'По навыкам',
      name: 'searchBySkills',
      desc: '',
      args: [],
    );
  }

  /// `Поиски`
  String get searches {
    return Intl.message(
      'Поиски',
      name: 'searches',
      desc: '',
      args: [],
    );
  }

  /// `Просмотреть`
  String get see {
    return Intl.message(
      'Просмотреть',
      name: 'see',
      desc: '',
      args: [],
    );
  }

  /// `Просмотренные соискателем приглашения`
  String get seenByApplicant {
    return Intl.message(
      'Просмотренные соискателем приглашения',
      name: 'seenByApplicant',
      desc: '',
      args: [],
    );
  }

  /// `Укажите причину`
  String get selectReason {
    return Intl.message(
      'Укажите причину',
      name: 'selectReason',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get send {
    return Intl.message(
      'Отправить',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Услуги для граждан`
  String get serviceForCitizens {
    return Intl.message(
      'Услуги для граждан',
      name: 'serviceForCitizens',
      desc: '',
      args: [],
    );
  }

  /// `Регистрируйтесь в качестве безработного`
  String get serviceForCitizens1Title {
    return Intl.message(
      'Регистрируйтесь в качестве безработного',
      name: 'serviceForCitizens1Title',
      desc: '',
      args: [],
    );
  }

  /// `Получите выплату по потере работы`
  String get serviceForCitizens2Title {
    return Intl.message(
      'Получите выплату по потере работы',
      name: 'serviceForCitizens2Title',
      desc: '',
      args: [],
    );
  }

  /// `Разместите резюме и найдите работу`
  String get serviceForCitizens3Title {
    return Intl.message(
      'Разместите резюме и найдите работу',
      name: 'serviceForCitizens3Title',
      desc: '',
      args: [],
    );
  }

  /// `Найдите свой центр занятости`
  String get serviceForCitizens4Title {
    return Intl.message(
      'Найдите свой центр занятости',
      name: 'serviceForCitizens4Title',
      desc: '',
      args: [],
    );
  }

  /// `Показать`
  String get show {
    return Intl.message(
      'Показать',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Показать вакансии`
  String get showVacancies {
    return Intl.message(
      'Показать вакансии',
      name: 'showVacancies',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get signIn {
    return Intl.message(
      'Войти',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Войти как`
  String get signInAs {
    return Intl.message(
      'Войти как',
      name: 'signInAs',
      desc: '',
      args: [],
    );
  }

  /// `Войти через БМГ`
  String get signInViaBmg {
    return Intl.message(
      'Войти через БМГ',
      name: 'signInViaBmg',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Apple`
  String get signInWithApple {
    return Intl.message(
      'Войти с Apple',
      name: 'signInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Facebook`
  String get signInWithFacebook {
    return Intl.message(
      'Войти с Facebook',
      name: 'signInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Google`
  String get signInWithGoogle {
    return Intl.message(
      'Войти с Google',
      name: 'signInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрироваться`
  String get signUp {
    return Intl.message(
      'Зарегистрироваться',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `вакансия`
  String get singleVacancy {
    return Intl.message(
      'вакансия',
      name: 'singleVacancy',
      desc: '',
      args: [],
    );
  }

  /// `Навыки`
  String get skills {
    return Intl.message(
      'Навыки',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `{percent}% совпадений навыков`
  String skillsMatchPercentage(Object percent) {
    return Intl.message(
      '$percent% совпадений навыков',
      name: 'skillsMatchPercentage',
      desc: '',
      args: [percent],
    );
  }

  /// `Неверный код`
  String get smsCodeIsWrong {
    return Intl.message(
      'Неверный код',
      name: 'smsCodeIsWrong',
      desc: '',
      args: [],
    );
  }

  /// `Введите код из смс`
  String get smsCodeLabel {
    return Intl.message(
      'Введите код из смс',
      name: 'smsCodeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Социальную выплату на случай потери работы`
  String get socialJobLoss {
    return Intl.message(
      'Социальную выплату на случай потери работы',
      name: 'socialJobLoss',
      desc: '',
      args: [],
    );
  }

  /// `Социальная выплата`
  String get socialPayment {
    return Intl.message(
      'Социальная выплата',
      name: 'socialPayment',
      desc: '',
      args: [],
    );
  }

  /// `Сортировать`
  String get sort {
    return Intl.message(
      'Сортировать',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `Источники`
  String get sources {
    return Intl.message(
      'Источники',
      name: 'sources',
      desc: '',
      args: [],
    );
  }

  /// `Здесь будут резюме, у которых истек срок публикации`
  String get spaceForResume {
    return Intl.message(
      'Здесь будут резюме, у которых истек срок публикации',
      name: 'spaceForResume',
      desc: '',
      args: [],
    );
  }

  /// `Особые отметки`
  String get specialNotes {
    return Intl.message(
      'Особые отметки',
      name: 'specialNotes',
      desc: '',
      args: [],
    );
  }

  /// `Специальность`
  String get specialty {
    return Intl.message(
      'Специальность',
      name: 'specialty',
      desc: '',
      args: [],
    );
  }

  /// `Начало обучения`
  String get startOfEducation {
    return Intl.message(
      'Начало обучения',
      name: 'startOfEducation',
      desc: '',
      args: [],
    );
  }

  /// `Начало работы`
  String get startOfWork {
    return Intl.message(
      'Начало работы',
      name: 'startOfWork',
      desc: '',
      args: [],
    );
  }

  /// `Категория состояния`
  String get stateCategory {
    return Intl.message(
      'Категория состояния',
      name: 'stateCategory',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get status {
    return Intl.message(
      'Статус',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Заявитель`
  String get submitter {
    return Intl.message(
      'Заявитель',
      name: 'submitter',
      desc: '',
      args: [],
    );
  }

  /// `Субсидируемые государством`
  String get subsidized {
    return Intl.message(
      'Субсидируемые государством',
      name: 'subsidized',
      desc: '',
      args: [],
    );
  }

  /// `Подходящие вакансии`
  String get suitableVacancies {
    return Intl.message(
      'Подходящие вакансии',
      name: 'suitableVacancies',
      desc: '',
      args: [],
    );
  }

  /// `Какие меры поддержки вы можете получить?`
  String get supportCanYouGet {
    return Intl.message(
      'Какие меры поддержки вы можете получить?',
      name: 'supportCanYouGet',
      desc: '',
      args: [],
    );
  }

  /// `Удалить учебное заведение?`
  String get sureDeleteEduOrg {
    return Intl.message(
      'Удалить учебное заведение?',
      name: 'sureDeleteEduOrg',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get surname {
    return Intl.message(
      'Фамилия',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Режим налогообложения`
  String get taxRegime {
    return Intl.message(
      'Режим налогообложения',
      name: 'taxRegime',
      desc: '',
      args: [],
    );
  }

  /// `Временные рабочие места`
  String get temporaryJobs {
    return Intl.message(
      'Временные рабочие места',
      name: 'temporaryJobs',
      desc: '',
      args: [],
    );
  }

  /// `Срок ТД`
  String get termEmpContract {
    return Intl.message(
      'Срок ТД',
      name: 'termEmpContract',
      desc: '',
      args: [],
    );
  }

  /// `Тема`
  String get theme {
    return Intl.message(
      'Тема',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Здравствуйте!\nБлагодарю за интерес, проявленный к моей кандидатуре.\nС уважением`
  String get thxForIntrestedForResume {
    return Intl.message(
      'Здравствуйте!\nБлагодарю за интерес, проявленный к моей кандидатуре.\nС уважением',
      name: 'thxForIntrestedForResume',
      desc: '',
      args: [],
    );
  }

  /// `Архив заявок`
  String get ticketsArchive {
    return Intl.message(
      'Архив заявок',
      name: 'ticketsArchive',
      desc: '',
      args: [],
    );
  }

  /// `Отказаться`
  String get toDecline {
    return Intl.message(
      'Отказаться',
      name: 'toDecline',
      desc: '',
      args: [],
    );
  }

  /// `Сегодня`
  String get today {
    return Intl.message(
      'Сегодня',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `{totalVacancies}`
  String totalVacancies(Object totalVacancies) {
    return Intl.message(
      '$totalVacancies',
      name: 'totalVacancies',
      desc: '',
      args: [totalVacancies],
    );
  }

  /// `Путешествий`
  String get trips {
    return Intl.message(
      'Путешествий',
      name: 'trips',
      desc: '',
      args: [],
    );
  }

  /// `Попробуйте изменить запрос`
  String get tryToChangeRequest {
    return Intl.message(
      'Попробуйте изменить запрос',
      name: 'tryToChangeRequest',
      desc: '',
      args: [],
    );
  }

  /// `Тип`
  String get type {
    return Intl.message(
      'Тип',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Тип учебного заведения`
  String get typeOfEducationInstitution {
    return Intl.message(
      'Тип учебного заведения',
      name: 'typeOfEducationInstitution',
      desc: '',
      args: [],
    );
  }

  /// `Безработный`
  String get unemployed {
    return Intl.message(
      'Безработный',
      name: 'unemployed',
      desc: '',
      args: [],
    );
  }

  /// `Данные о незанятости`
  String get unemploymentData {
    return Intl.message(
      'Данные о незанятости',
      name: 'unemploymentData',
      desc: '',
      args: [],
    );
  }

  /// `Дата начала незанятости`
  String get unemploymentStartDate {
    return Intl.message(
      'Дата начала незанятости',
      name: 'unemploymentStartDate',
      desc: '',
      args: [],
    );
  }

  /// `По настоящее время`
  String get untilNow {
    return Intl.message(
      'По настоящее время',
      name: 'untilNow',
      desc: '',
      args: [],
    );
  }

  /// `Обновить`
  String get update {
    return Intl.message(
      'Обновить',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Использовать данные резюме для заполнения формы ЛИР`
  String get useExistingResume {
    return Intl.message(
      'Использовать данные резюме для заполнения формы ЛИР',
      name: 'useExistingResume',
      desc: '',
      args: [],
    );
  }

  /// `В вашем личном кабинете на ЭБТ есть ранее созданные резюме`
  String get useExistingResumeHint {
    return Intl.message(
      'В вашем личном кабинете на ЭБТ есть ранее созданные резюме',
      name: 'useExistingResumeHint',
      desc: '',
      args: [],
    );
  }

  /// `Пользователь`
  String get user {
    return Intl.message(
      'Пользователь',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии`
  String get vacancies {
    return Intl.message(
      'Вакансии',
      name: 'vacancies',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии на первое рабочее место`
  String get vacanciesFirstPlace {
    return Intl.message(
      'Вакансии на первое рабочее место',
      name: 'vacanciesFirstPlace',
      desc: '',
      args: [],
    );
  }

  /// `Для безработных не старше 29 лет без опыта работы`
  String get vacanciesFirstPlaceHint {
    return Intl.message(
      'Для безработных не старше 29 лет без опыта работы',
      name: 'vacanciesFirstPlaceHint',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии на общественные работы`
  String get vacanciesForPublicJobs {
    return Intl.message(
      'Вакансии на общественные работы',
      name: 'vacanciesForPublicJobs',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии на социальные рабочие места`
  String get vacanciesForSocialJobs {
    return Intl.message(
      'Вакансии на социальные рабочие места',
      name: 'vacanciesForSocialJobs',
      desc: '',
      args: [],
    );
  }

  /// `Для всех безработных`
  String get vacanciesForSocialJobsHint {
    return Intl.message(
      'Для всех безработных',
      name: 'vacanciesForSocialJobsHint',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии на молодежную практику`
  String get vacanciesForYouth {
    return Intl.message(
      'Вакансии на молодежную практику',
      name: 'vacanciesForYouth',
      desc: '',
      args: [],
    );
  }

  /// `Для молодежи не старше 29 лет без опыта работы, окончивших учебное заведение не более 3 лет назад`
  String get vacanciesForYouthHint {
    return Intl.message(
      'Для молодежи не старше 29 лет без опыта работы, окончивших учебное заведение не более 3 лет назад',
      name: 'vacanciesForYouthHint',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии по контракту поколений`
  String get vacanciesGenerationContract {
    return Intl.message(
      'Вакансии по контракту поколений',
      name: 'vacanciesGenerationContract',
      desc: '',
      args: [],
    );
  }

  /// `Для молодежи не старше 29 лет, завершивших учебное заведение в течение 2-х лет`
  String get vacanciesGenerationContractHint {
    return Intl.message(
      'Для молодежи не старше 29 лет, завершивших учебное заведение в течение 2-х лет',
      name: 'vacanciesGenerationContractHint',
      desc: '',
      args: [],
    );
  }

  /// `Вакансий не найдено`
  String get vacanciesNotFound {
    return Intl.message(
      'Вакансий не найдено',
      name: 'vacanciesNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Количество вакансий`
  String get vacanciesNumber {
    return Intl.message(
      'Количество вакансий',
      name: 'vacanciesNumber',
      desc: '',
      args: [],
    );
  }

  /// `Показать {vacanciesNumber}`
  String vacanciesSearchResult(Object vacanciesNumber) {
    return Intl.message(
      'Показать $vacanciesNumber',
      name: 'vacanciesSearchResult',
      desc: '',
      args: [vacanciesNumber],
    );
  }

  /// `Вакансии по серебряному возрасту`
  String get vacanciesSilverAge {
    return Intl.message(
      'Вакансии по серебряному возрасту',
      name: 'vacanciesSilverAge',
      desc: '',
      args: [],
    );
  }

  /// `Для безработных лиц старше 50 лет, не достигших пенсионного возраста`
  String get vacanciesSilverAgeHint {
    return Intl.message(
      'Для безработных лиц старше 50 лет, не достигших пенсионного возраста',
      name: 'vacanciesSilverAgeHint',
      desc: '',
      args: [],
    );
  }

  /// `вакансию`
  String get vacancyCount1 {
    return Intl.message(
      'вакансию',
      name: 'vacancyCount1',
      desc: '',
      args: [],
    );
  }

  /// `вакансии`
  String get vacancyCount2 {
    return Intl.message(
      'вакансии',
      name: 'vacancyCount2',
      desc: '',
      args: [],
    );
  }

  /// `вакансий`
  String get vacancyCount3 {
    return Intl.message(
      'вакансий',
      name: 'vacancyCount3',
      desc: '',
      args: [],
    );
  }

  /// `Карточка вакансии {vacancyName} \n\n{url}`
  String vacancyLink(Object vacancyName, Object url) {
    return Intl.message(
      'Карточка вакансии $vacancyName \n\n$url',
      name: 'vacancyLink',
      desc: '',
      args: [vacancyName, url],
    );
  }

  /// `Профессия, компания`
  String get vacancySearchHint {
    return Intl.message(
      'Профессия, компания',
      name: 'vacancySearchHint',
      desc: '',
      args: [],
    );
  }

  /// `Источник вакансии`
  String get vacancySource {
    return Intl.message(
      'Источник вакансии',
      name: 'vacancySource',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии по профессии`
  String get vacansysByProf {
    return Intl.message(
      'Вакансии по профессии',
      name: 'vacansysByProf',
      desc: '',
      args: [],
    );
  }

  /// `Вакансии по навыкам`
  String get vacansysBySkils {
    return Intl.message(
      'Вакансии по навыкам',
      name: 'vacansysBySkils',
      desc: '',
      args: [],
    );
  }

  /// `Действительно`
  String get valid {
    return Intl.message(
      'Действительно',
      name: 'valid',
      desc: '',
      args: [],
    );
  }

  /// `Enbek версия `
  String get version {
    return Intl.message(
      'Enbek версия ',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Посмотреть резюме`
  String get viewResume {
    return Intl.message(
      'Посмотреть резюме',
      name: 'viewResume',
      desc: '',
      args: [],
    );
  }

  /// `Просмотренные работодателем`
  String get viewedByEmployer {
    return Intl.message(
      'Просмотренные работодателем',
      name: 'viewedByEmployer',
      desc: '',
      args: [],
    );
  }

  /// `Просмотры`
  String get views {
    return Intl.message(
      'Просмотры',
      name: 'views',
      desc: '',
      args: [],
    );
  }

  /// `{views} просмотров`
  String viewsCount(Object views) {
    return Intl.message(
      '$views просмотров',
      name: 'viewsCount',
      desc: '',
      args: [views],
    );
  }

  /// `По истечении выбранного срока, резюме не будет отображаться на портале и попадет в архив. Вы сможете восстановить его из архива в личном кабинете`
  String get whenTimesEndsResumeWillUnvisible {
    return Intl.message(
      'По истечении выбранного срока, резюме не будет отображаться на портале и попадет в архив. Вы сможете восстановить его из архива в личном кабинете',
      name: 'whenTimesEndsResumeWillUnvisible',
      desc: '',
      args: [],
    );
  }

  /// `Условия труда`
  String get workCond {
    return Intl.message(
      'Условия труда',
      name: 'workCond',
      desc: '',
      args: [],
    );
  }

  /// `Стаж работы`
  String get workExp {
    return Intl.message(
      'Стаж работы',
      name: 'workExp',
      desc: '',
      args: [],
    );
  }

  /// `Стаж работы по желаемой должности`
  String get workExpForDesiredPosition {
    return Intl.message(
      'Стаж работы по желаемой должности',
      name: 'workExpForDesiredPosition',
      desc: '',
      args: [],
    );
  }

  /// `Тип занятости`
  String get workOper {
    return Intl.message(
      'Тип занятости',
      name: 'workOper',
      desc: '',
      args: [],
    );
  }

  /// `Место работы`
  String get workPlace {
    return Intl.message(
      'Место работы',
      name: 'workPlace',
      desc: '',
      args: [],
    );
  }

  /// `Так как вы указали стаж {years}, требуется добавить место работы`
  String workPlaceIsRequired(Object years) {
    return Intl.message(
      'Так как вы указали стаж $years, требуется добавить место работы',
      name: 'workPlaceIsRequired',
      desc: '',
      args: [years],
    );
  }

  /// `Рабочих мест`
  String get workPlaceNumber {
    return Intl.message(
      'Рабочих мест',
      name: 'workPlaceNumber',
      desc: '',
      args: [],
    );
  }

  /// `График работы`
  String get workSchedule {
    return Intl.message(
      'График работы',
      name: 'workSchedule',
      desc: '',
      args: [],
    );
  }

  /// `График работы`
  String get workSpec {
    return Intl.message(
      'График работы',
      name: 'workSpec',
      desc: '',
      args: [],
    );
  }

  /// `Неверный код`
  String get wrongPin {
    return Intl.message(
      'Неверный код',
      name: 'wrongPin',
      desc: '',
      args: [],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Да, использовать`
  String get yesUseIt {
    return Intl.message(
      'Да, использовать',
      name: 'yesUseIt',
      desc: '',
      args: [],
    );
  }

  /// `Вчера`
  String get yesterday {
    return Intl.message(
      'Вчера',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Вы согласились на собеседование`
  String get youAcceptInterview {
    return Intl.message(
      'Вы согласились на собеседование',
      name: 'youAcceptInterview',
      desc: '',
      args: [],
    );
  }

  /// `Вы отказались`
  String get youAreCanceled {
    return Intl.message(
      'Вы отказались',
      name: 'youAreCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Вы не авторизваны`
  String get youAreNotAuthorized {
    return Intl.message(
      'Вы не авторизваны',
      name: 'youAreNotAuthorized',
      desc: '',
      args: [],
    );
  }

  /// `Вы отказались от трудоустройства`
  String get youDeclineEmployment {
    return Intl.message(
      'Вы отказались от трудоустройства',
      name: 'youDeclineEmployment',
      desc: '',
      args: [],
    );
  }

  /// `Вы получили новое уведомление!`
  String get youGetNewNotification {
    return Intl.message(
      'Вы получили новое уведомление!',
      name: 'youGetNewNotification',
      desc: '',
      args: [],
    );
  }

  /// `Вы уже откликнулись`
  String get youHaveAlreadyReplied {
    return Intl.message(
      'Вы уже откликнулись',
      name: 'youHaveAlreadyReplied',
      desc: '',
      args: [],
    );
  }

  /// `Ваше обращение отправлено`
  String get youMessageSended {
    return Intl.message(
      'Ваше обращение отправлено',
      name: 'youMessageSended',
      desc: '',
      args: [],
    );
  }

  /// `Вы зарегистрированы в качестве лица, ищущего работу, в {city}.\n\nДля вас подобраны вакансии. Проявите активность в поиске работы и откликайтесь на подходящие для вас вакансии.`
  String youRegisteredAsLir(Object city) {
    return Intl.message(
      'Вы зарегистрированы в качестве лица, ищущего работу, в $city.\n\nДля вас подобраны вакансии. Проявите активность в поиске работы и откликайтесь на подходящие для вас вакансии.',
      name: 'youRegisteredAsLir',
      desc: '',
      args: [city],
    );
  }

  /// `Вы зарегистрированы в качестве безработного в центре занятости {city}.\n\nВы можете воспользоваться  перечисленными мерами при соответствии определенным критериям.`
  String youRegisteredAsUnemployee(Object city) {
    return Intl.message(
      'Вы зарегистрированы в качестве безработного в центре занятости $city.\n\nВы можете воспользоваться  перечисленными мерами при соответствии определенным критериям.',
      name: 'youRegisteredAsUnemployee',
      desc: '',
      args: [city],
    );
  }

  /// `Вы регистрируетесь в качестве лица, ищущего работу`
  String get youRegistrationAsLir {
    return Intl.message(
      'Вы регистрируетесь в качестве лица, ищущего работу',
      name: 'youRegistrationAsLir',
      desc: '',
      args: [],
    );
  }

  /// `Enbek будет подбирать для вас вакансии. Вы должны откликаться на подходящие вакансии и посещать собеседования по приглашению работодателей.\n\nЕсли через 3 (три) рабочих дня вы не трудоустроитесь, то Enbek проверит ваше право на регистрацию в качестве безработного и в случае подтверждения вы получите статус безработного.\n\nПосле этого вы сможете направить заявку на социальную выплату по потере работы и выбрать вакансии на временные рабочие места, субсидируемые государством.`
  String get youRegistrationAsLirBody {
    return Intl.message(
      'Enbek будет подбирать для вас вакансии. Вы должны откликаться на подходящие вакансии и посещать собеседования по приглашению работодателей.\n\nЕсли через 3 (три) рабочих дня вы не трудоустроитесь, то Enbek проверит ваше право на регистрацию в качестве безработного и в случае подтверждения вы получите статус безработного.\n\nПосле этого вы сможете направить заявку на социальную выплату по потере работы и выбрать вакансии на временные рабочие места, субсидируемые государством.',
      name: 'youRegistrationAsLirBody',
      desc: '',
      args: [],
    );
  }

  /// `Ваше обращение`
  String get yourMessage {
    return Intl.message(
      'Ваше обращение',
      name: 'yourMessage',
      desc: '',
      args: [],
    );
  }

  /// `Ваш номер телефона в Базе мобильных граждан (БМГ)`
  String get yourPhoneNumberInEnbek {
    return Intl.message(
      'Ваш номер телефона в Базе мобильных граждан (БМГ)',
      name: 'yourPhoneNumberInEnbek',
      desc: '',
      args: [],
    );
  }

  /// `Рекомендуемые навыки`
  String get recommendedSkils {
    return Intl.message(
      'Рекомендуемые навыки',
      name: 'recommendedSkils',
      desc: '',
      args: [],
    );
  }

  /// `Центр занятости на карте`
  String get businessCenterOnMap {
    return Intl.message(
      'Центр занятости на карте',
      name: 'businessCenterOnMap',
      desc: '',
      args: [],
    );
  }

  /// `Статус занятости {name}`
  String workStatus(Object name) {
    return Intl.message(
      'Статус занятости $name',
      name: 'workStatus',
      desc: '',
      args: [name],
    );
  }

  /// `активно`
  String get activeSemantics {
    return Intl.message(
      'активно',
      name: 'activeSemantics',
      desc: '',
      args: [],
    );
  }

  /// `не активно`
  String get inactiveSemantics {
    return Intl.message(
      'не активно',
      name: 'inactiveSemantics',
      desc: '',
      args: [],
    );
  }

  /// `Показать модальное окно с подсказкой по данному разделу`
  String get showModalWithTip {
    return Intl.message(
      'Показать модальное окно с подсказкой по данному разделу',
      name: 'showModalWithTip',
      desc: '',
      args: [],
    );
  }

  /// `Открыть окно часто задаваемых вопросов по разделу`
  String get showFaq {
    return Intl.message(
      'Открыть окно часто задаваемых вопросов по разделу',
      name: 'showFaq',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться резюме`
  String get shareResume {
    return Intl.message(
      'Поделиться резюме',
      name: 'shareResume',
      desc: '',
      args: [],
    );
  }

  /// `Открыть меню по управлению резюме`
  String get menuWithResumeManage {
    return Intl.message(
      'Открыть меню по управлению резюме',
      name: 'menuWithResumeManage',
      desc: '',
      args: [],
    );
  }

  /// `Услуги для граждан {name}`
  String citizenService(Object name) {
    return Intl.message(
      'Услуги для граждан $name',
      name: 'citizenService',
      desc: '',
      args: [name],
    );
  }

  /// `Сортировка вакансий`
  String get sortVacancies {
    return Intl.message(
      'Сортировка вакансий',
      name: 'sortVacancies',
      desc: '',
      args: [],
    );
  }

  /// `Добавить вакансию {name} в избранное`
  String addVacancyToFavorite(Object name) {
    return Intl.message(
      'Добавить вакансию $name в избранное',
      name: 'addVacancyToFavorite',
      desc: '',
      args: [name],
    );
  }

  /// `Быстрый фильтр`
  String get fastFilter {
    return Intl.message(
      'Быстрый фильтр',
      name: 'fastFilter',
      desc: '',
      args: [],
    );
  }

  /// `Поиск по профессии и компании, текстовое поле`
  String get searchSemantics {
    return Intl.message(
      'Поиск по профессии и компании, текстовое поле',
      name: 'searchSemantics',
      desc: '',
      args: [],
    );
  }

  /// `Иконка поиска`
  String get searchIcon {
    return Intl.message(
      'Иконка поиска',
      name: 'searchIcon',
      desc: '',
      args: [],
    );
  }

  /// `Переход на экран с фильтрами для вакансий`
  String get navigateToFilter {
    return Intl.message(
      'Переход на экран с фильтрами для вакансий',
      name: 'navigateToFilter',
      desc: '',
      args: [],
    );
  }

  /// `Добавить в избранное`
  String get addToFavorite {
    return Intl.message(
      'Добавить в избранное',
      name: 'addToFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться вакансией`
  String get shareVacancy {
    return Intl.message(
      'Поделиться вакансией',
      name: 'shareVacancy',
      desc: '',
      args: [],
    );
  }

  /// `Меню для вакансии`
  String get menuForVacancy {
    return Intl.message(
      'Меню для вакансии',
      name: 'menuForVacancy',
      desc: '',
      args: [],
    );
  }

  /// `Закрыть экран с фильтрами`
  String get closeFilterScreen {
    return Intl.message(
      'Закрыть экран с фильтрами',
      name: 'closeFilterScreen',
      desc: '',
      args: [],
    );
  }

  /// `Текстовое поле для поиска`
  String get searchField {
    return Intl.message(
      'Текстовое поле для поиска',
      name: 'searchField',
      desc: '',
      args: [],
    );
  }

  /// `Вы действительно хотите удалить заявку?`
  String get lirDeleteCon {
    return Intl.message(
      'Вы действительно хотите удалить заявку?',
      name: 'lirDeleteCon',
      desc: '',
      args: [],
    );
  }

  /// `Бастау Бизнес`
  String get bastauBiz {
    return Intl.message(
      'Бастау Бизнес',
      name: 'bastauBiz',
      desc: '',
      args: [],
    );
  }

  /// `Контактные данные`
  String get contactData {
    return Intl.message(
      'Контактные данные',
      name: 'contactData',
      desc: '',
      args: [],
    );
  }

  /// `Получение данных`
  String get dataRetrieval {
    return Intl.message(
      'Получение данных',
      name: 'dataRetrieval',
      desc: '',
      args: [],
    );
  }

  /// `Вопросы и ответы`
  String get faq {
    return Intl.message(
      'Вопросы и ответы',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Общие сведения`
  String get generalInfo {
    return Intl.message(
      'Общие сведения',
      name: 'generalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Инспекции`
  String get inspections {
    return Intl.message(
      'Инспекции',
      name: 'inspections',
      desc: '',
      args: [],
    );
  }

  /// `Документ, удостоверяющий личность`
  String get idDocument {
    return Intl.message(
      'Документ, удостоверяющий личность',
      name: 'idDocument',
      desc: '',
      args: [],
    );
  }

  /// `Последняя дата визита`
  String get lastVisitDate {
    return Intl.message(
      'Последняя дата визита',
      name: 'lastVisitDate',
      desc: '',
      args: [],
    );
  }

  /// `Мой грант`
  String get myGrant {
    return Intl.message(
      'Мой грант',
      name: 'myGrant',
      desc: '',
      args: [],
    );
  }

  /// `Личные данные`
  String get personalData {
    return Intl.message(
      'Личные данные',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `Данные профиля`
  String get profileData {
    return Intl.message(
      'Данные профиля',
      name: 'profileData',
      desc: '',
      args: [],
    );
  }

  /// `Поддержка`
  String get support {
    return Intl.message(
      'Поддержка',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Сертификат обучения Бастау Бизнес`
  String get educationCert {
    return Intl.message(
      'Сертификат обучения Бастау Бизнес',
      name: 'educationCert',
      desc: '',
      args: [],
    );
  }

  /// `Номер сертификата`
  String get certNum {
    return Intl.message(
      'Номер сертификата',
      name: 'certNum',
      desc: '',
      args: [],
    );
  }

  /// `Действителен`
  String get isValid {
    return Intl.message(
      'Действителен',
      name: 'isValid',
      desc: '',
      args: [],
    );
  }

  /// `У Вас имеется действующий сертификат по обучению основам предпринимательства Бастау Бизнес. Вы можете подать заявку на получение гранта в случае соответствия необходимым условиям.\n\nСвой сертификат Вы можете скачать в личном кабинете на платформе`
  String get alreadyHaveCert {
    return Intl.message(
      'У Вас имеется действующий сертификат по обучению основам предпринимательства Бастау Бизнес. Вы можете подать заявку на получение гранта в случае соответствия необходимым условиям.\n\nСвой сертификат Вы можете скачать в личном кабинете на платформе',
      name: 'alreadyHaveCert',
      desc: '',
      args: [],
    );
  }

  /// `Сертификата пока нет`
  String get noCert {
    return Intl.message(
      'Сертификата пока нет',
      name: 'noCert',
      desc: '',
      args: [],
    );
  }

  /// `После прохождения обучения в Бастау Бизнес здесь появится ваш сертификат`
  String get certAfterCheck {
    return Intl.message(
      'После прохождения обучения в Бастау Бизнес здесь появится ваш сертификат',
      name: 'certAfterCheck',
      desc: '',
      args: [],
    );
  }

  /// `Пройти проверку`
  String get startCheck {
    return Intl.message(
      'Пройти проверку',
      name: 'startCheck',
      desc: '',
      args: [],
    );
  }

  /// `Проверить статус`
  String get checkStatus {
    return Intl.message(
      'Проверить статус',
      name: 'checkStatus',
      desc: '',
      args: [],
    );
  }

  /// `на соответствие условиям обучения\nБастау Бизнес`
  String get forRelevant {
    return Intl.message(
      'на соответствие условиям обучения\nБастау Бизнес',
      name: 'forRelevant',
      desc: '',
      args: [],
    );
  }

  /// `Категории занятости`
  String get busyCategory {
    return Intl.message(
      'Категории занятости',
      name: 'busyCategory',
      desc: '',
      args: [],
    );
  }

  /// `** - данные категории занятости проверяются автоматически в информационных системах государственных органов`
  String get dateForStatusCheckAutomatically {
    return Intl.message(
      '** - данные категории занятости проверяются автоматически в информационных системах государственных органов',
      name: 'dateForStatusCheckAutomatically',
      desc: '',
      args: [],
    );
  }

  /// `Cоглашаюсь на сбор и обработку персональных данных`
  String get agreeForDataCollection {
    return Intl.message(
      'Cоглашаюсь на сбор и обработку персональных данных',
      name: 'agreeForDataCollection',
      desc: '',
      args: [],
    );
  }

  /// `Проверить`
  String get check {
    return Intl.message(
      'Проверить',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные условия`
  String get additionalTerms {
    return Intl.message(
      'Дополнительные условия',
      name: 'additionalTerms',
      desc: '',
      args: [],
    );
  }

  /// `Относитесь ли Вы к какой-либо из этих категорий занятости?`
  String get selectCategory {
    return Intl.message(
      'Относитесь ли Вы к какой-либо из этих категорий занятости?',
      name: 'selectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо выбрать категорию занятости`
  String get chooseCategory {
    return Intl.message(
      'Необходимо выбрать категорию занятости',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Для того чтобы пройти проверку, вам необходимо иметь установленным приложение`
  String get egovForCheck {
    return Intl.message(
      'Для того чтобы пройти проверку, вам необходимо иметь установленным приложение',
      name: 'egovForCheck',
      desc: '',
      args: [],
    );
  }

  /// `Проверка успешно пройдена`
  String get checkSuccess {
    return Intl.message(
      'Проверка успешно пройдена',
      name: 'checkSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Записаться на курс`
  String get checkInForCourse {
    return Intl.message(
      'Записаться на курс',
      name: 'checkInForCourse',
      desc: '',
      args: [],
    );
  }

  /// `Посмотреть результаты проверки`
  String get viewCheckResult {
    return Intl.message(
      'Посмотреть результаты проверки',
      name: 'viewCheckResult',
      desc: '',
      args: [],
    );
  }

  /// `Пройти проверку повторно`
  String get checkAgain {
    return Intl.message(
      'Пройти проверку повторно',
      name: 'checkAgain',
      desc: '',
      args: [],
    );
  }

  /// ` Повторить проверку можно будет через:`
  String get againstCheckAfter {
    return Intl.message(
      ' Повторить проверку можно будет через:',
      name: 'againstCheckAfter',
      desc: '',
      args: [],
    );
  }

  /// `В случае если вы в течение этого времени не запишетесь на курс обучения основам предпринимательства Бастау Бизнес, проверку статуса нужно будет пройти повторно.`
  String get doNotSignForCourse {
    return Intl.message(
      'В случае если вы в течение этого времени не запишетесь на курс обучения основам предпринимательства Бастау Бизнес, проверку статуса нужно будет пройти повторно.',
      name: 'doNotSignForCourse',
      desc: '',
      args: [],
    );
  }

  /// `Перейти к курсу`
  String get goToCourse {
    return Intl.message(
      'Перейти к курсу',
      name: 'goToCourse',
      desc: '',
      args: [],
    );
  }

  /// `Проверка завершена`
  String get checkFinished {
    return Intl.message(
      'Проверка завершена',
      name: 'checkFinished',
      desc: '',
      args: [],
    );
  }

  /// `Повторить проверку`
  String get newCheck {
    return Intl.message(
      'Повторить проверку',
      name: 'newCheck',
      desc: '',
      args: [],
    );
  }

  /// `Вы не соответствуете всем критериям для прохождения обучения. Повторить проверку можно будет через:`
  String get checkInDangerAfter {
    return Intl.message(
      'Вы не соответствуете всем критериям для прохождения обучения. Повторить проверку можно будет через:',
      name: 'checkInDangerAfter',
      desc: '',
      args: [],
    );
  }

  /// `Укажите ваш уровень образования`
  String get eduLevel {
    return Intl.message(
      'Укажите ваш уровень образования',
      name: 'eduLevel',
      desc: '',
      args: [],
    );
  }

  /// `Вы успешно записаны на курс Бастау Бизнес`
  String get enrollSuccess {
    return Intl.message(
      'Вы успешно записаны на курс Бастау Бизнес',
      name: 'enrollSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Проверка еще не завершена`
  String get checkIncompleted {
    return Intl.message(
      'Проверка еще не завершена',
      name: 'checkIncompleted',
      desc: '',
      args: [],
    );
  }

  /// `Посмотреть`
  String get view {
    return Intl.message(
      'Посмотреть',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Обучайтесь по проекту «Бастау Бизнес»`
  String get eduOnProject {
    return Intl.message(
      'Обучайтесь по проекту «Бастау Бизнес»',
      name: 'eduOnProject',
      desc: '',
      args: [],
    );
  }

  /// `Пройдите базовые курсы подготовки предпринимателей`
  String get basicCourses {
    return Intl.message(
      'Пройдите базовые курсы подготовки предпринимателей',
      name: 'basicCourses',
      desc: '',
      args: [],
    );
  }

  /// `Получите государственный грант`
  String get getGosGrant {
    return Intl.message(
      'Получите государственный грант',
      name: 'getGosGrant',
      desc: '',
      args: [],
    );
  }

  /// `Реализуйте свою бизнес-идею за счет средств гранта`
  String get realizeIdea {
    return Intl.message(
      'Реализуйте свою бизнес-идею за счет средств гранта',
      name: 'realizeIdea',
      desc: '',
      args: [],
    );
  }

  /// `{count} поток`
  String flow(Object count) {
    return Intl.message(
      '$count поток',
      name: 'flow',
      desc: '',
      args: [count],
    );
  }

  /// `Количество грантов на поток`
  String get grantCount {
    return Intl.message(
      'Количество грантов на поток',
      name: 'grantCount',
      desc: '',
      args: [],
    );
  }

  /// `Прием заявок завершен`
  String get applicationsClosed {
    return Intl.message(
      'Прием заявок завершен',
      name: 'applicationsClosed',
      desc: '',
      args: [],
    );
  }

  /// `Расписание грантов`
  String get grantSchedule {
    return Intl.message(
      'Расписание грантов',
      name: 'grantSchedule',
      desc: '',
      args: [],
    );
  }

  /// `Выберите место жительства постоянной или временной регистрации`
  String get selectLivingPlace {
    return Intl.message(
      'Выберите место жительства постоянной или временной регистрации',
      name: 'selectLivingPlace',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать город и район`
  String get selectCitiAndRegion {
    return Intl.message(
      'Выбрать город и район',
      name: 'selectCitiAndRegion',
      desc: '',
      args: [],
    );
  }

  /// `Весь Казахстан`
  String get wholeKz {
    return Intl.message(
      'Весь Казахстан',
      name: 'wholeKz',
      desc: '',
      args: [],
    );
  }

  /// `Выберите город`
  String get selectCity {
    return Intl.message(
      'Выберите город',
      name: 'selectCity',
      desc: '',
      args: [],
    );
  }

  /// `Прием заявок на предоставление грантов`
  String get applicationAccept {
    return Intl.message(
      'Прием заявок на предоставление грантов',
      name: 'applicationAccept',
      desc: '',
      args: [],
    );
  }

  /// `Выберите регион`
  String get selectRegion {
    return Intl.message(
      'Выберите регион',
      name: 'selectRegion',
      desc: '',
      args: [],
    );
  }

  /// `По выбранному региону грантов не найдено`
  String get grantsEmpty {
    return Intl.message(
      'По выбранному региону грантов не найдено',
      name: 'grantsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Бизнес-план`
  String get businessPlan {
    return Intl.message(
      'Бизнес-план',
      name: 'businessPlan',
      desc: '',
      args: [],
    );
  }

  /// `Заявки на грант`
  String get grantApplications {
    return Intl.message(
      'Заявки на грант',
      name: 'grantApplications',
      desc: '',
      args: [],
    );
  }

  /// `Банковские реквизиты`
  String get bankDetails {
    return Intl.message(
      'Банковские реквизиты',
      name: 'bankDetails',
      desc: '',
      args: [],
    );
  }

  /// `Договор`
  String get contract {
    return Intl.message(
      'Договор',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Отчеты`
  String get reports {
    return Intl.message(
      'Отчеты',
      name: 'reports',
      desc: '',
      args: [],
    );
  }

  /// `Возврат средств`
  String get moneyBack {
    return Intl.message(
      'Возврат средств',
      name: 'moneyBack',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
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
