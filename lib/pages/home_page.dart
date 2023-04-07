import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modernlogintute/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget myChip(String text) => Row(
        children: [
          Chip(
            label: Text(text),
            labelPadding:
                const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      );

  Widget toolCard(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://www.indofarm.in/images/tract2.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.32,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return ColoredBox(
                      color: const Color(0x44D3D3D3),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.20,
                        child: const Center(
                            child: Icon(
                          Icons.image,
                          color: Color(0xD5858585),
                          size: 22,
                        )),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Tractor',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rent: 400/day',
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 2,
                  ),
                  Text(
                    'Owner: Manav Shah',
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 2,
                  ),
                ],
              )),
            ]),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverAppBar(
          leading: Icon(Icons.menu),
          title: Text('Rent Tools'),
          actions: [
            Icon(Icons.person_rounded),
            SizedBox(
              width: 15,
            )
          ],
          backgroundColor: primaryGreen,
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: const Color(0x3DADADAD),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: const [
              Icon(Icons.place),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Indus University Campus, Ahmedabad, Gujarat, India',
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 1,
                ),
              ),
            ]),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  myChip('All'),
                  myChip('Tractors'),
                  myChip('Harvestors'),
                ],
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          toolCard(context),
          toolCard(context),
          toolCard(context),
          toolCard(context),
          toolCard(context),
        ])),
        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        )
      ],
    ));
  }
}
