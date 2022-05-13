part of 'fruit_bloc.dart';

abstract class FruitState extends Equatable {
  const FruitState();

  @override
  List<Object> get props => [];
}

class FruitInitial extends FruitState {}

class FruitLoaded extends FruitState {
  final List<Fruit> fruits;

  const FruitLoaded(this.fruits);

  @override
  List<Object> get props => [fruits];
}
