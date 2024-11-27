import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:football_matches/features/fantasy/presentations/screens/fantasy.dart';
import 'package:football_matches/features/home/presentations/screens/home.dart';
import 'package:football_matches/features/matches/presentations/screens/matches.dart';
import 'package:football_matches/features/my_profile/presentations/screens/my_profile.dart';
import 'package:football_matches/features/shop/presentations/screens/shop.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  final List<Widget> screens = [
    const Home(),
    const Matches(),
    const Fantasy(),
    const Shop(),
    const MyProfile(),
  ];

  BottomNavigationBloc() : super(const BottomNavigationInitial()) {
    on<ChangeTabEvent>((event, emit) {
      emit(
        BottomNavigationUpdated(
          tabIndex: event.tabIndex,
          currentScreen: screens[event.tabIndex],
        ),
      );
    });
  }
}
