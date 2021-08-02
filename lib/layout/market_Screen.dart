import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fruitmarket/shared/cubit/cubit.dart';
import 'package:fruitmarket/shared/cubit/states.dart';

class MarketScreen extends StatelessWidget {
  int x;

  MarketScreen([this.x]);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        if (x == null) {
          return AppCubit();
        } else {
          return AppCubit()..currentindex = x;
        }
      },
      child: BlocConsumer<AppCubit, AppState>(
        listener: (BuildContext context, AppState state) {},
        builder: (BuildContext context, AppState state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentindex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentindex,
              onTap: (value) {
                cubit.changeIndex(value);
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'HOME',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                  ),
                  label: 'Shopping cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  label: 'Favourite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_rounded,
                  ),
                  label: 'My Account',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
