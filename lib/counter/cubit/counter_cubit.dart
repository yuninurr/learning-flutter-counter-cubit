import 'package:bloc/bloc.dart';

// 1. bikin class, tambahin extends buat parents dan child
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0); // state pertama kali yang diinisialisasi

  // yang dilakukan ada dua perintah, ada state yang di tambahkan dan di kurangi
  // 2. mau melkaukan state untuk tambah dan kurang
  void increment() => emit(state + 1);
  // standart tipe function
  void decrement() => emit(state - 1);
  // multiply 
  void multiply() => emit(state * 2);
  // kurangi dua 
  void minus() => emit(state - 2);
  // reset the counter to 0 
  void reset() => emit(0);
}
