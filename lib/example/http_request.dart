import 'dart:convert' as convert;
import 'package:http/http.dart' as http;



void main()async{
  final url = Uri.https(
    'www.googleapis.com',
    '/books/v1/volumes',
    {'q': '{http}'},
  );
final response = await http.get(url);
if(response.statusCode==200){
  final jsonRespose=convert.jsonDecode(response.body);
  final itemCount = jsonRespose['totalItems'];
  print('Number of books about HTTP : $itemCount');
  }else{
  print('REsponse  failed with status: ${response.statusCode}');
  }
}
