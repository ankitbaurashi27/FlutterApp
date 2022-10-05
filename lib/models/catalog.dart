
class CatalogModel{

static  List<Item> items =  [
  Item(
    id: "ab001",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th Generation",
    price: 999,
    color: "#33505a",
    image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-pro-r1.jpg",
    )
  ];
}

class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
  
  factory Item.fromMap(Map<String, dynamic> map){
    return Item(
           id : map["id"],
           name: map["name"],
           desc: map["desc"],
           price: map["price"],
           color: map["color"],
           image: map["image"],
    );
  }

  toMap() => {
    "id" : id,
    "name" : name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,
  }; 

}