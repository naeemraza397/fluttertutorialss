import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()){
    setState(() {
      changebutton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() { 
      changebutton = false;
    });
  }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text("welcome to flutter!",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty){
                          return "fill this field";
                        }
                        return null;
                      },
        
                      decoration: InputDecoration(
                          hintText: "Enter username",
                          labelText: "username",
                          labelStyle: TextStyle(color: Colors.purple.shade900),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple.shade900))),
                    ),
                    TextFormField(
                       validator: (value) {
                        if (value == null || value.isEmpty){
                          return "fill this field";
                        }else if (value.length<8){
                          return "password length should be atleast 8";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "password",
                          labelStyle: TextStyle(color: Colors.purple.shade900),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple.shade900))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Colors.purple.shade900,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 18 : 8),
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
