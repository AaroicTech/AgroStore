import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);

  final _email = TextEditingController();
  final _name = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _form = GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const Image(
                    image: AssetImage('assets/agro_store.png'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Create Account'),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Name', style: textStyle0),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Email', style: textStyle0),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Moble Number', style: textStyle0),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Camp Address', style: textStyle0),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 90,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Container(
                          // child: TextFormField(
                          //   decoration: const InputDecoration(),
                          // ),
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Previews', style: textStyle0),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Container(
                          // child: TextFormField(
                          //   decoration: const InputDecoration(),
                          // ),
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 195),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Next', style: textStyle0),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignUp()));
                        },
                        child: Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryColor,
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_forward, color: white),
                          ),
                        ),
                      ),
                    ],
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
