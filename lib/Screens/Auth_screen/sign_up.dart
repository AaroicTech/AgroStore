import 'package:agro_store/Screens/main_activity.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

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
                Container(
                  child: const Image(
                    image: AssetImage('assets/agro_store.png'),
                  ),
                ),
                const SizedBox(height: 10),
                Text('ID verification', style: textStyle),
                const SizedBox(height: 50),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Mode of identification',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Identification Number', style: textStyle0),
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
                      child: Text(
                        'Upload image of valid ID',
                        style: textStyle0,
                      ),
                    ),
                    Container(
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.black12
                            // border: BoxBorder()
                            ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: grey,
                              child: Icon(
                                Icons.add,
                                color: white,
                              ),
                            ),
                            Text(
                              'Tap to Upload image',
                              style: textStyle0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: TextSpan(
                            text: 'I agree to  ',
                            style: textStyle0,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Teams of Service',
                                style: TextStyle(
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.only(left: 195),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Sign Up', style: textStyle0),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MainActivity()));
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
