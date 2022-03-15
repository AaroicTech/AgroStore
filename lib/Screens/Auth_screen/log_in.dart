import 'package:agro_store/Screens/Auth_screen/create_account.dart';
import 'package:agro_store/Screens/main_activity.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key? key}) : super(key: key);

  final _email = TextEditingController();
  final _pwd = TextEditingController();
  final _form = GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //color: white,
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text('Welcome to', style: textStyle),
                const SizedBox(height: 10),
                Container(
                  child: const Image(
                    image: AssetImage('assets/agro_store.png'),
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email/Phone number',
                        style: textStyle0,
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Passward', style: textStyle0),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Passward?',
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MainActivity()));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: textStyle1,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => CreateAccount()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Dont have an account?  ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'REGISTER NOW',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
