import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff88c5e8),
        appBar: AppBar(
          title: Text('gunung buthak'),
          backgroundColor: Color(0xff88c5e8),
          foregroundColor: Color(0xffebe2e2),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/g_buthak_via.jpeg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat gunung buthak',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff42a0d5),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                    16,
                    0,
                    16,
                    20,
                  ),
                  child: Text(
                    '''Sejarah Singkat Gunung Buthak

Gunung Buthak merupakan salah satu gunung yang berada di
kawasan Jawa Timur, tepatnya di perbatasan Kabupaten
Malang dan Kabupaten Blitar.

Gunung ini memiliki ketinggian sekitar 2.868 meter di atas
permukaan laut (mdpl) dan termasuk dalam kawasan
pegunungan Kawi.

Nama Buthak berasal dari bahasa Jawa yang berarti
botak atau tidak berambut. Nama tersebut dipercaya
berkaitan dengan kondisi beberapa bagian lereng gunung
yang tampak terbuka dan tidak banyak ditumbuhi pepohonan.

Gunung Buthak mulai dikenal sebagai salah satu tujuan
pendakian karena memiliki pemandangan alam yang indah,
seperti hutan pegunungan, padang rumput, dan pemandangan
Gunung Kawi serta gunung-gunung di sekitarnya.

Salah satu kawasan yang terkenal adalah Alas Lali Jiwo,
yaitu kawasan hutan yang juga memiliki cerita dan
kepercayaan masyarakat setempat.

Seiring berkembangnya kegiatan pendakian, beberapa jalur
menuju puncak Gunung Buthak mulai dikenal oleh pendaki,
seperti jalur Panderman, Sirah Kencong, dan Princi.

Hingga sekarang Gunung Buthak menjadi salah satu tempat
yang menarik bagi para pendaki dan pecinta alam, sekaligus
menjadi bagian penting dari keindahan alam pegunungan
Jawa Timur.''',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xffffffff),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff002b60),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1560BD),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xFF1560BD),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Jl. Darmo Ngaliman,\n'
                                    'Desa Pesanggrahan,\n'
                                    'Kecamatan Batu,\n'
                                    'Kota Batu, Jawa Timur 65313.\n'
                                    'Pos Pendakian Gunung Butak Via Panderman',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xFF1560BD),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xFF4F81BD),
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1560BD),
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xFF1560BD),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '082326926498',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1560BD),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 1,
                              color: Color(0xFF4F81BD),
                            ),
                            SizedBox(height: 12),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xFF1560BD),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'vizzvia1@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1560BD),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
