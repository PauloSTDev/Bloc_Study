import 'dart:math';
import 'package:bloc_study/models/fruit_model.dart';
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
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: BlocBuilder<FruitBloc, FruitState>(
          builder: (context, state) {
            if (state is FruitInitial) {
              return const CircularProgressIndicator(color: Colors.green);
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
                  const SizedBox(height: 20),
                  SizedBox(
                    height: MediaQuery.of(context).size.height /1.5,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        for(int index = 0; index < state.fruits.length; index++)
                          Positioned(
                            left: Random().nextInt(250).toDouble(),
                            top: Random().nextInt(400).toDouble(),
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: state.fruits[index].image,
                            ),
                          )
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Center(child: const Text("Alguma coisa deu errado!"));
            }
          },
        ),
      ),
      floatingActionButton: Column(
         mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add, color: Colors.black),
            backgroundColor: Colors.green,
            onPressed: (){
            context.read<FruitBloc>().add(AddFruit(Fruit.Fruits[0]));
            },
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove, color: Colors.black),
            backgroundColor: Colors.green,
            onPressed: (){
              context.read<FruitBloc>().add(RemoveFruit(Fruit.Fruits[0]));
            },
          ),
          const SizedBox(height: 50),
          FloatingActionButton(
            child: const Icon(Icons.add_circle, color: Colors.black),
            backgroundColor: Colors.green,
            onPressed: (){
              context.read<FruitBloc>().add(AddFruit(Fruit.Fruits[1]));
            },
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove_circle, color: Colors.black),
            backgroundColor: Colors.green,
            onPressed: (){
              context.read<FruitBloc>().add(RemoveFruit(Fruit.Fruits[1]));
            },
          ),
          const SizedBox(height: 50),
          FloatingActionButton(
            child: const Text("0", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            backgroundColor: Colors.green,
            onPressed: (){
              context.read<FruitBloc>().add(ClearFruit(Fruit.Fruits[1]));
            },
          ),

        ],
      ),
    );
  }
}
