import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/cubit/vending_cubit.dart';
import 'package:vending_machine/ui/home_screen.dart';
import 'package:vending_machine/utils/str_resource.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<VendingCubit>(
      create: (context) => VendingCubit(),
      child: MaterialApp(
        title: StrRes.appName,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(title: StrRes.appName),
      ),
    );
  }
}
