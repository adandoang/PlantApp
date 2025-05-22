import 'package:flutter/material.dart';
import 'package:plantapp/screens/maps/components/map_page.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _HomePagStateState();
}

class _HomePagStateState extends State<Body> {
  String? alamatDipilih;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Pilih Alamat'),
                IconButton(icon: const Icon(Icons.map, color: Colors.blue,),
                onPressed: () async {
                  final result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MapPage(),));
                  if (result != null) {
                    setState(() {
                      alamatDipilih = result;
                    });
                  }
                }, 
                )
              ],
            ),

            alamatDipilih == null
            ? const Text('Tidak ada alamat yang dipilih')
            : Text(alamatDipilih!)
          ],
        ),
      )),
    );
  }
}