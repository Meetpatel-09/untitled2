import 'package:flutter/material.dart';
import 'package:untitled/models/catalog_model.dart';
// import 'package:untitled/widgets/drawer.dart';
import 'package:untitled/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
      appBar: AppBar(

        title: const Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.Items.length,
        itemBuilder: (context, index) => ItemWidget(
          name: CatalogModel.Items.first.name,
          decs: CatalogModel.Items.first.desc,
          image: CatalogModel.Items.first.image,
        ),

      )
      // drawer: Drawer(),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
