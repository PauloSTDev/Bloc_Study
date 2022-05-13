import 'package:bloc_study/views/bloc_fruit/bloc/fruit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageFruit extends StatelessWidget {
  const HomePageFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Fruit Bloc'),
        centerTitle: true,
        backgroundColor: Colors.orange[800],
      ),
      body: Center(
        child: BlocBuilder<FruitBloc, FruitState>(
          builder: (context, state) {
            if (state is FruitInitial) {
              return const CircularProgressIndicator(color: Colors.orange);
            }
            if (state is FruitLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${state.fruits.length}",
                    style: const TextStyle(
                        fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            } else {}

            return Center(child: Text("Aham"),);
          },
        ),
      ),
    );
  }
}
