import 'package:flutter/material.dart';

class RegistrPage extends StatefulWidget {
  const RegistrPage({Key? key}) : super(key: key);

  @override
  State<RegistrPage> createState() => _RegistrPageState();
}

class _RegistrPageState extends State<RegistrPage> {

  TextEditingController controller = TextEditingController();
  String text = "" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 36,
                color: Color(0xff000000),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                hintText: "Email adress",
              ),


            ),
            const SizedBox(height: 20),
            const  TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                hintText: "New Password",
              ),


            ),
            SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                hintText: "Replace Password",
              ),


            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  text = controller.text ;

                });
              },
              child: Text(
                'NEXT',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                elevation: 0,
                fixedSize: Size(double.infinity, 52),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(text , textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

