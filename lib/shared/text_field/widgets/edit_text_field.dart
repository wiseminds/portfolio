import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/shared/responsive/models/responsive_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// an edit text widget
/// to use the phone number feature you must provide a [CountryProvider] above this widget
class EditTextField extends StatefulWidget {
  const EditTextField({
    Key? key,
    this.text = '',
    this.hint,
    this.keyboardType,
    this.onFieldSubmitted,
    this.validator,
    this.label,
    this.leading,
    this.lines = 1,
    this.minLines,
    this.isPhoneNumber = false,
    this.prefixIcon,
    this.enabled = true,
    this.isRequired = false,
    this.onChanged,
    this.focusNode,
    this.autoFocus = false,
    this.maxLength,
    this.obscureText = false,
    this.dateMode = false,
    this.showCounter = false,
    this.autofillHints,
    this.fillColor,
    this.filled = false,
    this.side,
    this.radius,
    this.textColor,
    this.enableSuggestions = true,
    this.textInputAction,
    this.margin,
    this.helperText,
    this.header,
    this.errorStyle,
    this.prefixConstraintsX,
    this.inputformatters,
    this.textCapitalization,
    this.suffix,
    this.errorText,
    this.suffixConstraints,
    this.toolbarOptions,
  }) : super(key: key);

  final ToolbarOptions? toolbarOptions;

  final List<String>? autofillHints;
  final bool autoFocus, dateMode, enabled;
  final TextStyle? errorStyle;
  final FocusNode? focusNode;
  final String? header;
  final String? errorText;
  final String? hint, helperText;
  final List<TextInputFormatter>? inputformatters;
  final bool isPhoneNumber, isRequired;
  final TextInputType? keyboardType;
  final String? label;
  final bool enableSuggestions;
  final Widget? leading, suffix;
  final int? lines;
  final EdgeInsets? margin;
  final int? maxLength;
  final int? minLines;
  final bool obscureText, filled;
  final Widget? prefixIcon;
  final double? prefixConstraintsX;
  final double? suffixConstraints;
  final double? radius;
  final bool showCounter;
  final BorderSide? side;
  final String? text;
  final Color? fillColor, textColor;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;

  @override
  EditTextFieldState createState() => EditTextFieldState();

  final void Function(String)? onFieldSubmitted;

  final void Function(String)? onChanged;

  final String? Function(String?)? validator;
}

class EditTextFieldState extends State<EditTextField> {
  late TextEditingController controller;

  String dialCode = '+234';
  late FocusNode focusNode;
  final String identifier = UniqueKey().toString();
  late GlobalKey<FormFieldState> key;
  bool? showText;

