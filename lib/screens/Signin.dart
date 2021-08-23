import 'package:flutter/material.dart';
// ignore: unused_import
import 'Otp.dart';
// ignore: unused_import
import 'Signin.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool valuefirst = false;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 60, left: 200),
              child: (Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Cupid.lk|",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        ),
                        Text(
                          "Matrimonial",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
          
          Container( 
             margin: EdgeInsets.only(top: 360),
           padding: EdgeInsets.all(20),
           child: Column(children: <Widget>[
                Container( 
                  child:IntlPhoneField(
                        decoration: InputDecoration(
                        hintText: 'Enter your phone number',
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 255, 3, 69)
                        )),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color.fromARGB(255, 255, 3, 69)),
                          )
                      ),
                        initialCountryCode: 'NP', //default contry code, NP for Nepal
                        onChanged: (phone) {
                            //when phone number country code is changed
                            print(phone.completeNumber); //get complete number
                            print(phone.countryCode); // get country code only
                            print(phone.number); // only phone number
                        },
                    ) 
                ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 58),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  'By signing in you are agree to the',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              
            },
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Terms and Conditions',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromARGB(255, 255, 3, 69)),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 55,
                width: 750,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 3, 69),
                  ),
                  onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Otp(_controller.text)));
              },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      ),
        ],
      ),
    );
    
  }
}
