import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app_2026/core/utils/snack_bar_message.dart';
import 'package:todo_app_2026/features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:todo_app_2026/features/auth/presentation/widgets/register_form.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state is RegisterUserSuccessState) {
          GoRouter.of(context).goNamed('login');
        }
        if (state is RegisterUserFailState) {
          SnackBarMessage().showErrorSnackBar(
            message: state.message,
            context: context,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Register")),
        body: RegisterForm(),
      ),
    );
  }
}
