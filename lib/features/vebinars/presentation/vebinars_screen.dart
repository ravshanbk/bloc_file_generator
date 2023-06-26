import 'package:yosh_liderlar_hub/features/vebinars/presentation/blocs/vebinars/vebinars_bloc.dart';
import 'package:yosh_liderlar_hub/features/vebinars/presentation/widgets/vebinars_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class VebinarsScreen extends StatefulWidget {
  const VebinarsScreen({Key? key}) : super(key: key);

  @override
  State<VebinarsScreen> createState() => _VebinarsScreenState();
}

class _VebinarsScreenState extends State<VebinarsScreen> {
  late VebinarsBloc vebinarsBloc;
  @override
  void initState() {
    super.initState();
    vebinarsBloc = VebinarsBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vebinars'),
      ),
      body: BlocBuilder<VebinarsBloc, VebinarsState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state.labels.isEmpty) {
            return const Center(
              child: Text('No items'),
            );
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              return VebinarsItem(title: 'vebinars $index');
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
            itemCount: state.labels.length,
          );
        },
      ),
    );
  }
}
