import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  final String phone;
  Otp(this.phone);
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String text = '';
  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Center(
            child: Text(
          text[position],
          style: TextStyle(color: Colors.black),
        )),
      );
    } catch (e) {
      return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Center(
              child: Text(
                'We have sent an OTP to',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                'your mobile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                'Please check your mobile number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                '+94-${widget.phone} to verify',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            constraints: const BoxConstraints(maxWidth: 500),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                otpNumberWidget(0),
                otpNumberWidget(1),
                otpNumberWidget(2),
                otpNumberWidget(3),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Container(
                height: 55,
                width: 370,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 3, 69),
                  ),
                  onPressed: () {},
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 70),
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "Didn't receive an OTP?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Resend OTP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 3, 69)),
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
