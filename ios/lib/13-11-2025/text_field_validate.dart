import 'package:flutter/material.dart';

class TextFieldValidate extends StatefulWidget {
  const TextFieldValidate({super.key});

  @override
  State<TextFieldValidate> createState() => _TextFieldValidateState();
}

class _TextFieldValidateState extends State<TextFieldValidate> {
  var formKey = GlobalKey<FormState>();

  String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return "Please Enter some text";
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Please enter some text ";
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return "Please Enter some text";
    } else if (value.length < 8) {
      return 'Passowrd must be atleast 8 charaters';
    } else if (RegExp(
            r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-])(.{8,})$')
        .hasMatch(value)) {
      return 'password invalid !';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTextFeild(
                  hintText: "Enter Email : ", validator: emailValidator),
              SizedBox(height: 20),
              _buildTextFeild(
                  hintText: "Enter Password :", validator: passwordValidator),

              // TextFormField(
              //   validator: (value) {
              //     // value hover on it it has ? and we mustt be put !
              //     if (value!.isEmpty) {
              //       return "Please Enter some text";
              //     } else if (value.length < 8) {
              //       return 'Passowrd must be atleast 8 charaters';
              //     } else if (RegExp(
              //             r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\-])(.{8,})$')
              //         .hasMatch(value)) {
              //       return 'password invalid !';
              //     }
              //     return null;
              //   },
              //   decoration: InputDecoration(
              //     hintText: "Enter Passsword :",
              //     enabledBorder: OutlineInputBorder(),
              //     focusedBorder: OutlineInputBorder(),
              //     errorBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         color: Colors.red,
              //       ),
              //     ),
              //     focusedErrorBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //         color: Colors.red,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState!.validate();
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFeild(
      {required String hintText, String? Function(String?)? validator}) {
    return TextFormField(
      validator: validator,
      // value hover on it it has ? and we mustt be put !
      // if (value!.isEmpty) {
      //   return "Please Enter some text";
      // } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      //   return "Please enter some text ";
      // }
      // return null;
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}



//  create text field validate it has 3 steps
// replace TextFeild By TextFormFeild
// and all validate 
// and create formKey from globalkey 
// wrap textfield iin formm
//  in form than call key 



//  when we wanna use ? : it meant can be null , ex: {String? hintext}
// default : want default value , ex {String hintText = "Enter something "}