import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fruits_event.dart';
part 'fruits_state.dart';

class FruitsBloc extends Bloc<FruitsEvent, FruitsState> {
  FruitsBloc() : super(FruitsInitial()) {
    on<FruitsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
