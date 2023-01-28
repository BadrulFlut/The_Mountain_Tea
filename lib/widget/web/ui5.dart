import 'package:e_commerce/model/barang_model.dart';
import 'package:e_commerce/service/barang_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui5 extends StatefulWidget {
  const Ui5({super.key});

  @override
  State<Ui5> createState() => _Ui5State();
}

class _Ui5State extends State<Ui5> {
  final BarangService barangService = BarangService();
  List<Barang> barangs = [];

  @override
  void initState() {
    getBarangs();
    super.initState();
  }

  Future<void> getBarangs() async {
    barangs = await barangService.getBarangs();
    setState(() {});
    return Future.value();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.green,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 2,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.coffee,
                    size: 24.0,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 100,
                    height: 2,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Text(
                'Our Products',
                style: GoogleFonts.courgette(fontSize: 40),
              ),
            )),
            SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemCount: barangs.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final barang = barangs[index];
                      if (barangs.isNotEmpty) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 160.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          barang.image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.blue[400],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: Text(
                                            barang.name,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.greenAccent,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          barang.description,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Center(
                          child: Text(
                            'Product is empty chat admin when\nmore information',
                            style: GoogleFonts.montserrat(
                                fontSize: 15, color: Colors.white),
                          ),
                        );
                      }
                    }))
          ],
        ),
      ),
    );
  }
}
