import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_assigment/cubits/login_cubit.dart';

class loginScreens extends StatelessWidget {
  const loginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('login'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                context.go(context.namedLocation('home'));
              }, 
              child: Text('go to home')
              ),
              SizedBox(height: 8.0,),
              ElevatedButton(
              onPressed: (){
                context.read<LoginCubit>().login();
              }, 
              child: Text('Login'))
          ],
        )),
    );
  }
}