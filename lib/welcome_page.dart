import 'package:flutter/material.dart';
import 'package:task4/registr_page.dart';

import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

          children: [
            Image.asset('assets/back_img.png'),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(

                  children: [
                    Expanded(
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => const LoginPage()),
                        );
                      }, child: Text("LOG IN", style: TextStyle(
                        color: Colors.black,
                      ),),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrPage()),);
                        },
                          child: Text("REGISTR", style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                          ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            elevation: 0,
                          ),
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
