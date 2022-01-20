class Question {
  final int id,answer;
  final String question;
  final List<String>options;

  Question ({required this.id, required this.question, required this.answer, required this.options});
}

const List simple_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI development kit created by -----",
    "options": ['Apple', 'Google', 'Facebook', 'microsoft'],
    "answer_index": 1,
  },

  {
    "id": 3,
    "question":
    "When google release Flutter.",
    "options": ['Jan 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },

  {
    "id": 3,
    "question":
    "A memory location that holds a single letter or number. ",
    "options": ['Double', 'Int', 'Char', 'word'],
    "answer_index": 2,
  },

  {
    "id": 4,
    "question":
    "What command do you use to output data to the screen",
    "options": ['Cin', 'Cout >>', 'Cout', 'Output >>'],
    "answer_index": 2,
  },

  {
    "id": 5,
    "question":
    "You are taking a passenger from Brooklyn Bridge Park to the Metropolitan Museum of Art. In general, what would be the most direct route to get there?",
    "options": ['Flatbush Avenue to the Gil Hodges Marine Parkway Bridge',
      'The Brooklyn Bridge to the Franklin D. Roosevelt (FDR) Drive',
      'The Brooklyn-Queens Expressway (BQE) to the Verrazano Bridge',
      'The Brooklyn-Queens Expressway (BQE) to the Williamsburg Bridge'],
    "answer_index": 2,
  },

];