  AutovalidateMode autoValidate = AutovalidateMode.disabled;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (key.currentState?.hasError == true &&
        autoValidate == AutovalidateMode.disabled) {
      autoValidate = AutovalidateMode.onUserInteraction;
      _listener();
    }
  }

  @override
  void dispose() {
    // AutofillGroup.of(context).unRegister(identifier);
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // print(widget.text);
    // print(widget.isPhoneNumber);
    String text = widget.text ?? '';
    if (widget.isPhoneNumber && text.isNotEmpty) {
      // dialCode = text.split(':').length > 1 ? text.split(':').first : '+234';
      // text = text.split(':').length > 1 ? text.split(':').last : text;

      // if (text.startsWith('+234')) text = '0${text.split('+234').last}';
      // if (text.startsWith('234')) text = '0${text.split('234').last}';
    }
    key = GlobalKey(debugLabel: identifier);
    controller = TextEditingController(text: text);
    focusNode = widget.focusNode ?? FocusNode();
    super.initState();
    controller.addListener(_listener);

    focusNode.addListener(() {
      if (!(focusNode.hasFocus) && autoValidate == AutovalidateMode.disabled) {
        autoValidate = AutovalidateMode.onUserInteraction;
        _listener();
      }
    });
  }

  _listener() {
    if (autoValidate != AutovalidateMode.disabled) key.currentState?.validate();
    setState(() {});
  }

  bool validate() {
    setState(() {});
    return key.currentState?.validate() ?? false;
  }

  void value(String val) {
    controller.value = TextEditingValue(
        text: val,
        selection:
            TextSelection.fromPosition(TextPosition(offset: val.length)));
  }

  String get text => widget.isPhoneNumber ? _getPhoneNumber() : controller.text;

  String _getPhoneNumber() {
    String number = controller.text;
    if (widget.isPhoneNumber && number.startsWith('0')) {
      number = number.replaceRange(0, 1, '');
      // controller.text = number;
    }

    return '$dialCode:$number';
  }

  void _toggleVisibility() {
    if (showText != null) {
      setState(() {
        showText = null;
      });
      return;
    }
    setState(() {
      showText = false;
    });

    Future.delayed(const Duration(seconds: 3), () {
      if (showText != null) {
        setState(() {
          showText = null;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.header != null)
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 8.0),
              child: Text.rich(TextSpan(
                  text: widget.header ?? '',
                  style: Theme.of(context).textTheme.bodyText2,
                  children: [
                    if (widget.isRequired)
                      const TextSpan(
                          text: ' *', style: TextStyle(color: Colors.red))
                  ])),
            ),
          Builder(
            builder: (c) => TextFormField(
                key: key,
                autovalidateMode: autoValidate,
                controller: controller,
                enableSuggestions: widget.enableSuggestions,
                toolbarOptions: widget.toolbarOptions ??
                    const ToolbarOptions(
                        copy: true, cut: true, paste: true, selectAll: true),
                obscureText: showText ?? widget.obscureText,
                autofocus: widget.autoFocus,
                inputFormatters: widget.inputformatters,
                focusNode: focusNode,
                maxLines: widget.lines,
                enabled: widget.enabled,
                minLines: widget.minLines,
                textCapitalization:
                    widget.textCapitalization ?? TextCapitalization.none,
                autofillHints: widget.enabled ? widget.autofillHints : null,
                textInputAction: widget.textInputAction,
                maxLength: widget.maxLength,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w500,
                    letterSpacing: .1,
                    fontSize: 14),
                buildCounter: (context,
                        {required int currentLength,
                        bool isFocused = false,
                        required int? maxLength}) =>
                    const SizedBox.shrink(),
                keyboardType: widget.keyboardType ??
                    (widget.isPhoneNumber
                        ? TextInputType.phone
                        : TextInputType.emailAddress),
                validator: widget.validator ??
                    (value) =>
                        (value?.isEmpty ?? true) ? 'Please enter A text' : null,
                onFieldSubmitted: (value) {
                  focusNode.unfocus();
                  autoValidate = AutovalidateMode.onUserInteraction;
                  key.currentState?.validate();
                  if (widget.onFieldSubmitted != null) {
                    widget.onFieldSubmitted!(value);
                  }
                },
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                  hintText: widget.hint,
                  labelText: widget.label,

                  // isDense: true,
                  errorMaxLines: 1,
                  helperMaxLines: 3,
                  // filled: focusNode.hasPrimaryFocus || widget.filled,
                  // fillColor: (context.isDark
                  //     ? Colors.grey.withOpacity(.08)
                  //     : context.primaryColor.withOpacity(.1)),
                  // alignLabelWithHint: true,
                  // prefixIconConstraints: BoxConstraints(
                  //     minWidth: widget.prefixConstraintsX?.width ?? 100.0.width,
                  //     minHeight: kMinInteractiveDimension),
                  // suffixIconConstraints: BoxConstraints(
                  //     minWidth: 100,
                  //     minHeight: 48.0),
                  suffixIcon: widget.obscureText
                      ? _visibilityWidget()
                      : widget.suffix ?? const SizedBox(height: 24, width: 0),
                  counterStyle: const TextStyle(fontSize: .00000001),
                  errorStyle: const TextStyle(
                    fontSize: .00000001,
                    height: .0000001,
                  ),
                  isCollapsed: false,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: const ResponsiveValue(
                              desktop: 20.0, tablet: 18.0, mobile: 16.0)
                          .fromType(context.deviceType)),

                  labelStyle: (text.isNotEmpty || focusNode.hasFocus)
                      ? Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          height: .9,
                          color: _computeLabelColour)
                      : null,
                  // helperStyle: Theme.of(context).textTheme.caption?.copyWith(),
                  helperText: widget.helperText,
                  prefixIcon: widget.prefixIcon,
                  icon: widget.leading,
                )),
          ),
          if (widget.errorText != null ||
              (widget.validator != null &&
                  (autoValidate != AutovalidateMode.disabled ||
                      Form.of(context)?.widget.autovalidateMode !=
                          AutovalidateMode.disabled) &&
                  widget.validator!(text) != null))
            Text(widget.errorText ?? widget.validator!(text) ?? '',
                style: Theme.of(context).inputDecorationTheme.errorStyle)
        ]);
  }

  Color get _computeLabelColour => (widget.validator != null &&
          widget.validator!(controller.text) != null &&
          autoValidate != AutovalidateMode.disabled)
      ? Colors.red
      : focusNode.hasFocus
          ? Theme.of(context).primaryColor
          : const Color(0xff283461);

  Widget _visibilityWidget() => InkWell(
      child: Padding(
          padding:
              const EdgeInsets.only(right: 7, left: 10, top: 10, bottom: 10),
          child: SizedBox(
              width: 40,
              child: Center(
                child: Icon(showText == null
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined),
                // child: Text(
                //   showText == null ? 'Show  ' : 'Hide  ',
                //   style: Theme.of(context).textTheme.overline?.copyWith(
                //         fontWeight: FontWeight.w800,
                //         color: context.isDark
                //             ? Colors.white
                //             : context.primaryColor,
                //       ),
                // ),
              ))),
      onTap: _toggleVisibility);
}
