import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final bool? enabled;
  final String? hintText;
  final bool isHintLabel;
  final bool hasClearSuffix;
  final Widget? prefix;
  final IconData? prefixIcon;
  final Widget? suffix;
  final bool autofocus;
  final int? maxLines;
  final int? maxLength;
  final void Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final EdgeInsetsGeometry? margin;
  final bool hasShadow;
  final void Function(String)? onFieldSubmitted;
  final FontWeight? fontWeight;
  final Color? color;
  final bool autocorrect;

  const CustomTextField({
    super.key,
    this.controller,
    this.enabled,
    this.hintText,
    this.isHintLabel = true,
    this.hasClearSuffix = false,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.autofocus = false,
    this.maxLines = 1,
    this.maxLength,
    this.onTap,
    this.inputFormatters,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.validator,
    this.onChanged,
    this.focusNode,
    this.textInputAction,
    this.autovalidateMode,
    this.obscureText = false,
    this.margin,
    this.hasShadow = false,
    this.onFieldSubmitted,
    this.fontWeight,
    this.color,
    this.autocorrect = true,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final FocusNode _focusNode;
  late final ValueNotifier<bool> _isFocused;
  late final ValueNotifier<bool> _isObscureText;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _isFocused = ValueNotifier<bool>(_focusNode.hasFocus);
    _isObscureText = ValueNotifier<bool>(widget.obscureText);

    _focusNode.addListener(() {
      _isFocused.value = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    _isFocused.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isFocused,
      builder: (context, isFocused, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: _isObscureText,
          builder: (context, isObscureText, child) {
            return Container(
              margin: widget.margin,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: widget.hasShadow
                    ? [const BoxShadow(offset: Offset(0, 0), blurRadius: 5, spreadRadius: 0.5, color: Colors.black12)]
                    : null,
              ),
              child: TextFormField(
                autocorrect: widget.autocorrect,
                onFieldSubmitted: widget.onFieldSubmitted,
                obscureText: isObscureText,
                focusNode: _focusNode,
                textInputAction: widget.textInputAction,
                autofocus: widget.autofocus,
                controller: widget.controller,
                enabled: widget.enabled,
                maxLines: widget.maxLines,
                maxLength: widget.maxLength,
                inputFormatters: widget.inputFormatters,
                keyboardType: widget.keyboardType,
                textCapitalization: widget.textCapitalization,
                validator: widget.validator,
                autovalidateMode: widget.autovalidateMode,
                onTap: widget.onTap,
                onChanged: widget.onChanged,
                style: TextStyle(fontWeight: widget.fontWeight, color: widget.color),
                decoration: InputDecoration(
                  errorStyle: const TextStyle(fontSize: 10),
                  isDense: true,
                  filled: true,
                  // fillColor: widget.hasShadow ? Theme.of(context).colorScheme.primaryContainer : null,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                  contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 8, 10, 8),
                  labelText: !widget.isHintLabel ? null : widget.hintText,
                  hintText: widget.isHintLabel ? null : widget.hintText,
                  hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                  alignLabelWithHint: true,
                  prefix: widget.prefix,
                  prefixIcon: widget.prefixIcon == null
                      ? null
                      : Icon(
                          widget.prefixIcon,
                          color: isFocused
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.outlineVariant,
                        ),
                  prefixIconConstraints: widget.prefixIcon == null
                      ? null
                      : const BoxConstraints.tightFor(width: kMinInteractiveDimension),
                  suffixIconConstraints: const BoxConstraints(maxHeight: double.infinity),
                  suffixIcon:
                      widget.suffix ??
                      (widget.obscureText
                          ? CupertinoButton(
                              padding: EdgeInsets.only(right: 10),
                              minimumSize: Size.zero,
                              child: Icon(
                                isObscureText ? Icons.abc_rounded : Icons.more_horiz_rounded,
                                color: Theme.of(context).colorScheme.outlineVariant,
                                size: 32,
                              ),
                              onPressed: () {
                                _isObscureText.value = !_isObscureText.value;
                              },
                            )
                          : (widget.controller != null && widget.hasClearSuffix)
                          ? CupertinoButton(
                              padding: EdgeInsets.only(right: 10),
                              minimumSize: Size.zero,
                              child: const Icon(CupertinoIcons.xmark_circle, size: 20),
                              onPressed: () {
                                widget.controller?.clear();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                            )
                          : null),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
