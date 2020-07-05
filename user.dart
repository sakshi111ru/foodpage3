class User{
  final String name;
  final String image;
  final String des;
  final String price;
  final double rating;

  User({this.name,this.image,this.des,this.price,this.rating});
}
List <User> getUsersFromServer(){
   List<User>users=[
    
    User(name:'layered Burger',image:'images/food1.jpg',des:'layered cheeze burger with mayonise',price:'300',rating: 4),
    User(name:'French Fries',image:'images/food2.jpg',des:'potato fries with tornado flavour',price:'200',rating: 3),
    User(name:'Avacado chaat',image:'images/food3.jpg',des:'bursting the flavours of chaat  ',price:'150',rating:5),
    User(name:'Tachoes',image:'images/food4.jpg',des:'snack food waffer stuff with filling',price:'250',rating: 3),
    User(name:'italian buffet',image:'images/food5.jpg',des:'italian food stuff platter',price:'800',rating: 4),
    User(name:'Pancake',image:'images/food6.jpeg',des:'flat cake garnissed with honey syrup',price:'400',rating:2),
  ];
  return users;
}
