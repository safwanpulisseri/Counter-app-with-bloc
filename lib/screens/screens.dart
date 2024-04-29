import 'package:counter_app_with_bloc/logic/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            centerTitle: true,
            title: const Text('Counter App'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(DecrementEvent()),
                tooltip: 'Increment',
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBloc>().add(IncrementEvent()),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
