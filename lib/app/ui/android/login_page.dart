import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
            SizedBox(height: 48.0),
            TextFormField(
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
                onPressed: () {},
                padding: const EdgeInsets.all(12),
                color: Get.theme.primaryColor,
                child: const Text(
                  'Acessar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Esqueceu sua senha?',
                style: TextStyle(color: Get.theme.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
