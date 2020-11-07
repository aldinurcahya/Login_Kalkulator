import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/kalkulator.dart';

void main() {
  runApp(new LoginFlutter(
  ));
}

class LoginFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Kalkulator di Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(Icons.person, size: 50, color: Colors.lightBlue,),
              ),
            ),
            SizedBox(height: 20,),

            Text("Selamat Datang, Silahkan Login", style: TextStyle(fontSize: 20, color: Colors.black) ,),

            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                  prefixIcon: Icon(Icons.person, size: 40),
                hintText: "Masukkan Username",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),

            SizedBox(height: 20,),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                ),
                prefixIcon: Icon(Icons.person, size: 40),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.black),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),

            SizedBox(height: 20,),

            Card(
              color: Colors.yellow,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.black,
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return kalkulator();
                    }));
                  },
                  child: Center(
//                    child: RaisedButton(
                    child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.lightBlueAccent),),
//                      onPressed: () {},
                    )
                  ),
                )
              )

          ],
        ),
      )
    );
    throw UnimplementedError();
  }

}


