import '../constants.dart';
import 'domain.dart';

class Course {
  final String courseId;
  final String name;
  final String description;
  final String artworkUrl;
  final String difficulty;
  final String contributors;
  final List<Domain> domains;

  Course(this.courseId, this.name, this.description, this.artworkUrl,
      this.difficulty, this.contributors, this.domains);

  Course.fromJson(Map<String, dynamic> json)
      : courseId = json["id"],
        name = json["attributes"]["name"],
        description = json["attributes"]["description_plain_text"],
        artworkUrl = json["attributes"]["card_artwork_url"],
        difficulty = json["attributes"]["difficulty"],
        contributors = json["attributes"]["contributor_string"],
        domains = [] {
    var domainData = json["relationships"]["domains"]["data"] as List<dynamic>;
    if (domainData != null && domainData.length > 0) {
      for (var i = 0; i < domainData.length; i++) {
        var domain =
            Course.getDomain(json["relationships"]["domains"]["data"][i]["id"]);
        domains.add(domain);
      }
    }
  }

  static Domain getDomain(String domainId) {
    switch (domainId) {
      case Constants.iosDomain:
        return Domain.ios;
      case Constants.androidDomain:
        return Domain.android;
      case Constants.unityDomain:
        return Domain.unity;
      case Constants.sssDomain:
        return Domain.sss;
      case Constants.flutterDomain:
        return Domain.flutter;
      case Constants.macOsDomain:
        return Domain.macos;
      case Constants.archiveDomain:
        return Domain.archived;
      default:
        return Domain.unknown;
    }
  }

  get domainString {
    String result = "";
    for (var i = 0; i < domains.length - 1; i++) {
      result += domains[i].name + ", ";
    }
    result += domains.last.name;
    return result;
  }

  @override
  String toString() {
    return name + ": " + domainString;
  }
}
