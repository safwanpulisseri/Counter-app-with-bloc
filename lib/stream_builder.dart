// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key});
//   final _counterBloc = CounterBloc();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             StreamBuilder<int>(
//               stream: _counterBloc.counterStream,
//               initialData: 0,
//               builder: (context, snapshot) {
//                 return Text(
//                   '${snapshot.data}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _counterBloc.incrementCounter(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class CounterBloc {
//   int _counter = 0;
//   final _counterController = StreamController<int>();
//   Stream<int> get counterStream => _counterController.stream;
//   incrementCounter() {
//     _counter++;
//     _counterController.sink.add(_counter);
//   }

//   void dispose() {
//     _counterController.close();
//   }
//   //The dispose() method in the BLoC class is used to clean up resources and
//   //release memory when they are no longer needed. In this specific case,
//   // _counterController is a StreamController used to manage the stream of counter values.

// //When you're finished with a stream controller, it's a good practice to
// //close it to prevent memory leaks and to free up resources associated with
// //the stream. Closing the stream controller ensures that no further events
// //can be added to the stream, and it releases any resources held by
// //the stream controller.
// }
