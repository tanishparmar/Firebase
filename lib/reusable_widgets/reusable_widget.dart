import 'package:flutter/material.dart';


TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: isPasswordType,
    autocorrect: isPasswordType,
    decoration: InputDecoration(
      prefixIcon: Icon(icon),
      labelText: text,
      filled: true,
    ),
    keyboardType:
        isPasswordType ? TextInputType.visiblePassword : TextInputType.text,
  );
}

Container entryButton(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: ElevatedButton(onPressed: () {
      onTap();
    },
    child: Text(
      isLogin ? "Login" : "Register",
    ),
    ),
  );
}

Image logoWidget(String imaageName){
  return Image.asset(
    imaageName,
    height: 100,
    width: 100,
  );
}