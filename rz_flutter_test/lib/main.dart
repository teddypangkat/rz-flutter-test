import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_flutter_test/features/weather_form/bloc/weather_form_bloc.dart';
import 'package:rz_flutter_test/features/weather_form/data/repository/weather_form_repository.dart';
import 'package:rz_flutter_test/features/weather_form/presentation/weather_form.dart';
import 'package:rz_flutter_test/features/weather_info/bloc/weather_info_bloc.dart';
import 'package:rz_flutter_test/features/weather_info/data/repository/weather_info_repository.dart';
import 'package:rz_flutter_test/features/weather_info/presentation/weather_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WeatherFormRepository>(
            create: (context) => WeatherFormRepository()),
        RepositoryProvider<WeatherInfoRepository>(
            create: (context) => WeatherInfoRepository())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              lazy: false,
              create: (BuildContext context) => WeatherFormBloc(
                  repository: context.read<WeatherFormRepository>())),
          BlocProvider(
              lazy: false,
              create: (BuildContext context) => WeatherInfoBloc(
                  weatherInfoRepository:
                      context.read<WeatherInfoRepository>())),
        ],
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => const WeatherForm(),
            WeatherInfo.routeName: (context) => const WeatherInfo()
          },
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
