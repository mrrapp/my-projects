import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nba_api_usage/model/team.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Team> teams = [];
// get teams using future
Future getTeams() async {
  var response = await http.get(Uri.https('balldontlie.io', '/api/v1/teams'));
  var jsonData = jsonDecode(response.body);

  for (var eachTeam in jsonData['data']) {
    final team =
        Team(abbreviation: eachTeam['abbreviation'], city: eachTeam['city']);
  }
  print(response.body);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    getTeams();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
