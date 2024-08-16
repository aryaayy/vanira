import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class FormText extends StatefulWidget {
  final String inputLabel;
  final IconData icon;
  final double labelFontSize;
  final double labelLetterSpacing;
  final bool readOnly;
  final String hintText;
  final double hintTextSize;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const FormText({
    super.key,
    required this.inputLabel,
    required this.icon,
    this.labelFontSize = 14,
    this.labelLetterSpacing = 0,
    this.readOnly = false,
    this.hintText = "",
    this.hintTextSize = 12,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.validator,
  });

  @override
  State<FormText> createState() => _FormTextState();
}

class _FormTextState extends State<FormText> with AppMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: widget.labelFontSize,
            fontWeight: semi,
            letterSpacing: widget.labelLetterSpacing,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).dividerColor,
                )
              ),
            ),
            child: TextFormField(
              readOnly: widget.readOnly,
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 4,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: widget.hintTextSize,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                prefixIcon: Icon(
                  widget.icon,
                  color: Theme.of(context).colorScheme.secondary,
                )
              ),
              validator: widget.validator,
            ),
          ),
        ),
      ],
    );
  }
}