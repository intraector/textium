// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(duration) => "Подождите ${duration} сек.";

  static String m1(address) => "Отправили код подтверждения на\n${address}";

  static String m2(timeout) => "Запросить код повторно через ${timeout} сек";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("О приложении"),
        "addProject": MessageLookupByLibrary.simpleMessage("Добавить проект"),
        "allServices": MessageLookupByLibrary.simpleMessage("Все сервисы"),
        "allow": MessageLookupByLibrary.simpleMessage("Разрешить"),
        "appExitConfirmation": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите выйти?"),
        "appLogo": MessageLookupByLibrary.simpleMessage("Логотип приложения"),
        "biometrics": MessageLookupByLibrary.simpleMessage(
            "Вход по отпечатку пальца и Face ID"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "changeEmail": MessageLookupByLibrary.simpleMessage("Изменить email"),
        "changeFastAccessCode": MessageLookupByLibrary.simpleMessage(
            "Изменить код быстрого доступа"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Изменить пароль"),
        "changePhoneNumber":
            MessageLookupByLibrary.simpleMessage("Изменить номер телефона"),
        "clear": MessageLookupByLibrary.simpleMessage("Очистить"),
        "close": MessageLookupByLibrary.simpleMessage("Закрыть"),
        "closeModal":
            MessageLookupByLibrary.simpleMessage("Закрыть диалоговое окно"),
        "closePermAlert": MessageLookupByLibrary.simpleMessage(
            "Закрыть окно с настройкой кода доступа"),
        "confPassword":
            MessageLookupByLibrary.simpleMessage("Подтвердить пароль"),
        "confirm": MessageLookupByLibrary.simpleMessage("Подтвердить"),
        "createAccount":
            MessageLookupByLibrary.simpleMessage("Регистрация соискателя"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Текущий пароль"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailCodeLabel":
            MessageLookupByLibrary.simpleMessage("Введите код из письма"),
        "emailSaved": MessageLookupByLibrary.simpleMessage("Email сохранен"),
        "enterCodeFromSms":
            MessageLookupByLibrary.simpleMessage("Введите код из смс"),
        "enterEmailCode":
            MessageLookupByLibrary.simpleMessage("Введите код из письма"),
        "enterFastAccessCode": MessageLookupByLibrary.simpleMessage(
            "Введите код быстрого доступа"),
        "enterPincode":
            MessageLookupByLibrary.simpleMessage("Ввести код быстрого доступа"),
        "enterPincodeAgain":
            MessageLookupByLibrary.simpleMessage("Повторите код"),
        "enterSmsCode":
            MessageLookupByLibrary.simpleMessage("Введите код из смс"),
        "enterText": MessageLookupByLibrary.simpleMessage("Введите текст"),
        "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
        "exitFromAccount":
            MessageLookupByLibrary.simpleMessage("Выход из аккаунта"),
        "find": MessageLookupByLibrary.simpleMessage("Найти"),
        "forgotPassword": MessageLookupByLibrary.simpleMessage("Забыли пароль"),
        "forgotPin": MessageLookupByLibrary.simpleMessage(
            "Забыли код быстрого доступа?"),
        "forgotPinHint": MessageLookupByLibrary.simpleMessage(
            "Для сброса кода быстрого доступа необходимо выйти из аккаунта и авторизоваться снова."),
        "fullName": MessageLookupByLibrary.simpleMessage("Имя и фамилия"),
        "haveAccount": MessageLookupByLibrary.simpleMessage("Есть аккаунт"),
        "help": MessageLookupByLibrary.simpleMessage("Помощь"),
        "iconForPassword": MessageLookupByLibrary.simpleMessage(
            "Иконка показать или скрыть пароль"),
        "iin": MessageLookupByLibrary.simpleMessage("ИИН"),
        "iinConfirmation":
            MessageLookupByLibrary.simpleMessage("Подтверждение ИИН"),
        "iinConfirmationHint": MessageLookupByLibrary.simpleMessage(
            "Необходимо подтвердить ваш ИИН"),
        "iinIsMine": MessageLookupByLibrary.simpleMessage("Да, это мой ИИН"),
        "iinIsNotMine":
            MessageLookupByLibrary.simpleMessage("Нет, указать другой ИИН"),
        "iinIsYours": MessageLookupByLibrary.simpleMessage("Это ваш ИИН"),
        "inputEmail":
            MessageLookupByLibrary.simpleMessage("Введите новый email"),
        "inputErrorEmailIncorrect":
            MessageLookupByLibrary.simpleMessage("Проверьте email"),
        "inputErrorEmailIsEmpty":
            MessageLookupByLibrary.simpleMessage("Введите email"),
        "inputErrorGeneral":
            MessageLookupByLibrary.simpleMessage("Проверьте данные"),
        "inputErrorIin":
            MessageLookupByLibrary.simpleMessage("Некорректный ИИН"),
        "inputErrorPasswordIsEmpty":
            MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "inputErrorPasswordIsShort":
            MessageLookupByLibrary.simpleMessage("Минимум 8 символов"),
        "inputErrorPasswordMustContainDigit":
            MessageLookupByLibrary.simpleMessage("Минимум одна цифра"),
        "inputErrorPasswordMustContainSpecSymbol":
            MessageLookupByLibrary.simpleMessage(
                "Минимум один специальный символ (%, \$, @, &, *, #, ^ и т.д.)"),
        "inputErrorPhoneIncorrect":
            MessageLookupByLibrary.simpleMessage("Проверьте номер телефона"),
        "inputErrorPhoneIsEmpty":
            MessageLookupByLibrary.simpleMessage("Введите номер телефона"),
        "inputIin": MessageLookupByLibrary.simpleMessage("Введите ИИН"),
        "inputPhone": MessageLookupByLibrary.simpleMessage(
            "Введите новый номер телефона"),
        "interfaceLang":
            MessageLookupByLibrary.simpleMessage("Язык интерфейса"),
        "kazakh": MessageLookupByLibrary.simpleMessage("Казахский"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "localAuthLocalizedReason": MessageLookupByLibrary.simpleMessage(
            "Используйте отпечаток пальца или пароль"),
        "localAuthNotEnrolled": MessageLookupByLibrary.simpleMessage(
            "Защита паролем не установлена в настройках вашего устройстве"),
        "localAuthPassCodeNotSet": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, установите пароль в настройках вашего устройства"),
        "localAuthPermanentlyLocked": MessageLookupByLibrary.simpleMessage(
            "Слишком много попыток, требуется разблокировка"),
        "localAuthSignInTitle":
            MessageLookupByLibrary.simpleMessage("Требуется авторизация"),
        "localAuthTooManyAttempts": MessageLookupByLibrary.simpleMessage(
            "Слишком много попыток, попробуйте позже"),
        "localAuthUnavailable": MessageLookupByLibrary.simpleMessage(
            "Биометрия недоступна, попробуйте позже"),
        "main": MessageLookupByLibrary.simpleMessage("Главная"),
        "mainMenuHint":
            MessageLookupByLibrary.simpleMessage("Показать главное меню"),
        "more": MessageLookupByLibrary.simpleMessage("Подробнее"),
        "navigateToNotificationsScreen": MessageLookupByLibrary.simpleMessage(
            "Перейти на экран уведомлений"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Новый пароль"),
        "no": MessageLookupByLibrary.simpleMessage("Нет"),
        "noAccount": MessageLookupByLibrary.simpleMessage("Нет аккаунта"),
        "noData": MessageLookupByLibrary.simpleMessage("Нет данных"),
        "noThanks": MessageLookupByLibrary.simpleMessage("Нет, спасибо"),
        "notRegisteredInBmgSubtitle": MessageLookupByLibrary.simpleMessage(
            "Для получения услуги вам необходимо зарегистрироваться в БМГ"),
        "notRegisteredInBmgTitle": MessageLookupByLibrary.simpleMessage(
            "Вы не зарегистрированы в Базе мобильных граждан"),
        "notifs": MessageLookupByLibrary.simpleMessage("Уведомления"),
        "numberIsMissing":
            MessageLookupByLibrary.simpleMessage("Номер отсутствует"),
        "okThanks": MessageLookupByLibrary.simpleMessage("Понятно, спасибо"),
        "okay": MessageLookupByLibrary.simpleMessage("ОК"),
        "or": MessageLookupByLibrary.simpleMessage("Или"),
        "passwordSaved":
            MessageLookupByLibrary.simpleMessage("Пароль сохранен"),
        "passwordsDontMatch":
            MessageLookupByLibrary.simpleMessage("Пароли не совпадают"),
        "paste": MessageLookupByLibrary.simpleMessage("Вставить"),
        "permissionsRequestHint": MessageLookupByLibrary.simpleMessage(
            "Разрешить доступ можно в настройках приватности на вашем устройстве"),
        "permissionsRequestPhoto": MessageLookupByLibrary.simpleMessage(
            "Приложению требуется разрешение на доступ к фото"),
        "permissionsRequestPushNotifs": MessageLookupByLibrary.simpleMessage(
            "Нет разрешения на доступ к уведомлениям"),
        "permissionsRequestStorage": MessageLookupByLibrary.simpleMessage(
            "Приложению требуется разрешение на доступ к файлам"),
        "phone": MessageLookupByLibrary.simpleMessage("Телефон"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Номер телефона"),
        "phoneNumberSaved":
            MessageLookupByLibrary.simpleMessage("Номер телефона сохранен"),
        "pinDoesntMatch":
            MessageLookupByLibrary.simpleMessage("Коды не совпадают"),
        "pincodeErrorTimeout": m0,
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "projectName": MessageLookupByLibrary.simpleMessage("Название проекта"),
        "projectNotFound":
            MessageLookupByLibrary.simpleMessage("Проект не найден"),
        "projects": MessageLookupByLibrary.simpleMessage("Проекты"),
        "projectsEmpty":
            MessageLookupByLibrary.simpleMessage("Проектов пока нет"),
        "pushNotifs":
            MessageLookupByLibrary.simpleMessage("Push - уведомления"),
        "pushNotifsErrorCantSwitchOff": MessageLookupByLibrary.simpleMessage(
            "Не удалось отключить уведомления"),
        "pushNotifsErrorCantSwitchOn": MessageLookupByLibrary.simpleMessage(
            "Не удалось включить уведомления"),
        "recoverPassword":
            MessageLookupByLibrary.simpleMessage("Восстановить пароль"),
        "remove": MessageLookupByLibrary.simpleMessage("Удалить"),
        "removeAccount":
            MessageLookupByLibrary.simpleMessage("Удалить аккаунт"),
        "removeProjectConfirm": MessageLookupByLibrary.simpleMessage(
            "Удалить проект безвозвратно?"),
        "russian": MessageLookupByLibrary.simpleMessage("Русский"),
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "search": MessageLookupByLibrary.simpleMessage("Поиск"),
        "security": MessageLookupByLibrary.simpleMessage("Безопасность"),
        "securityPolicy":
            MessageLookupByLibrary.simpleMessage("Политика безопасности"),
        "select": MessageLookupByLibrary.simpleMessage("Выбрать"),
        "sendCode": MessageLookupByLibrary.simpleMessage("Отправить код"),
        "sendSmsCode":
            MessageLookupByLibrary.simpleMessage("Отправить смс-код"),
        "sendSmsForBmgPhone": MessageLookupByLibrary.simpleMessage(
            "Отправить смс-код на номер телефона, зарегистрированный в БМГ"),
        "sentCodeTo": m1,
        "setFastAccessCode": MessageLookupByLibrary.simpleMessage(
            "Установите код быстрого доступа"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "signin": MessageLookupByLibrary.simpleMessage("Войти"),
        "signinAs": MessageLookupByLibrary.simpleMessage("Войти как"),
        "signinViaBmg": MessageLookupByLibrary.simpleMessage("Войти через БМГ"),
        "signinWithApple":
            MessageLookupByLibrary.simpleMessage("Войти с Apple"),
        "signinWithFacebook":
            MessageLookupByLibrary.simpleMessage("Войти с Facebook"),
        "signinWithGoogle":
            MessageLookupByLibrary.simpleMessage("Войти с Google"),
        "signout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "signoutOfAccount":
            MessageLookupByLibrary.simpleMessage("Выйти из аккаунта"),
        "signup": MessageLookupByLibrary.simpleMessage("Зарегистрироваться"),
        "smsCodeRequest": MessageLookupByLibrary.simpleMessage("Запросить код"),
        "smsCodeRequestTimeout": m2,
        "smsCodeTooManyAttemts": MessageLookupByLibrary.simpleMessage(
            "Слишком много попыток.\nПожалуйста, подождите"),
        "somethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Что-то пошло не так"),
        "textField": MessageLookupByLibrary.simpleMessage("Текстовое поле"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Попробовать снова"),
        "use": MessageLookupByLibrary.simpleMessage("Использовать"),
        "useAccessCode": MessageLookupByLibrary.simpleMessage(
            "Использовать код быстрого доступа"),
        "useFaceId": MessageLookupByLibrary.simpleMessage(
            "Разрешить вход по отпечатку пальца и Face ID?"),
        "useFastAccessCode": MessageLookupByLibrary.simpleMessage(
            "Использовать код быстрого доступа"),
        "useFingerprints": MessageLookupByLibrary.simpleMessage(
            "Разрешить вход по отпечатку пальца?"),
        "usePincode": MessageLookupByLibrary.simpleMessage(
            "Использовать код быстрого доступа?"),
        "userAgreement":
            MessageLookupByLibrary.simpleMessage("Пользовательское соглашение"),
        "userLicenseAgree1":
            MessageLookupByLibrary.simpleMessage("Cоглашаюсь с условиями"),
        "userLicenseAgree2": MessageLookupByLibrary.simpleMessage(
            "Пользовательского соглашения"),
        "version": MessageLookupByLibrary.simpleMessage("Версия"),
        "withEmail": MessageLookupByLibrary.simpleMessage("По email"),
        "withPhone": MessageLookupByLibrary.simpleMessage("По мобильному"),
        "wrongCode": MessageLookupByLibrary.simpleMessage("Неверный код"),
        "yourPhoneNumberInBmg": MessageLookupByLibrary.simpleMessage(
            "Ваш номер телефона в Базе мобильных граждан (БМГ)")
      };
}
