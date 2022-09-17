import 'package:fattora/shared/cubit.dart';
import 'package:fattora/shared/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FatoraCubit(),
      child: BlocConsumer<FatoraCubit, FatorraStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: FatoraCubit.get(context)
                .screens[FatoraCubit.get(context).currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0.0,
              type: BottomNavigationBarType.fixed,
              onTap: FatoraCubit.get(context).changeNavBar,
              currentIndex: FatoraCubit.get(context).currentIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'مهام'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'خاص بي'),
              ],
            ),
          );
        },
      ),
    );
  }
}
