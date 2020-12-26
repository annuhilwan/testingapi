import 'package:http/http.dart' as http;
import 'dart:convert';

final dominiourl =
    'https://khiyaar.com/wp-json/wp/v2/posts?_embed&categories=1977';

Future<List> lugares() async {
  final response =
      await http.get(dominiourl, headers: {'Accept': 'application/json'});
  var convertiarjson = jsonDecode(response.body);
  print(convertiarjson);
  return convertiarjson;
}

final urlbusqueda =
    'https://dev.1futurista.com/wp-json/wp/v2/posts?_embed&fields=title,content.rendered&search=';

Future<List> busqueda(query) async {
  final response = await http
      .get(urlbusqueda + query, headers: {'Accept': 'application/json'});
  var convertiarjson = jsonDecode(response.body);
  print(convertiarjson);
  return convertiarjson;
}
