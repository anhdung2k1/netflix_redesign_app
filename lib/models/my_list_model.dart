class my_list {
  String imageUrl;
  String title;
  String categories;
  int year;
  String country;
  int length;
  String description;
  List<String> screenshots;

  my_list({
    required this.imageUrl,
    required this.title,
    required this.categories,
    required this.year,
    required this.country,
    required this.length,
    required this.description,
    required this.screenshots,
  });
}

final List<my_list> my_lists = [
  my_list(
    imageUrl: 'assets/shigatsu_wa_kimi_no_uso.jpg',
    title: 'Your lie in April',
    categories: 'Fantasy, Sci-fi,romantic',
    year: 2017,
    country: 'JP',
    length: 120,
    description:
    'The movies show the the truth friends, and circumstance between others when they sustaining dismantle',
    screenshots: [
      'assets/your_lie_in_april.png',
      'assets/shigatsu_wa_kimi_no_uso.jpg',
    ],
  ),
  my_list(
    imageUrl: 'assets/nutcracker.jpg',
    title: 'The Nutcracker And The Four Realms',
    categories: 'Adventure, Family, Fantasy',
    year: 2018,
    country: 'USA',
    length: 100,
    description:
    'All Clara wants is a key - a one-of-a-kind key that will unlock a box that holds a priceless gift from her late mother. A golden thread, presented to her at godfather Drosselmeyer\'s annual holiday party, leads her to the coveted key-which promptly disappears into a strange and mysterious parallel world. It\'s there that Clara encounters a soldier named Phillip, a gang of mice and the regents who preside over three Realms: Land of Snowflakes, Land of Flowers, and Land of Sweets. Clara and Phillip must brave the ominous Fourth Realm, home to the tyrant Mother Ginger, to retrieve Clara\'s key and hopefully return harmony to the unstable world.',
    screenshots: [
      'assets/nutcracker_0.jpg',
      'assets/nutcracker_1.jpg',
      'assets/nutcracker_2.jpg',
    ],
  ),
  my_list(
    imageUrl: 'assets/plastic_memories.png',
    title: 'plastic_memories',
    categories: 'Romantic, Fantasy',
    year: 2019,
    country: 'USA',
    length: 100,
    description:
    'Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody\'s slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they\'re two worlds apart when it comes to what they want from life as a toy.',
    screenshots: [
      'assets/plastic_memories.png',
      'assets/plastic_memories_2.png',
    ],
  ),
];