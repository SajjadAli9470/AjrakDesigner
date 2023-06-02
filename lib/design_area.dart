import 'package:flutter/material.dart';

class design_area extends StatefulWidget {
  const design_area({super.key});

  @override
  State<design_area> createState() => _design_areaState();
}

class _design_areaState extends State<design_area> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            child: Image.asset('assets/background.jpg',
            fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}