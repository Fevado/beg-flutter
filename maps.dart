// maps are objects that associate keys and values
// Key: Value - 'KeyValue': 'Value'
Map mapOfFilters = {'id1': 'company', 'id2': 'city', 'id3': 'state'};
Map students = {'stu1': 'Ken', 'stu2': 'Ben', 'stu3': 'Kev', 'stu4': 'Vad'};

main() {
  // Changing value of third item with Key of id3
  mapOfFilters['id3'] = 'my filter';
  print('Get filter with id3: ${mapOfFilters['id3']}');

  students['stu3'] = 'Auntyy';
  print('The name of third student is ${students['stu3']}');
}
