import 'package:bloc_study/views/bloc/home_bloc.dart';
import 'package:bloc_study/views/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Study"),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is HomeStateLoaded) {
            return ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },
            );
          }
          if (state is HomeErrorState) {
            return Center(child: Text(state.message),);
          }

          if (state is HomeStateEmptyList) {
            return Center(child: Text("Não há dados"),);
          }


          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
