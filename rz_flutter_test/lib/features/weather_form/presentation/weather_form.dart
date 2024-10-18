import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:rz_flutter_test/features/weather_form/bloc/weather_form_bloc.dart';
import 'package:rz_flutter_test/features/weather_form/data/model/regencies_model.dart';
import 'package:rz_flutter_test/features/weather_info/presentation/weather_info.dart';

class WeatherForm extends StatefulWidget {
  const WeatherForm({super.key});

  @override
  State<WeatherForm> createState() => _WeatherFormState();
}

class _WeatherFormState extends State<WeatherForm> {
  String? idProv;
  RegenciesModel? regenciesModel;
  List<RegenciesModel> listRegen = [];
  final userNameContoller = TextEditingController();

  @override
  void initState() {
    context.read<WeatherFormBloc>().add(GetWeatherFormEvent());
    super.initState();
  }

  @override
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherFormBloc, WeatherFormState>(
        builder: (context, state) {
          if (state is WeatherFormLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is WeatherFormLoadedState) {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/enabled_hi/564x/bc/1c/c2/bc1cc23d3a8684ffd33b2de5e33e5a37.jpg'),
                      fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: _formKey,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white.withOpacity(.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: userNameContoller,
                        decoration: const InputDecoration(
                            labelText: 'Nama Lengkap',
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder()),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nama harus diisi';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      DropdownSearch<String>(
                        items: (filter, infiniteScrollProps) =>
                            state.provinces.map((e) => e.name ?? '').toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Silahkan pilih Provinsi';
                          }
                          return null;
                        },
                        onChanged: (String? selectedItem) {
                          //filter get id from selected item
                          if (selectedItem != null) {
                            final provList = state.provinces
                                .where(
                                    (province) => province.name == selectedItem)
                                .toList();

                            if (provList.isNotEmpty) {
                              idProv = provList.first.id;
                            }

                            setState(() {
                              listRegen = state.regencies
                                  .where(
                                      (regency) => regency.provinceId == idProv)
                                  .toList();
                            });
                          }
                        },
                        decoratorProps: const DropDownDecoratorProps(
                          decoration: InputDecoration(
                            labelText: "Pilih Provinsi",
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        popupProps: const PopupProps.menu(
                            fit: FlexFit.loose,
                            constraints: BoxConstraints(),
                            showSearchBox: true),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownSearch<String>(
                        items: (filter, infiniteScrollProps) =>
                            listRegen.map((e) => e.name ?? '').toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Silahkan pilih Kota';
                          }
                          return null;
                        },
                        onChanged: (String? seletedItem) {
                          final regenList = state.regencies
                              .where((regency) => regency.provinceId == idProv);

                          if (regenList.isNotEmpty) {
                            regenciesModel = regenList.first;
                          }
                        },
                        decoratorProps: const DropDownDecoratorProps(
                          decoration: InputDecoration(
                            labelText: 'Pilih Kota',
                            labelStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        popupProps: const PopupProps.menu(
                            fit: FlexFit.loose,
                            constraints: BoxConstraints(),
                            showSearchBox: true),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll<Color>(
                                    Colors.deepOrange)),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamed(
                                    context, WeatherInfo.routeName,
                                    arguments: WeatherArguments(
                                        userNameContoller.text,
                                        regenciesModel!));
                              }
                            },
                            child: const Text(
                              'Proses',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
