class Students {
  List<Map<String, String>> people;

  Students(this.people);

  sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  output() {
    people.forEach(print);
    print("\n");
  }

  plus(Map<String, String> person) {
    people.add(person);
  }

  remove(String field) {
    people.removeWhere((person) => person['first'] == field);
  }
}
