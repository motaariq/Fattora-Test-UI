import 'package:fattora/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MeScreen extends StatelessWidget {
  const MeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('خاص بي'), actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ]),
        body: profileScreen());
  }
}
