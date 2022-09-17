import 'package:flutter/material.dart';
import '../../components/components.dart';

class MisssionsScreen extends StatelessWidget {
  const MisssionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list_alt),
          ),
          title: const Text('مهام'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: missionScreen()
        );
  }
}
