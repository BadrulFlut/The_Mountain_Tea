import 'dart:convert';
import 'package:e_commerce/model/barang_model.dart';
// ignore: depend_on_referenced_packages
import "package:http/http.dart" as http;

class BarangService {
  final String url = 'http://192.168.100.8:8000/api/';

  //Get all data
  Future<List<Barang>> getBarangs() async {
    final response = await http.get(Uri.parse('${url}benda'));
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body);
      return jsonResponse.map((barang) => Barang.fromJson(barang)).toList();
    } else {
      throw Exception('Gagal untuk mengambil data');
    }
  }

  Future<List<Barang>> getCategory({String? category}) async {
    final response =
        await http.get(Uri.parse("${url}benda/category/${category}"));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((barang) => Barang.fromJson(barang)).toList();
    } else {
      throw Exception('Failed to load barang');
    }
  }
}
