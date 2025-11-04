import 'package:flutter/material.dart';
import 'package:new_application_challenge/Form.dart';
import 'package:new_application_challenge/FormCustom.dart';
import 'package:new_application_challenge/Validation.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
  final _formKey = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final UsernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(193, 0, 150, 135),
        
      ),
      body: Column(
        children: [
          
          Container(
            margin: EdgeInsets.only(top: 20),
          child:Icon(Icons.account_circle,size: 130,
          color: Colors.amber,),
         ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                        MyCustomTextFieldWidget(
                    controller: UsernameController,
                    iconData: Icons.person,
                    
                    Validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your Username";
                      }
                      if (value.length < 10 || value.length > 20) {
                        return "Username must be between 10 and 20 characters";
                      }
                      return null;
                    },
                    Label: "Username",
                    hint: "Username",
                  ),
                SizedBox(height: 20),
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
                    Label: "Email",
                    hint: "Email",
                  ),
             
                  MyCustomTextFieldWidget(
                    controller: PasswordController,
                    iconData: Icons.lock,
                    obsecure: true,
                    Validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      if (value.length < 10 || value.length > 20) {
                        return "Password must be between 10 and 20 characters";
                      }
                      return null;
                    },
                    Label: "Password",
                    hint: "Password",
                  ),
                SizedBox(height: 20),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.teal,padding: EdgeInsets.only(left: 150,right: 150,top: 20,bottom: 20)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        EmailController.clear();
                        PasswordController.clear();
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>MyValidationWidget()));
                      }
                    },
                    child: const Text("Create Account",style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                    
                      Text("Already have An Account ?"),
                      GestureDetector(child:Text("Login") ,onTap: () {
                        Navigator.pop(context,MaterialPageRoute(builder: (context)=>MyForm()));
                      },)
                      
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}