import 'package:agro_store/Stlyes/colors.dart';
import 'package:agro_store/Widget/appbar.dart';
import 'package:agro_store/Widget/drawer.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: appBar(),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('444654654456'),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Appied ID',
                          ),
                          SizedBox(width: 20),
                          Text(
                            '23233332',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('23423'),
                        SizedBox(width: 20),
                        Container(
                          height: 20,
                          width: 60,
                          color: primaryColor,
                          child: Center(child: Text('Approved')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: const Text('Application Information')),
                    const SizedBox(height: 20),
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a hendrerit tortor. Sed tempor purus auctor lacus posuere fermentum. Aenean et lorem volutpat, posuere dolor eu, faucibus ante. Ut venenatis consectetur dui id lacinia. Duis nec ante felis. Cras rutrum aliquet egestas. Fusce condimentum eleifend erat eget porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur finibus nisl augue, in porta dolor commodo eget. Nunc iaculis vitae leo eu eleifend. Amount to be paid is Z3000. This excludes other charges'),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {}, child: const Text('Make Payment')),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
