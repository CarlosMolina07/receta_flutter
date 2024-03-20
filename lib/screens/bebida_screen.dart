import 'package:flutter/material.dart';
import 'package:receta/config/helpers/get_petition.dart';
import 'package:receta/widget/lista_widget.dart';

class BebidaScreen extends StatefulWidget{
  BebidaScreen({super.key});

  @override
  State<BebidaScreen> createState() => _BebidaScreenState();
}

class _BebidaScreenState extends State<BebidaScreen> {

  final petition = GetPetition();

  List<dynamic> items = [
    "Uno", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete"
  ];

  void getData() async {
    var response = await petition.getBebida();
    items = response["drinks"];
    setState(() {});
  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              Container(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(items[index]["strDrinkThumb"],
                       width: size.width * 0.2,
                      ),
                     
                    ),
                    SizedBox(width: 10,),
                    Text(items[index]['strDrink'])
                  ],
                ),
              ),
            ],
          );
        }),
    );
  }
}