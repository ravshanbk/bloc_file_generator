import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yosh_liderlar_hub/features/retro/presentation/blocs/retro/retro_bloc.dart';
import 'package:yosh_liderlar_hub/features/retro/presentation/widgets/retro_item.dart';

class RetroScreen extends StatefulWidget {
  const RetroScreen({Key? key}) : super(key: key);

  @override
  State<RetroScreen> createState() => _RetroScreenState();
}

class _RetroScreenState extends State<RetroScreen> {
  late RetroBloc retroBloc;

  @override
  void initState() {
    super.initState();
    retroBloc = RetroBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => vebinarsBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Retro'),
        ),
        body: BlocBuilder<RetroBloc, RetroState>(
          builder: (context, state) {
            if (state.status.isInProgress) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            if (state.retros.isEmpty) {
              return const Center(
                child: Text('No items'),
              );
            }
            return ListView.separated(
              itemBuilder: (context, index) {
                return RetroItem(title: 'retro $index');
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: state.retros.length,
            );
          },
        ),
      ),
    );
  }
}
