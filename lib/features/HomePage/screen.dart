import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'HomePage.dart';

class CitySearch extends StatefulWidget {
  const CitySearch({super.key});

  @override
  _CitySearchPageState createState() => _CitySearchPageState();
}

class _CitySearchPageState extends State<CitySearch> {
  final _searchController = TextEditingController();
  List _searchResults = [];
  String _location = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged(String text) async {
    final apiKey = '1d599f047d844e08b21175834241404'; // Замените 'YOUR_API_KEY' своим ключом
    final url = Uri.parse('http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$text');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final location = data['location']['name']; // Предполагая, что "location" содержит список
      setState(() {
        _searchResults.add(location);
      });
    } else {
      print('Ошибка при поиске городов: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Locations', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(hintText: 'Введите название города'),
            onSubmitted: _onSearchTextChanged,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {

                final city = _searchResults[index];
                return ListTile(
                  title: Text(city, style: TextStyle(color: Colors.white),),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage('London')
                      )
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[800],
    );
  }
}
