import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:valorant_task/models/maps_model.dart';
import 'package:valorant_task/models/weapons_model.dart';

import '../models/agent_model.dart';

class ApiService {
  Future<AgentModel> getAgents() async {
    Uri uri = Uri.parse('https://valorant-api.com/v1/agents');
    http.Response response = await http.get(uri);
    var json = jsonDecode(response.body);
    log(response.body);
    return AgentModel.fromJson(json);
  }
  Future<MapsModel> getMaps() async {
    Uri uri = Uri.parse('https://valorant-api.com/v1/maps');
    http.Response response = await http.get(uri);
    var json = jsonDecode(response.body);
    log(response.body);
    return MapsModel.fromJson(json);
  }
  Future<WeaponsModel> getWeapons() async {
    Uri uri = Uri.parse('https://valorant-api.com/v1/weapons');
    http.Response response = await http.get(uri);
    var json = jsonDecode(response.body);
    log(response.body);
    return WeaponsModel.fromJson(json);
  }
}
