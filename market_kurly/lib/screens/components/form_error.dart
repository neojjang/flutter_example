import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormError extends StatelessWidget {
  final List<String>? errors;

  const FormError({Key? key, this.errors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
          errors?.length ?? 0,
          (index) => Text(
                " * ${errors?[index]}",
                style: TextStyle(
                  color: Colors.red,
                ),
              )),
    );
  }
}
