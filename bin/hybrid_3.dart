import 'package:hybrid_3/hybrid_3.dart' as hybrid_3;
import 'dart:convert';

void main() {
  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
    ''';

  var people = (jsonDecode(json) as List)
      .map((person) => Map<String, String>.from(person))
      .toList();

  hybrid_3.Students students = hybrid_3.Students(people);
  students.output();

  students.sort("first");
  students.output();

  students.sort("last");
  students.output();

  students.sort("email");
  students.output();

  students.plus({
    "first": "Harmanjot",
    "last": "Singh",
    "email": "sing2265@algonquinlive.com"
  });
  students.output();

  students.remove("Harmanjot");
  students.output();
}
