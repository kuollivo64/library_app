import 'package:flutter/material.dart';
import 'package:library_app/data/student.dart';

class LoginScreen extends StatelessWidget {
  String user = "";
  String contra = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xFF8A2387),
            Color(0xFFE94057),
            Color(0xFFF27121)
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset('images/logo.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Univalle Biblioteca',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.5,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Bienvenido',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ingrese los campos para iniciar sesión',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: TextField(
                    onChanged: (value) {
                      user = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'ID Estudiante',
                      suffixIcon: Icon(
                        Icons.person,
                        size: 17,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  child: TextField(
                    onChanged: (value) {
                      contra = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: Icon(
                          Icons.hide_source,
                          size: 17,
                        )),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '¿Olvido su contraseña?',
                          style: TextStyle(color: Colors.orangeAccent[700]),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // for (var i = 0; i < student.length; i++) {
                    //   // print(student[i]);
                    //   // print(student[i]);
                    // }
                    Navigator.pushNamed(context, 'home',
                        arguments: 'book-instance');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF8A2387),
                              Color(0xFFE94057),
                              Color(0xFFF27121),
                            ])),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
    )));
  }
}
