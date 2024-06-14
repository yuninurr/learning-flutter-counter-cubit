import 'package:bloc/bloc.dart';

class CounterObserver extends BlocObserver {
  CounterObserver();
  // memantau perubahan change menggunakan onChange
  @override
  // counternya 0 jadi 1
  void onChange(BlocBase bloc, Change change) {
    // super memanggil block observer nya 
    super.onChange(bloc, change);
    // untuk melihat perubahan
    print(change);
    // print('${bloc.runtimeType} $change');
    
  }
}
