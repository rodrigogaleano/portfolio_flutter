import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  void init() {
    Future.delayed(const Duration(seconds: 3), () {
      emit(const SplashState(shouldNavigate: true));
    });
  }
}

final class SplashState {
  final bool shouldNavigate;

  const SplashState({this.shouldNavigate = false});
}
