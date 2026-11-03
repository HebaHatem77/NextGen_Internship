/*
4) Count Numbers (Functions & Map) 
  Write a function called countNumbers that receives a list of integers. 
  The function should return a Map<String, int> containing: 
- Number of positive values 
- Number of negative values 
- Number of zeros 
Example input: [5, -2, 0, 7, -4, 0] 
  Returned Map: 
  positive: 2 
  negative: 2 
  zero: 2 
- Hint: Use a loop and if/else conditions inside the function. 
 */
void main() {
  List<int> numbers = [5, -2, 0, 7, -4, 0];
  print("Numbers list: $numbers");
  Map<String, int> countMap = countNumbers(numbers);
  print("Returned map:");
  for (var key in countMap.keys) {
    print('$key: ${countMap[key]}');
  }
}

Map<String, int> countNumbers(List<int> numbers) {
  Map<String, int> counts = {'positive': 0, 'negative': 0, 'zero': 0};
  for (var number in numbers) {
    if (number > 0) {
      counts['positive'] = counts['positive']! + 1;
    } else if (number < 0) {
      counts['negative'] = counts['negative']! + 1;
    } else {
      counts['zero'] = counts['zero']! + 1;
    }
  }
  return counts;
}
