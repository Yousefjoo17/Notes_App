import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delete_state.dart';

class DeleteCubit extends Cubit<DeleteNoteState> {
  DeleteCubit() : super(DeleteInitial());
}
