part of 'fruits_bloc.dart';

abstract class FruitsState extends Equatable {
  const FruitsState();

  @override
  List<Object> get props => [];
}

class FruitsInitial extends FruitsState {}
