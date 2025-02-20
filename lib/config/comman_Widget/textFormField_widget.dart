import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../color/const_color.dart';
import '../fontstyle/const_textStyle.dart';

class CommonTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool obSecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefix;
  List<TextInputFormatter>? inputFormatters = [];

  CommonTextfield({
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    required this.obSecure,
    this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    this.hintText,
    this.suffixIcon,
    this.prefix,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.onSaved,
    this.labelText,
    this.inputFormatters,
    this.onFieldSubmitted,
  });

  @override
  State<CommonTextfield> createState() => _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofocus: false,
      focusNode: focusNode,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: widget.onFieldSubmitted,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingCompleted,
      obscureText: widget.obSecure,
      minLines: widget.isMulti ? 4 : 1,
      maxLines: widget.isMulti ? null : 1,
      onTap: widget.onTap,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: ConstColor.textFieldColor,
        // labelText: widget.labelText,
        labelStyle: ConstFontStyle().lableTextStyle,
        errorMaxLines: 2,
        hintText: widget.hintText,
        hintStyle: ConstFontStyle().lableTextStyle,
        errorText: widget.errorText,
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffixIcon,
      ),
      validator: widget.validator,
    );
  }
}


class PhoneNoField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String, String) codeChange;
  final TextEditingController countryCode;
  const PhoneNoField({
    super.key, required this.controller,
    required this.codeChange,
    required this.countryCode,
  });

  @override
  Widget build(BuildContext context) {
    Country selected = countries.firstWhere((country) => country.code == 'CA');
    if (countryCode.value.text.length != 0) {
      selected = countries.firstWhere(
            (country) => country.dialCode == countryCode.value.text.substring(1),
        orElse: () => countries.first,
      );
    }
    // FocusNode focusNode = FocusNode();
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: IntlPhoneField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // focusNode: focusNode,
        validator: (p0) {
          if (p0!.number.isEmpty) {
            return "phone is required";
          } else {
            return null;
          }
        },
        initialCountryCode: selected.code,
        onChanged: (phone) {
          codeChange(phone.number, phone.countryCode);
          print(phone.toString() + "phone+++");
        },
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          hintText: "000 000 000",
          hintStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
          fillColor: ConstColor.textFieldColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: Colors.transparent)),
        ),
      ),
    );
  }
}
