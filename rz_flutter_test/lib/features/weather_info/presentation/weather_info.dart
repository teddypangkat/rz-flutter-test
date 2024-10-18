import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:rz_flutter_test/core/helper/common_helper.dart';
import 'package:rz_flutter_test/core/themes/rz_color.dart';
import 'package:rz_flutter_test/core/constant/constant.dart';
import 'package:rz_flutter_test/features/weather_form/data/model/regencies_model.dart';
import 'package:rz_flutter_test/features/weather_info/bloc/weather_info_bloc.dart';

class WeatherArguments {
  String userName;
  RegenciesModel regenciesModel;

  WeatherArguments(this.userName, this.regenciesModel);
}

class WeatherInfo extends StatefulWidget {
  static const routeName = '/wheater-info';

  const WeatherInfo({super.key});

  @override
  State<WeatherInfo> createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  WeatherArguments? args;

  @override
  void initState() {
    context
        .read<WeatherInfoBloc>()
        .add(GetWeatherInfoEvent(-6.905977, 107.613144));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as WeatherArguments;

    return Scaffold(
      appBar: _appbarSection(title: args?.regenciesModel.name),
      extendBodyBehindAppBar: true,
      body: BlocBuilder<WeatherInfoBloc, WeatherInfoState>(
        builder: (context, state) {
          if (state is WeatherInfoLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is WeatherInfoLoadedState) {
            return Container(
              padding: const EdgeInsets.all(RZSize.s20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/enabled_hi/564x/bc/1c/c2/bc1cc23d3a8684ffd33b2de5e33e5a37.jpg'),
                      fit: BoxFit.cover)),
              child: ListView(
                children: [
                  _tempSection(
                      timeMessage: state.timeMessage,
                      userName: args?.userName,
                      temp: (state.currentWeatherModel.main?.temp) ?? 0,
                      weatherStatus: state.currentWeatherModel.weather?[0].main,
                      weatherIcon: CommonHelper.getWeatherIcon(
                          state.currentWeatherModel.weather?[0].icon ?? '')),
                  const SizedBox(
                    height: RZSize.s24,
                  ),
                  _itemInfoSection(
                      humidity: state.currentWeatherModel.main?.humidity,
                      preassure: state.currentWeatherModel.main?.pressure,
                      cloudness: state.currentWeatherModel.cloud?.all,
                      wind: state.currentWeatherModel.wind?.speed),
                  const SizedBox(
                    height: 20,
                  ),
                  _weatherCardSection(),
                ],
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  Container _weatherCardSection() {
    return Container(
      decoration: BoxDecoration(
          color: RZColors().black.withOpacity(.2),
          borderRadius: BorderRadius.circular(14)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _itemWeatherSection('Fri', '5/28'),
          _itemWeatherSection('Fri', '5/28'),
          _itemWeatherSection('Fri', '5/28'),
          _itemWeatherSection('Fri', '5/28'),
          _itemWeatherSection('Fri', '5/28'),
        ],
      ),
    );
  }

  Padding _itemWeatherSection(String? day, String? date) {
    return Padding(
      padding: const EdgeInsets.all(RZSize.s8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: RZSize.s8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  day ?? '',
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
                Text(
                  date ?? '',
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(RZSize.s8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '00:00:00',
                            style: TextStyle(
                                color: Colors.white, fontSize: RZSize.s10),
                          ),
                          Icon(Iconsax.clock, color: Colors.white),
                          Text(
                            '21.99 \u2103',
                            style: TextStyle(
                                color: Colors.white, fontSize: RZSize.s10),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }

  Container _itemInfoSection(
      {int? humidity, int? preassure, int? cloudness, double? wind}) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: RZColors().black.withOpacity(.2),
          borderRadius: BorderRadius.circular(RZSize.s14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _weatherItemInfo(
              icon: Iconsax.icon, value: '$humidity %', title: 'Humadity'),
          _weatherItemInfo(
              icon: Iconsax.speedometer,
              value: '$preassure hpa',
              title: 'Preasure'),
          _weatherItemInfo(
              icon: Iconsax.cloud, value: '$cloudness %', title: 'Cloudness'),
          _weatherItemInfo(
              icon: Iconsax.mouse_1, value: '$wind m/s', title: 'Wind'),
        ],
      ),
    );
  }

  Column _weatherItemInfo({IconData? icon, String? value, String? title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          value ?? '',
          style: const TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        Text(
          title ?? '',
          style: const TextStyle(
              fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  Row _tempSection(
      {String? timeMessage,
      String? userName,
      double? temp,
      String? weatherStatus,
      IconData? weatherIcon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '$timeMessage, $userName',
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '$temp \u2103',
              style: const TextStyle(
                  fontSize: RZSize.s34,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              weatherStatus ?? '',
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 12,
            ),
            Icon(
              weatherIcon,
              color: Colors.white,
              size: 64,
            )
          ],
        )
      ],
    );
  }

  AppBar _appbarSection({String? title}) {
    final date = DateFormat('EEEE, MMMM d, yyyy').format(DateTime.now());
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: const Icon(
        Iconsax.arrow_left,
        color: Colors.white,
      ),
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title ?? 'Bandung',
              style: const TextStyle(
                  fontSize: RZSize.s22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              date,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: RZSize.s12,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: RZSize.s8),
          child: Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
