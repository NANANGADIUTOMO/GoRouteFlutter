
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_assigment/cubits/login_cubit.dart';

import '../models/category_models.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    List<Category> categories = Category.categories;
    return Scaffold(
    
      appBar: AppBar(
        title: Text('categories'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: (){
              context.read<LoginCubit>().logout();
            }, 
            icon: Icon(Icons.logout),
            )
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          Category category= categories[index] as Category;
          return ListTile(
            title: Text(category.name),
            onTap: (){
              return context.go(
                context.namedLocation(
                  'product_list',
                  params: <String, String>{'category': category.name},
                  queryParams: <String, String>{'sort': 'desc', 'filter': '0'}
                  ));
            },
          );
        },
      ),
    );
  }
}


