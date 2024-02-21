import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('onClose ${bloc.toString()}');
  }

  @override
  void onCreate(BlocBase bloc) {
   debugPrint('onCreate ${bloc.toString()}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError ${error.toString()} by Bloc ${bloc.toString()}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}