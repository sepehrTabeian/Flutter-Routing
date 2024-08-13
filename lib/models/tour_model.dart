class Tour {
  String name;
  String description;
  String image;
  String price;
  Tour(this.name, this.description, this.image, this.price);
}

List<Tour> fakeTourList = [
  Tour("Iran Tour ", "Welcome to Iran", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTULP5Bc7WgLJ4ZW72gXPVb4ggwl61aparewA&s", "10000"),
  Tour("France Tour ", "Welcome to France", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIJJrv3jQhQ0e_OZ4SYunH06ouO_uCKF7BUw&s", "20000"),
  Tour("Japan Tour ", "Welcome to Japan", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4FichgawfwrnY9Iqrg8W7piwIlxkc-DSthg&s", "30000"),
];