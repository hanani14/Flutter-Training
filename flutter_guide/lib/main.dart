import 'package:flutter/material.dart';
import 'package:flutter_guide/widgets/user_transaction.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
// container - takes exactly one child widget, rich alligment & styling options, flexible width( e.g. child width), perfect for custom styling & aligment
// column/row - takes multiple (unlimited) child widgets, alignment but no styling options, always take full available height(column) / width(row), must use if widgets sit next to/ above others

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          //main for top bottom
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //cross for left right
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blueAccent,
                child: Text('CHART!'),
                elevation: 5,
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
