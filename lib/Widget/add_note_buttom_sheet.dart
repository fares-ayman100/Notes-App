import 'package:flutter/material.dart';
import 'package:notes_app/Widget/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomTextField()]);
  }
}
