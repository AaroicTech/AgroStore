import 'package:agro_store/Admin/Admin_home_page/admin_home_page.dart';
import 'package:agro_store/Consumer/Screens/Auth_screen/create_account.dart';
import 'package:agro_store/Consumer/Screens/main_activity.dart';
import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Stlyes/fonts.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
 const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

String dropdownValue = 'Selecte Domain';
final _email = TextEditingController();
final _pwd = TextEditingController();
final _form = GlobalKey<State>();

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60),
          padding: const EdgeInsets.all(30),
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
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Container(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: dropdownValue,
                      icon: const Icon(Icons.more_vert),
                      elevation: 16,
                      style:  TextStyle(color: primaryColor),
                      underline: Container(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Selecte Domain', 'Admin', 'Consumer']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email/Phone number',
                        style: textStyle5,
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
                      child: Text('Passward', style: textStyle5),
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CreateAccount()));
                    },
                    child: Text(
                      'Forgot Passward?',
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (dropdownValue == 'Admin') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AdminHomePage()));
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => MainActivity()));
                      }
                    });
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
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Dont have an account?  ',
                      style: textStyle0,
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
