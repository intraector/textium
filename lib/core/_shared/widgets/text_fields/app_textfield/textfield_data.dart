part of 'app_textfield.dart';

class AppTextfieldData {
  AppTextfieldData({
    this.initial,
    bool enabled = true,
    bool obscureText = false,
    this.onChanged,
    this.onTap,
    this.onSubmit,
    this.onFocusLost,
    this.hintText,
    this.textAlign,
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.maxLength,
    this.validator,
    this.maxLines,
    this.minLines,
    this.isVisibleObscureButton = false,
    FocusNode? nextFocus,
    this.readonly = false,
    this.expands = false,
    this.style,
    this.hintStyle,
    this.visibleErrors = true,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixText,
    this.textCapitalization = TextCapitalization.sentences,
    Duration? debounce,
    this.autofocus = false,
    this.validateOnFocusLost = true,
  })  : _obscureText = obscureText,
        _nextFocus = nextFocus,
        _enabled = enabled {
    controller = TextEditingController(text: initial);
    scrollController = ScrollController();
    errors.addListener(_errorsListener);
    _debounce = Debounce(duration: debounce);
  }

  final List<String> Function(String)? validator;
  final void Function(String value)? onChanged;
  final void Function(BuildContext context, TextEditingController controller)? onTap;
  final void Function(String)? onSubmit;
  final void Function(String)? onFocusLost;
  final Widget Function(Color? color)? prefixIcon;
  final Widget Function(Color? color)? suffixIcon;

  final bool autofocus;
  final bool expands;
  bool autovalidationOn = false;
  late final TextEditingController controller;
  late final ScrollController scrollController;
  final errors = ValueNotifier<List<String>>(const []);
  final focusNode = FocusNode();
  final TextStyle? hintStyle;
  final String? hintText;
  final String? initial;
  final List<TextInputFormatter>? inputFormatters;
  final bool isVisibleObscureButton;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final bool readonly;
  final TextStyle? style;
  // final Widget? suffixIcon;
  final String? suffixText;
  final TextAlign? textAlign;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final bool visibleErrors;

  late final Debounce? _debounce;
  late bool _enabled;
  late final _isValidated = ValueNotifier<bool?>(null);
  FocusNode? _nextFocus;
  late bool _obscureText;
  bool validateOnFocusLost;

  FocusNode? get nextFocus => _nextFocus;

  set nextFocus(FocusNode? value) {
    _nextFocus = value;
    rebuild();
  }

  bool get obscureText => _obscureText;

  void rebuild() => errors.value = errors.value.toList();

  void showErrors(List<String>? messages) {
    if (messages == null) return;
    errors.value = messages;
  }

  void get clearErrors {
    errors.value = const [];
    rebuild();
  }

  set obscureText(bool value) {
    _obscureText = value;
    rebuild();
  }

  ValueListenable<bool?> get isValidated => _isValidated;

  bool get enabled => _enabled;

  set enabled(bool value) {
    _enabled = value;
    rebuild();
  }

  bool get validate {
    errors.value = validator?.call(controller.text) ?? const [];
    return errors.value.isEmpty;
  }

  void dispose() {
    try {
      focusNode.dispose();
      errors
        ..removeListener(_errorsListener)
        ..dispose();
      _isValidated.dispose();
      controller.dispose();
      scrollController.dispose();
    } catch (e) {
      //to avoid "A FocusNode was used after being disposed." error
      //which occurs occasionally when the page is disposed
    }
  }

  void get reset {
    controller.text = initial ?? '';
    scrollController.jumpTo(0);
    errors.value = const [];
    rebuild();
  }

  void _errorsListener() {
    _isValidated.value = errors.value.isEmpty;
  }
}
