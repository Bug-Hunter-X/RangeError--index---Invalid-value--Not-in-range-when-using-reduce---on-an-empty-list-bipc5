```dart
List<int> numbers = [1, 2, 3, 4, 5];
int sum = numbers.fold<int>(0, (int a, int b) => a + b);
print(sum); // Output: 15

// This code will not throw an error if the list is empty:
List<int> emptyNumbers = [];
int emptySum = emptyNumbers.fold<int>(0, (int a, int b) => a + b);
print(emptySum); // Output: 0
```