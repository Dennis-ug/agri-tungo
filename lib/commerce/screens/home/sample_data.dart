// //Models
class Category {
  final String name;
  final String img;
  Category({
    required this.img,
    required this.name,
  });
}

// enum Section {
//   recomended,
//   fertilizer,
// }

// class Product {
//   final String name;
//   final String img;
//   final String des; // description
//   final double disc; //discount
//   final double ratng;
//   final double ammount;
//   final Section sec; //section
//   Product({
//     required this.img,
//     required this.ammount,
//     required this.sec,
//     required this.name,
//     required this.des,
//     required this.disc,
//     required this.ratng,
//   });
// }

// //Data structures
List<Category> cats = [
  Category(
    img: 'asset/pngs/beetle 1.png',
    name: 'Pestcide',
  ),
  Category(
    img: 'asset/pngs/fertilizer (2) 1.png',
    name: 'Fertilizer',
  ),
  Category(
    img: 'asset/pngs/seeds 1.png',
    name: 'Seeds',
  ),
  Category(
    img: 'asset/pngs/gardening-tools 1.png',
    name: 'Tools',
  )
];
List<String> tabs = ['Shop', 'Buyers', 'Sell'];
// // List
// List<Product> prods = [
//   Product(
//     sec: Section.recomended,
//     name: '250Ml Katra Fertilize',
//     des:
//         '250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....',
//     disc: 0,
//     ratng: 3,
//     ammount: 54000,
//     img: 'asset/pngs/images (1).png',
//   ),
//   Product(
//     sec: Section.recomended,
//     name: '250Ml Katra Fertilize',
//     des:
//         '250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....',
//     disc: 10,
//     ratng: 5,
//     ammount: 54000,
//     img: 'asset/pngs/card_pic2.png',
//   ),
//   Product(
//     sec: Section.fertilizer,
//     name: '250Ml Katra Fertilize....',
//     des:
//         '250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....',
//     disc: 0,
//     ratng: 3,
//     ammount: 54000,
//     img: 'asset/pngs/images (1).png',
//   ),
//   Product(
//     sec: Section.fertilizer,
//     name: '250Ml Katra Fertilize....',
//     des:
//         '250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....250Ml Katra Fertilize....',
//     disc: 0,
//     ratng: 3,
//     ammount: 54000,
//     img: 'asset/pngs/download (3) edit.png',
//   )
// ];
