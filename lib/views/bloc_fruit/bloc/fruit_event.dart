part of 'fruit_bloc.dart';

abstract class FruitEvent extends Equatable {
  const FruitEvent();

  @override
  List<Object> get props => [];
}

class LoadFruitCounter extends FruitEvent {}

class AddFruit extends FruitEvent {
  final Fruit fruit;
  const AddFruit(this.fruit);

  @override
  List<Object> get props => [fruit];
}

class RemoveFruit extends FruitEvent {
  final Fruit fruit;
  const RemoveFruit(this.fruit);

  @override
  List<Object> get props => [fruit];
}

class ClearFruit extends FruitEvent {
  final Fruit fruit;
  const ClearFruit(this.fruit);

  @override
  List<Object> get props => [];
}
