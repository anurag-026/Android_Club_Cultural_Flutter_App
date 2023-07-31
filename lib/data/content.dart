import 'package:flutter/widgets.dart';

List<Map> highlights = [
  {'imagePath': 'assets/Varanasi.jpeg'},
  {'imagePath': 'assets/amarnath.jpeg'},
  {'imagePath': 'assets/spitivalleyHP.jpeg'},
  {'imagePath': 'assets/Varanasi.jpeg'},
];

List<Map> states = [
  {
    'imagePath': 'assets/Varanasi.jpeg',
    'placeName': 'Uttar Pradesh',
  },
  {
    'imagePath': 'assets/spitivalleyHP.jpeg',
    'placeName': 'Himachal Pradesh',
  },
  {
    'imagePath': 'assets/state/Uk.jpeg',
    'placeName': 'Uttarakhand',
  },
  {
    'imagePath': 'assets/state/raj.jpeg',
    'placeName': 'Rajasthan',
  },
  {
    'imagePath': 'assets/state/chandi.jpeg',
    'placeName': 'Chandigarh',
  },
  {
    'imagePath': 'assets/state/delhi.jpeg',
    'placeName': 'Delhi',
  },
  {
    'imagePath': 'assets/state/punjab.jpeg',
    'placeName': 'Punjab',
  },
  {
    'imagePath': 'assets/state/har.jpeg',
    'placeName': 'Haryana',
  },
  {
    'imagePath': 'assets/state/Ladakh.jpeg',
    'placeName': 'Ladakh',
  },
  {
    'imagePath': 'assets/amarnath.jpeg',
    'placeName': 'Jammu and Kashmir',
  },
];

List<Map> description = [
  {
    'cat' : 'state',
    'index': 1,
    'imagePath': 'assets/Varanasi.jpeg',
    'placeName': 'Uttar Pradesh',
    'Culture':
        'Uttar Pradesh is a state with a rich and diverse culture, reflecting its long and complex history. The people of Uttar Pradesh are known for their hospitality, their love of music and dance, and their strong attachment to their land. The culture of Uttar Pradesh is a melting pot of different cultures, with influences from Hinduism, Islam, Sikhism, and Jainism. The state is home to many important religious sites, including the Taj Mahal, the Kashi Vishwanath Temple, and the Mathura Krishna Temple. Uttar Pradesh is also home to a number of festivals, including Holi, Diwali, and Durga Puja.',
    'img1': 'assets/clothing/UP.jpeg',
    'img2': '',
  },
  {
    'cat' : 'state',
    'imagePath': 'assets/spitivalleyHP.jpeg',
    'placeName': 'Himachal Pradesh',
      'Culture': 'Himachal Pradesh is a state in India that is known for its rich culture and beautiful natural scenery. The culture of Himachal Pradesh is a blend of Hindu, Buddhist, and tribal influences. The people of Himachal Pradesh are known for their hospitality, their love of music and dance, and their strong attachment to their land. The lifestyle in Himachal Pradesh is a simple one, and people are known to live in harmony with nature.',

  },
  {
    'cat' : 'state',
    'imagePath': 'assets/state/Uk.jpeg',
    'placeName': 'Uttarakhand',
    'Culture':
        'Uttarakhand is a state in India with a rich and diverse culture. The culture is influenced by the state proximity to the Himalayas, and it is characterized by its hospitality, love of music and dance, and strong attachment to the land.',
   
  },
  {
    'cat' : 'state',
    'imagePath': 'assets/state/raj.jpeg',
    'placeName': 'Rajasthan',
    'Culture': 'Rajasthan is a state in India with a rich and vibrant culture. The people of Rajasthan are known for their hospitality, their love of music and dance, and their strong attachment to their land. The culture of Rajasthan is influenced by its history, its geography, and its proximity to other cultures. Some of the most popular aspects of Rajasthani culture include its festivals, its food, its music and dance, and its art and handicrafts.',

  },
  {
    'cat' : 'state',
    'imagePath': 'assets/state/chandi.jpeg',
    'placeName': 'Chandigarh',
     'Culture': 'Chandigarh is a city with a rich and diverse culture, reflecting its location in the Punjab region of India. The city is home to people from all over India, as well as people from other countries, and this diversity is reflected in the city food, art, music, and festivals. Chandigarh is a vibrant and cosmopolitan city, and its culture is constantly evolving.',

  },
  {
    'cat' : 'state',
    'imagePath': 'assets/state/delhi.jpeg',
    'placeName': 'Delhi',
     'Culture': 'Delhi is a city with a rich and diverse culture, reflecting its long and complex history. The city is home to people from all over India, as well as people from other countries, and this diversity is reflected in the city food, art, music, and festivals. Delhi is a vibrant and exciting city, and there is always something to see and do.',

  },
  {

    'cat' : 'state',
    'imagePath': 'assets/state/punjab.jpeg',
    'placeName': 'Punjab',
     'Culture': 'Punjab is a state in India with a rich and vibrant culture. The people of Punjab are known for their hospitality, their love of music and dance, and their strong attachment to their land. The culture of Punjab is influenced by its history, its proximity to the Indus River, and its diverse religious population. Some of the most popular aspects of Punjab culture include its festivals, its food, its music and dance, and its art and handicrafts.',

  },
  {
    'cat' : 'state',
    'imagePath': 'assets/state/har.jpeg',
    'placeName': 'Haryana',
     'Culture': 'Haryana is a state with a rich and diverse culture. The people of Haryana are known for their hospitality, their love of music and dance, and their strong attachment to their land. The culture of Haryana is heavily influenced by its proximity to the Thar Desert, and it features many fresh, local ingredients. Some of the most popular dishes in Haryana include dodha, makki ki roti, sarson ka saag, and lassi. Music and dance are an integral part of the culture of Haryana, and some of the most popular folk dances include jhumar, giddha, and bhangra.',

  },
  {
    'cat' : 'state',
    'imagePath': 'assets/state/Ladakh.jpeg',
    'placeName': 'Ladakh',
     'Culture': 'Ladakh is a region in the Indian Himalayas with a rich and diverse culture. The people of Ladakh are mostly Buddhist, and their culture is influenced by both Tibetan and Indian traditions. The lifestyle in Ladakh is simple and peaceful, and the people are known for their hospitality. Some of the most popular cultural activities in Ladakh include visiting monasteries, attending festivals, and hiking in the mountains.',

  },
  {
    'cat' : 'state',
    'imagePath': 'assets/amarnath.jpeg',
    'placeName': 'Jammu and Kashmir',
    'Culture':
        'Jammu and Kashmir is a state with a rich and diverse culture, influenced by its location in the Himalayas and its proximity to both India and Pakistan. The state is home to a number of different religions, including Hinduism, Islam, Sikhism, and Buddhism, and each of these religions has its own unique cultural traditions.',
  },

];

