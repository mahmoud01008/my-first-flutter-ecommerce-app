import 'package:flutter/material.dart';

class ProductModel {
  final String image;
  final String title;
  final String price;
  final String reviews;

  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.reviews,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List tabs = ["All", "Category", "Trending", "Best Seller"];

  List<ProductModel> products = [
    ProductModel(
      image: "assets/images/image1.jpg",
      title: "T-Shirt",
      price: "\$300",
      reviews: "55",
    ),
    ProductModel(
      image: "assets/images/image2.jpg",
      title: "Jacket",
      price: "\$100",
      reviews: "666",
    ),
    ProductModel(
      image: "assets/images/image3.jpg",
      title: "Hooded",
      price: "\$400",
      reviews: "323",
    ),
    ProductModel(
      image: "assets/images/image4.jpg",
      title: "Child Jacket",
      price: "\$500",
      reviews: "88",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search and Notification
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 40,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54.withOpacity(0.5),
                          ),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.black54.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.black54.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Banner
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/freed.png"),
                ),
                SizedBox(height: 20),
                // Tabs
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                color: Colors.black54.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                // Horizontal Products
                Container(
                  height: 280,
                  child: ListView.builder(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        products[index].image,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Color(0xFFEF6969),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              products[index].title,
                              style: TextStyle(
                                color: Colors.black54.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.amber, size: 15),
                                Text('(${products[index].reviews})'),
                                SizedBox(width: 10),
                                Text(
                                  products[index].price,
                                  style: TextStyle(
                                    color: Colors.black54.withOpacity(0.5),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Grid Products
                GridView.builder(
                  itemCount: products.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.60,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      products[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xFFEF6969),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            products[index].title,
                            style: TextStyle(
                              color: Colors.black54.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 15),
                              Text('(${products[index].reviews})'),
                              SizedBox(width: 10),
                              Text(
                                products[index].price,
                                style: TextStyle(
                                  color: Colors.black54.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
