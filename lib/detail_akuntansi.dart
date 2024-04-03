import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailAkuntansiScreen extends StatelessWidget {
  // Fungsi untuk membuka link
  void _launchURL() async {
    const url = 'https://akuntansi.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url tidak dapat diakses $url';
    }
  }

  // Fungsi untuk mengirimkan email
  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'akuntansi@upnjatim.ac.id',
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Email tidak dapat diakses';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akuntansi'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/logo-dtl-akuntansi.jpeg'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Akuntansi',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Koordinator Program Studi Akuntansi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Dr. Dra. Ec. Endah Susilowati, M.Si,CfRA',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Profil',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'VISI DAN MISI PROGRAM STUDI AKUNTANSI\n',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Misi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '"Menjadi Jurusan Akuntansi world class Unggul Berkarakter Bela Negara di tahun 2039"\n' +
                        '1. Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional.\n' +
                        '2. Meningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara.\n' +
                        '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset bidang akuntansi dan kearifan lokal.\n' +
                        '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan yang WBK (wilayah bebas korupsi) dan WBBM (wilayah bebas bersih melayani) di Jurusan akuntansi.\n' +
                        '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang akuntansi.\n' +
                        '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di Jurusan akuntansi.\n' +
                        '7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri di bidang akuntansi.\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Visi Keilmuan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Menjadi Program Studi Akuntansi yang Unggul di bidang Ilmu Akuntansi yang Berkarakter Bela Negara pada tahun 2039\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Akreditasi : Unggul',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 20), // Tambahkan jarak di bagian bawah agar tidak terlalu dekat dengan akhir layar
                  // Tambahkan foto profil dan teks koordinator dalam satu container
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [],
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/koorprodi-akuntansi.png'),
                          radius: 50.0,
                        ),
                        SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Teks Koordinator Program Studi Akuntansi (bold)
                            Text(
                              'Koordinator Program Studi Akuntansi',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            // Teks nama koordinator (tanpa bold)
                            Text(
                              'Dr. Dra. Ec. Endah Susilowati, M.Si,CfRA',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      // Teks daftar nama dosen
                      Text(
                        'Dosen Program Studi Akuntansi',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      // Tambahkan foto profil dan teks nama dosen
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen1ak.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Prof. Dr. Sri Trisnaningsih, M.Si, CFrA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen2ak.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Prof. Dr. Indrawati Yuhertiana, MM., Ak. CMA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen3ak.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dra. Ec. Anik Yuliati, M.Aks.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen4ak.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Drs. Ec. Muslimin, M.Si',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen5ak.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dr. Dwi Suhartini, M.Aks. CMA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Kontak Kami',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Instagram : @akuntansiupnjatim',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: _launchURL, // Ketika teks ditekan, panggil _launchURL
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Laman Website Resmi : ',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  'https://akuntansi.upnjatim.ac.id/',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: _sendEmail, // Ketika teks ditekan, panggil _launchURL
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Email : ',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  'akuntansi@upnjatim.ac.id',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Mahasiswa Berprestasi',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 20),
                          // Container untuk menampilkan gambar berbentuk kotak
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              // BoxDecoration untuk menambahkan gambar
                              image: DecorationImage(
                                image: AssetImage('assets/mapres1ak.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Juara I National Accounting Essay Competition 2022',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Komunitas Jago Akuntansi Indonesia (KJAI)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '1. Nathanael Hizkia Ritonga (Akuntansi, 2019).\n\n' +
                                        '2. Siti Salzabila Faizaroh Aizy (Akuntansi, 2019).\n\n' +
                                        '3. Elvita Fitriana Sari (Akuntansi, 2019).\n',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 20),
                          // Container untuk menampilkan gambar berbentuk kotak
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              // BoxDecoration untuk menambahkan gambar
                              image: DecorationImage(
                                image: AssetImage('assets/mapres2ak.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Juara 1 Kompetisi Akuntansi Sebelas Maret (KAS 2022)',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '1. Nathanael Hizkia Ritonga (Akuntansi, 2019).\n\n' +
                                    '2. Siti Salzabila Faizaroh Aizy (Akuntansi, 2019).\n\n' +
                                    '3. Rika Rudiatun (Akuntansi, 2019).\n',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(width: 20),
                          // Container untuk menampilkan gambar berbentuk kotak
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              // BoxDecoration untuk menambahkan gambar
                              image: DecorationImage(
                                image: AssetImage('assets/mapres3ak.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Juara III National Public Essay Competition Reviresco Reformation XXIX',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '1. Alfi Ardiyanti (Akuntansi, 2020).\n',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
