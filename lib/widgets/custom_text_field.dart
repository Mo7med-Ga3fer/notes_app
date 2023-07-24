import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hintText;
  final int maxLines;

  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'This field is required';
        }else{
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor)
      ),
    );
  }
}

OutlineInputBorder buildBorder ([color]){
  return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(
            color: color ?? Colors.white
          ),
        );
} 