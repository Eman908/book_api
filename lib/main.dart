import 'package:book_store/core/bloc/bloc_observer.dart';
import 'package:book_store/run_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
