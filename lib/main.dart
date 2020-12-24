import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tube/api.dart';
import 'package:flutter_tube/blocs/favorite_bloc.dart';
import 'package:flutter_tube/screens/home.dart';

import 'blocs/videos_bloc.dart';

void main() {
  Api api = Api();
  api.search('eletro');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => VideosBloc()),
        Bloc((i) => FavoriteBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Tube',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
