import 'dart:async';
import 'dart:convert';
import 'dart:io';

class DogCEOClient {
  Future<String> loadBreedImageURL(String breed) async {
    String url = "http://dog.ceo/api/breed/${breed}/images/random";
    HttpClient httpClient = HttpClient();

    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    HttpClientResponse response = await request.close();
    if (response.statusCode != HttpStatus.OK) {
      throw 'Error getting IP address:\nHttp status ${response.statusCode}';
    }
    String json = await response.transform(utf8.decoder).join();
    Map data = jsonDecode(json);
    return data['message'];
  }
}
