import 'package:flutter/material.dart';
import 'package:new_application_challenge/FormCustom.dart';

class MyForm extends StatelessWidget {
  MyForm({super.key});

  final _formKey = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // ✅ Assign the key here
          child: Column(
            children: [
              MyCustomTextFieldWidget(
                controller: EmailController,
                iconData: Icons.email,
                Validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Email";
                  }
                  if (!value.contains("@gmail.com")) {
                    return "Email is not valid";
                  }
                  return null;
                },
                label: "Email",
                hint: "Email",
              ),
              MyCustomTextFieldWidget(
                controller: PasswordController,
                iconData: Icons.password,
                Validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                  if (value.length < 10 || value.length > 20) {
                    return "Password must be between 10 and 20 characters";
                  }
                  return null;
                },
                label: "Password",
                hint: "Password",
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Form is valid!")),
                    );
                  }
                },
                child: const Text("Validate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
