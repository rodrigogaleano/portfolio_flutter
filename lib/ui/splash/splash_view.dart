import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../routing/routes.dart';
import '../shared/themes/app_fonts.dart';
import 'splash_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final SplashCubit cubit = SplashCubit();

  @override
  void initState() {
    super.initState();
    cubit.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      bloc: cubit,
      listener: (context, state) {
        if (state.shouldNavigate) {
          context.go(Routes.home);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Text(
              'RODRIGO GALEANO',
              textAlign: TextAlign.center,
              style: AppFonts.extraBold(128, Colors.white),
            ),
          ),
        );
      },
    );
  }
}
