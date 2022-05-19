//Домашнее задание по функциям 5.4

void main() {
  var myString = ['dart', 'abc', 'good luck'];

  count(myString);
}

void count(List input) {
  var output2 = List<int>.filled(input.length, 0);
  // Массив - словарь соответствия знака и числового значения.
  //Числовое значение знака равняется индексу в массиве этого знака
  var abc = [
    ' ',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  for (var i = 0; i < input.length; i++) {
// входящий массив (input) раскладываем на знаки
    input[i].split("").forEach((element) {
// пишем формулу по правилом которой идет подсчет
      output2[i] = (searchInABC(element, abc) * (i + 1)) + output2[i];
    });
  }
// печатаем ответ
  print(output2);
}

// функция получает на входе input значение (знак)
// в соответствии со словарем abc находит числовое значение соответствующему входящему знаку и возвращает его
searchInABC(String input, List abc) {
  for (var i = 0; i < abc.length; i++) {
    if (abc[i] == input) {
      return i;
    }
  }
}
