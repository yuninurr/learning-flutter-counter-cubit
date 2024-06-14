import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state');
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increment_fab'),
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            key: const Key('counterView_decrement_fab'),
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            key: const Key('counterView_multiply_fab'),
            child: const Icon(Icons.close),
            onPressed: () {
              context.read<CounterCubit>().multiply();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            key: const Key('counterView_minus_fab'),
            child: const Icon(Icons.exposure_minus_2),
            onPressed: () {
              context.read<CounterCubit>().minus();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            key: const Key('counterView_reset_fab'),
            child: const Icon(Icons.restore),
            onPressed: () {
              context.read<CounterCubit>().reset();
            },
          ),
        ],
      ),
    );
  }
}
