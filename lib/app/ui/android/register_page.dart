// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/controller/login_controller.dart';

class RegisterPage extends StatelessWidget {
  final LoginController _loginController = LoginController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: [
              Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset('assets/fire.png'),
                ),
              ),
              SizedBox(height: 18.0),
              Center(
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                controller: _loginController.nameTextController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo obrigatório.";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                // initialValue: 'emailteste@gmail.com',
                decoration: InputDecoration(
                  hintText: 'Nome',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                controller: _loginController.emailTextController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo obrigatório";
                  } else if (!GetUtils.isEmail(value)) {
                    return "Campo requer um e-mail válido";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                // initialValue: 'emailteste@gmail.com',
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _loginController.passwordTextController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Campo obrigatório";
                  } else if (value.length < 6) {
                    return "O campo requer uma senha de no mínimo 6 caracteres";
                  }
                  return null;
                },
                //initialValue: 'emailteste@gmail.com',
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _loginController.register();
                    }
                  },
                  padding: const EdgeInsets.all(12),
                  color: Get.theme.primaryColor,
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Fazer login',
                  style: TextStyle(color: Get.theme.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