List<Map> clothing = [
  {
    'imagePath': 'assets/clothing/UP.jpeg',
    'placeName': 'Uttar Pradesh',
    
  },
  {
    'imagePath': 'assets/clothing/hp.jpg',
    'placeName': 'Himachal Pradesh',
  },
  {
    'imagePath': 'assets/clothing/uttarakhand.jpeg',
    'placeName': 'Uttarakhand',
  },
  {
    'imagePath': 'assets/clothing/rajasthan.jpeg',
    'placeName': 'Rajasthan',
  },
  {
    'imagePath': 'assets/clothing/punjab.jpg',
    'placeName': 'Punjab',
  },
  {
    'imagePath': 'assets/clothing/haryana.jpeg',
    'placeName': 'Haryana',
  },
  {
    'imagePath': 'assets/clothing/ladakh.jpeg',
    'placeName': 'Ladakh',
  },
  {
    'imagePath': 'assets/clothing/jk.jpg',
    'placeName': 'Jammu and Kashmir',
  },
];

List<Map> ministry = [
  {
    'name': 'Allahabaad Museum',
    'location': 'Uttar Pradesh',
    'imagePath': 'assets/ministry/allahabad-museum.jpeg'
  },
  {
    'name': 'Archeological Survey of India',
    'location': 'Delhi',
    'imagePath': 'assets/ministry/asi-delhi.jpg'
  },
  {
    'name': 'Central Institute of Buddhist Studies',
    'location': 'Jammu & Kashmir',
    'imagePath': 'assets/ministry/buddhist-insitute.jpeg'
  },
  {
    'name': 'Central institute of Higher Tibetan Studies',
    'location': 'Uttar Pradesh',
    'imagePath': 'assets/ministry/central-institute-of-higher-tibt-inst.jpg'
  },
  {
    'name': 'Centre for Culture resource and Training',
    'location': 'Delhi',
    'imagePath': 'assets/ministry/central-culture-resources-training.jpeg'
  },
  {
    'name': 'Central Secretariat Library',
    'location': 'Delhi',
    'imagePath': 'assets/ministry/central-secretariat-library.webp'
  },
  {
    'name': 'Delhi Public Library',
    'location': 'Delhi',
    'imagePath': 'assets/ministry/delhi-public-library.jpg'
  },
  {
    'name': 'Gandhi Smriti darshan Samiti',
    'location': 'Delhi',
    'imagePath': 'assets/ministry/gandhi-smriti.jpg'
  },
  {
    'name': 'Indira Gandhi National Centre for the Arts',
    'location': 'Delhi',
    'imagePath': 'assets/ministry/indira-gandhi-national-centre.jpg'
  },
];
