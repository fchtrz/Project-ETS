import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'detail_kewirausahaan.dart';
import 'detail_akuntansi.dart';
import 'detail_ep.dart';
import 'detail_manajemen.dart';
import 'detail_magister_akuntansi.dart'; 
import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas Ekonomi dan Bisnis UPN "Veteran" Jawa Timur',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ProfilFakultasScreen(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfilFakultasScreen extends StatelessWidget {
  final List<String> visiMisi = [
    'Visi: Menjadi fakultas unggulan dalam pengembangan ilmu ekonomi dan bisnis berbasis teknologi informasi pada tingkat nasional dan internasional.',
    'Misi: \n1. Menyelenggarakan pendidikan tinggi dalam ilmu ekonomi dan bisnis berbasis teknologi informasi yang bermutu.\n2. Melakukan penelitian dan pengabdian kepada masyarakat dalam pengembangan ilmu ekonomi dan bisnis berbasis teknologi informasi.\n3. Mengembangkan tata kelola fakultas yang baik dan akuntabel dalam mendukung tercapainya visi dan misi fakultas.\n4. Menjalin kemitraan yang strategis dengan berbagai pihak dalam pengembangan ilmu ekonomi dan bisnis berbasis teknologi informasi.'
  ];

  @override
  Widget build(BuildContext context) {
    List<String> prodiNames = ['Kewirausahaan', 'Akuntansi', 'Ekonomi Pembangunan', 'Manajemen', 'Magister Akuntansi'];
    List<String> prodiImages = [
      'assets/logo-dtl-kwu.jpeg',
      'assets/logo-akuntansi.png',
      'assets/logo-dtl-ep.jpeg',
      'assets/logo-manajemen.png',
      'assets/logo-akuntansi.png',
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Fakultas Ekonomi dan Bisnis', // Teks yang ditambahkan di atas header gambarnya
              style: TextStyle(
                fontWeight: FontWeight.bold, // Teks ditebalkan
                fontSize: 24.0, // Ukuran font 24
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.5), // Warna bayangan teks
                    blurRadius: 2, // Radius blur
                    offset: Offset(2, 2), // Offset bayangan (x, y)
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(
              'assets/banner-feb.jpeg', // Path gambar header yang lebih besar dan lebih lebar
              width: MediaQuery.of(context).size.width, // Lebar gambar mengikuti lebar layar
              height: 200, // Tinggi gambar tetap 200
              fit: BoxFit.cover, // Memastikan gambar memenuhi lebar dan tinggi yang ditentukan
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sejarah',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Fakultas Ekonomi Universitas Pembangunan Nasional “Veteran” Jatim, merupakan salah satu Fakultas tertua dan memiliki student body terbanyak di lingkungan Universitas Pembangunan Nasional “Veteran” Jawa Timur. Fakultas Ekonomi didirikan pada tahun 1956, dengan nama Akademi Administrasi Perusahaan “Veteran” (AAPV). Dicantumkannya kata-kata “Veteran” disini karena didirikan oleh para veteran pejuang dan pembela kemerdekaan dengan maksud untuk dijadikan monument hidup. Seiring dengan perkembangan waktu AAPV berubah menjadi Perguruan Tinggi Pembangunan Nasional “Veteran” (PTPN “Veteran”) dan memiliki 2 (dua) fakultas, yaitu Fakultas Ekonomi dan Fakultas Pertanian, yang pada akhirnya sampai sekarang menggunakan nama Universitas Pembangunan Nasional “Veteran” Jatim (UPN “Veteran” Jawa Timur) dimana Fakultas Ekonomi bernaung di bawahnya. Fakultas Ekonomi UPN “Veteran” Jawa Timur telah berperan aktif dalam mengembangkan dan mempunyai andil besar dalam mencerdaskan. Telah banyak alumni yang dihasilkan dan terserap di berbagai sektor. Dan Sejak tanggal 4 April 2013, berdasarkan SK Rektor Fakultas Ekonomi UPN “Veteran” Jawa Timur berubah menjadi Fakultas Ekonomi Dan Bisnis.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Visi dan Misi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Visi dan Misi'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VISI\n\nMenjadi Fakultas Ekonomi Dan Bisnis yang unggul berkarakter Bela Negara.\n\nVisi merupakan guidelines bagi seluruh civitas akademika dalam menyelenggarakan tugas tridharmanya untuk mencapai cita-cita bersama dalam kurun waktu yang telah disepakati yaitu 25 tahun. Makna visi dalam mencapai keunggulan tridharmanya yang akan mengantarkan ke World Class University yang dilandasi dengan nilai-nilai karakter bela negara.\n\n.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ), 
                        SizedBox(height: 10),
                        Text(
                          '\nMISI\n\nBerdasarkan pada visi FEB UPNVJT maka di tetapkan misi sebagaiberikut:\n\n1. Menyelenggarakan dan mengembangkan pendidikan berkarakter bela negara guna membentuk Pelajar Pancasila;\n2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat;\n3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal;\n4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan;\n5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial;\n6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu serta tersedianya infrastruktur dan fasilitas pendidikan yang berkeadilan dan dapat menunjang kebutuhan inklusi;\n7. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luarnegeri.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Tutup'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ketuk untuk melihat Visi dan Misi',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Berikut ini adalah beberapa prodi dari fakultas FEB :',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 6.0,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailScreen(programStudi: 'Kewirausahaan',)),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailAkuntansiScreen()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailEkScreen()),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailManajemenScreen()),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailMagisterAkuntansiScreen()),
                      );
                      break;
                    default:
                  }
                },
                child: Card(
                  elevation: 5.0,
                  child: Ink(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailScreen(programStudi: 'Kewirausahaan',)),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailAkuntansiScreen()),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailEkScreen()),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailManajemenScreen()),
                            );
                            break;
                          case 4:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailMagisterAkuntansiScreen()),
                            );
                            break;
                          default:
                        }
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'prodi_image_${prodiNames[index]}',
                              child: Material(
                                elevation: 5.0,
                                child: Ink.image(
                                  image: AssetImage(prodiImages[index]),
                                  width: 100, // Lebar gambar diubah menjadi 100
                                  height: 100, // Tinggi gambar diubah menjadi 100
                                  fit: BoxFit.contain, // Mengubah nilai fit menjadi BoxFit.contain
                                  child: InkWell(
                                    onTap: () {
                                      switch (index) {
                                        case 0:
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailScreen(programStudi: 'Kewirausahaan',)),
                                          );
                                          break;
                                        case 1:
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailAkuntansiScreen()),
                                          );
                                          break;
                                        case 2:
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailEkScreen()),
                                          );
                                          break;
                                        case 3:
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailManajemenScreen()),
                                          );
                                          break;
                                        case 4:
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DetailMagisterAkuntansiScreen()),
                                          );
                                          break;
                                        default:
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text(
                                prodiNames[index],
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.5),
                                      blurRadius: 2,
                                      offset: Offset(1, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Kontak Kami',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('feb@upnjatim.ac.id'),
            onTap: () {
              launch('mailto:feb@upnjatim.ac.id');
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Website Resmi'),
            subtitle: Text('https://febis.upnjatim.ac.id/'),
            onTap: () {
              launch('https://febis.upnjatim.ac.id/');
            },
          ),
        ],
      ),
    );
  }
}
