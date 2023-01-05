import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_assigment/config/app_router.dart';
import 'package:project_assigment/cubits/login_cubit.dart';
import 'package:project_assigment/screens/category_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child : Builder(
        builder: (context) {
          return MaterialApp.router(
          routerConfig: AppRouter(context.read<LoginCubit>()).router,
    );
        }
      ),
      );
  }
}
