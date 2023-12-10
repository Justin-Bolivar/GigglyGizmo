

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FormContainerWidget extends StatefulWidget {

  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

  const FormContainerWidget({super.key, 
    this.controller,
    this.isPasswordField,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType
  });

@override
State<FormContainerWidget> createState() => _FormContainerWidgetState();
  // @override
  // _FormContainerWidgetState createState() => _FormContainerWidgetState();
}

class _FormContainerWidgetState extends State<FormContainerWidget> {

  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 30.0, left: 30.0, top: 5.0, bottom: 5.0),
        child: TextFormField(
          style: GoogleFonts.roboto(
                 textStyle: const TextStyle(color: Color(0xffD7F2EC)),),
          controller: widget.controller,
          keyboardType: widget.inputType,
          key: widget.fieldKey,
          obscureText: widget.isPasswordField == true? _obscureText : false,
          onSaved: widget.onSaved,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
              width: 1.5, color: Color(0xffD7F2EC)),
              borderRadius: BorderRadius.circular(10.0),
              ),
            filled: false,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.roboto(
                 textStyle: const TextStyle(color: Color(0xffD7F2EC)),),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child:
              widget.isPasswordField==true? Icon(_obscureText ? Icons.visibility_off : Icons.visibility, color: _obscureText == false ? const Color(0xffD7F2EC) : Colors.grey,) : const Text(""),
            ),
          ),
        ),
      ),
    );
  }
}