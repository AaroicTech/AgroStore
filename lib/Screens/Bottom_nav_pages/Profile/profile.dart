import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';
import '../../../Widget/drower.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      AssetImage('assets/unsplash_i2hoD-C2RUA.png'),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Name',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Moble Number',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Camp Address',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Previews',
                        style: textStyle0,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
