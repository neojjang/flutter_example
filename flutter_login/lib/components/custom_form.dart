import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  // const CustomForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Email"),
          SizedBox(
            height: medium_gap,
          ),
          CustomTextFormField(text: "Password"),
          SizedBox(
            height: large_gap,
          ),
          TextButton(
            onPressed: (() {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            }),
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
