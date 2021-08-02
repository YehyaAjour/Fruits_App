import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruitmarket/modules/favourite/favourites_screen.dart';
import 'package:fruitmarket/modules/home/home_screen.dart';
import 'package:fruitmarket/modules/myaccount/my_account_screen.dart';
import 'package:fruitmarket/modules/shoppingcart/shopping_cart_screen.dart';
import 'package:fruitmarket/shared/cubit/states.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentindex = 0;
  List<int> counter = List();
  List<Widget> screens = [
    HomeScreen(),
    ShoppingCartScreen(),
    FavouriteScreen(),
    MyAccountScreen(),
  ];
  void changeIndex(int index) {
    currentindex = index;
    emit(AppChangeBottomNavBarState());
  }

  incrementCounter(int i) {
    counter[i]++;
    emit(IncrementCounterState());
    // _event.add(counter[i]);
  }

  decrementCounter(int i) {
    if (counter[i] <= 0) {
      counter[i] = 0;
    } else {
      counter[i]--;
    }
    emit(DecrementCounterState());
    //  _event.add(counter[i]);
  }
}
