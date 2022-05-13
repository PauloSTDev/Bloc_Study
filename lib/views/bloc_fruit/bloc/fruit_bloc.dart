import 'package:bloc/bloc.dart';
import 'package:bloc_study/models/fruit_model.dart';
import 'package:equatable/equatable.dart';

part 'fruit_event.dart';
part 'fruit_state.dart';

class FruitBloc extends Bloc<FruitEvent, FruitState> {
  FruitBloc() : super(FruitInitial()) {
    on<LoadFruitCounter>((event, emit) async {
      await Future<void>.delayed(Duration(seconds: 5));
      emit(const FruitLoaded(<Fruit>[]));
    });
    on<AddFruit>((event, emit) {
      if (state is FruitLoaded) {
        final state = this.state as FruitLoaded;

        emit(FruitLoaded(List.from(state.fruits)..add(event.fruit)));
      }
    });
    on<RemoveFruit>((event, emit) {
      if (state is FruitLoaded) {
        final state = this.state as FruitLoaded;

        emit(FruitLoaded(List.from(state.fruits)..remove(event.fruit)));
      }
    });
  }
}
