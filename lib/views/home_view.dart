import 'package:flutter/material.dart';
import 'package:mvvm_1/view_models/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeViewModel homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeViewModel.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${homeViewModel.getCounter()}'),
            TextButton(
              onPressed: () {
                setState(() {
                  homeViewModel.increaseCounter();
                });
              },
              child: Icon(Icons.plus_one),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  homeViewModel.decreaseCounter();
                });
              },
              child: Icon(Icons.exposure_minus_1),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  homeViewModel.resetCounter();
                });
              },
              child: Icon(Icons.repeat),
            ),
          ],
        ),
      ),
    );
  }
}
