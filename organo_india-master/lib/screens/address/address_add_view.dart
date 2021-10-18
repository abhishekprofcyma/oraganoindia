import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:organo_india/model/address/city_model.dart';
import 'package:organo_india/model/address/country_model.dart';
import 'package:organo_india/model/address/state_model.dart';
import 'package:organo_india/model/address/village_model.dart';
import 'package:organo_india/screens/widgets/circle_view.dart';
import 'package:organo_india/repo.dart';

import '../../constants.dart';

class AddressAddView extends StatefulWidget {
  @override
  _AddressAddViewState createState() => _AddressAddViewState();
}

class _AddressAddViewState extends State<AddressAddView> {
  Repo repo = Repo();
  List<CountryModelDataCountry>? countryList = [];
  List<StateModelDataState>? stateList = [];
  List<CityModelDataCity>? cityList = [];
  List<VillageModelDataTahsil>? villageList = [];
  VillageModelDataTahsil? villageSelected;
  CityModelDataCity? citySelected;
  StateModelDataState? stateSelected;
  CountryModelDataCountry? countrySelected;
  @override
  void initState() {
    super.initState();
    // Map<String, String> map = Map();
    repo.getCountry(context, Map()).then((value) {
      countryList = [];
      countryList?.addAll(value.data!.country!);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    int listSize = 1;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 56 + 36),
        child: Container(
          color: kSecondaryColor,
          padding: const EdgeInsets.only(top: 26, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              CircleView(
                radius: 36,
                color: Color(0xffB9E1C0),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset("assets/icons/location.svg"),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Choose Current Location")
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Color(0xff919191), width: 1),
                              ),
                              color: Colors.white),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Sr no.",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Color(0xff646464),
                                    decorationStyle: TextDecorationStyle.wavy)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Color(0xff919191), width: 1),
                              ),
                              color: Colors.white),

                          child: Align(
                            alignment: Alignment.topLeft,
                            child: DropdownButton(
                              items: countryList!
                                  .map((CountryModelDataCountry value) {
                                return DropdownMenuItem<
                                    CountryModelDataCountry>(
                                  value: value,
                                  child: Text(value.name ?? ""),
                                );
                              }).toList(),
                              onChanged: (value) {
                                countrySelected =
                                    value as CountryModelDataCountry;
                                setState(() {});
                                Map<String, String> map = Map();
                                map['country_id'] = "${countrySelected?.id}";
                                repo.postState(context, map).then((value) {
                                  stateList = [];
                                  stateList?.addAll(value.data!.state!);
                                  setState(() {});
                                });
                              },
                              hint: Text(countrySelected == null
                                  ? "Select Country"
                                  : countrySelected?.name ?? ""),
                            ),
                          ),
                          // child: TextFormField(
                          //   decoration: InputDecoration(
                          //       hintText: "Country",
                          //       border: InputBorder.none,
                          //       hintStyle: TextStyle(
                          //           color: Color(0xff646464),
                          //           decorationStyle: TextDecorationStyle.wavy)),
                          // ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Color(0xff919191), width: 1),
                              ),
                              color: Colors.white),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: DropdownButton(
                              items:
                                  stateList!.map((StateModelDataState value) {
                                return DropdownMenuItem<StateModelDataState>(
                                  value: value,
                                  child: Text(value.name ?? ""),
                                );
                              }).toList(),
                              onChanged: (value) {
                                stateSelected = value as StateModelDataState;
                                setState(() {});
                                Map<String, String> map = Map();
                                map['state_id'] = "${stateSelected?.id}";
                                repo.postCity(context, map).then((value) {
                                  cityList = [];
                                  cityList?.addAll(value.data!.city!);
                                  setState(() {});
                                });
                              },
                              hint: Text(stateSelected == null
                                  ? "Select State"
                                  : stateSelected?.name ?? ""),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Color(0xff919191), width: 1),
                              ),
                              color: Colors.white),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: DropdownButton(
                              items: cityList!.map((CityModelDataCity value) {
                                return DropdownMenuItem<CityModelDataCity>(
                                  value: value,
                                  child: Text(value.name ?? ""),
                                );
                              }).toList(),
                              onChanged: (value) {
                                citySelected = value as CityModelDataCity;
                                setState(() {});
                                Map<String, String> map = Map();
                                map['city_id'] = "${citySelected?.id}";
                                repo.postVillage(context, map).then((value) {
                                  villageList = [];
                                  villageList?.addAll(value.data!.tahsil!);
                                  setState(() {});
                                });
                              },
                              hint: Text(citySelected == null
                                  ? "Select City"
                                  : citySelected?.name ?? ""),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 0),
                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Color(0xff919191), width: 1),
                              ),
                              color: Colors.white),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: DropdownButton(
                              items: villageList!
                                  .map((VillageModelDataTahsil value) {
                                return DropdownMenuItem<VillageModelDataTahsil>(
                                  value: value,
                                  child: Text(value.name ?? ""),
                                );
                              }).toList(),
                              onChanged: (value) {
                                villageSelected =
                                    value as VillageModelDataTahsil;
                                setState(() {});
                              },
                              hint: Text(villageSelected == null
                                  ? "Select Village"
                                  : villageSelected?.name ?? ""),
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text("Save"),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: kPrimaryColor),
                          ),
                        )
                      ],
                    );
                  }),
              TextButton.icon(
                  onPressed: () {
                    setState(() {
                      listSize = listSize + 1;
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/plus.svg",
                    height: 14,
                  ),
                  label: Text("Add new Address"))
            ],
          ),
        ),
      ),
    );
  }
}
