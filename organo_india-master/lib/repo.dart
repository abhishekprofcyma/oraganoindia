import 'package:flutter/material.dart';
import 'package:organo_india/model/address/city_model.dart';
import 'package:organo_india/model/otp/otp_model.dart';
import 'data/api/ApiProvider.dart';
import 'package:organo_india/model/register/register_model.dart';
import 'package:organo_india/model/address/country_model.dart';
import 'package:organo_india/model/address/state_model.dart';

import 'model/address/village_model.dart';

class Repo {
  ApiProvider _apiprovider = ApiProvider();
  Future<OtpModel> sendOTP(
      BuildContext context, Map<String, String> map) async {
    final response = await _apiprovider.post(context, "otp", map);
    return OtpModel.fromJson(response);
  }

  Future<RegisterModel> registerUser(
      BuildContext context, Map<String, String> map) async {
    final response = await _apiprovider.post(context, "register", map);
    return RegisterModel.fromJson(response);
  }

  Future<CountryModel> getCountry(
      BuildContext context, Map<String, String> map) async {
    final response = await _apiprovider.get(context, "country", map);
    return CountryModel.fromJson(response);
  }

  Future<StateModel> postState(
      BuildContext context, Map<String, String> map) async {
    final response = await _apiprovider.post(context, "state", map);
    return StateModel.fromJson(response);
  }

  Future<CityModel> postCity(
      BuildContext context, Map<String, String> map) async {
    final response = await _apiprovider.post(context, "city", map);
    return CityModel.fromJson(response);
  }

  Future<VillageModel> postVillage(
      BuildContext context, Map<String, String> map) async {
    final response = await _apiprovider.post(context, "tahsil", map);
    return VillageModel.fromJson(response);
  }
}
