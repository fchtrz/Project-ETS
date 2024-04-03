import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  final String programStudi;

// Fungsi untuk membuka link
  void _launchURL() async {
    const url = 'https://kwu.upnjatim.ac.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url tidak dapat diakses $url';
    }
  }

// Fungsi untuk mengirimkan email
  void _sendEmail()  async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'feb@upnjatim.ac.id',
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Email tidak dapat diakses';
    }
  }

  DetailScreen({required this.programStudi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(programStudi),
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
                    backgroundImage: AssetImage('assets/hima_kwu.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(programStudi, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      // Teks Koordinator Program Studi Kewirausahaan (bold)
                      Text(
                        'Koordinator Program Studi Kewirausahaan',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      // Teks nama koordinator (tanpa bold)
                      Text(
                        'Dr. Hesty Prima Rini, SE., MM.',
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
                    'VISI DAN MISI PROGRAM STUDI KEWIRAUSAHAAN \n', // Tambahkan teks bold di sini
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Visi Keilmuan', // Tambahkan teks bold di sini
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Menjadi program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.\n', // Hapus baris ini jika tidak ingin mempertahankan teks yang tidak tebal
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Misi', // Tambahkan teks bold di sini
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Untuk mewujudkan visi tersebut, selanjutnya dirumuskan misi program studi kewirausahaan sebagai berikut:\n' +
                    '1. Menyelenggarakan dan mengembangkan pendidikan di bidang kewirausahaan yang berbasis digital dan berkarakter bela negara.\n' +
                    '2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat.\n' +
                    '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n' +
                    '4. Menyelenggarakan tata kelola yang baik dan bersih untuk mencapai akuntabilitas pengelolaan anggaran.\n' +
                    '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, kompetensi dan manajerial.\n' +
                    '6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar.\n',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Akreditasi : Baik',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 20), // Tambahkan jarak di bagian bawah agar tidak terlalu dekat dengan akhir layar
                  // Tambahkan foto profil dan teks koordinator dalam satu container
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        
                      ],
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/koorprodi-kwu.png'), // Perbaiki penutup string
                          radius: 50.0,
                        ),
                        SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Teks Koordinator Program Studi Kewirausahaan (bold)
                            Text(
                              'Koordinator Program Studi Kewirausahaan',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            // Teks nama koordinator (tanpa bold)
                            Text(
                              'Dr. Hesty Prima Rini, SE., MM.',
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
                              'Dosen Program Studi Kewirausahaan',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                      SizedBox(height: 20),
                      // Tambahkan foto profil dan teks nama dosen
                      Row(
                        children: [
                          CircleAvatar(
                        backgroundImage: AssetImage('assets/dosen1kwu.jpg'),
                        radius: 50.0,
                      ),
                      SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                      Text(
                              'Arief Budiman, S.AB., M.AB., CMA',
                              style: TextStyle(fontSize: 16),
                            ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                        backgroundImage: AssetImage('assets/dosen2kwu.jpg'),
                        radius: 50.0,
                      ),
                      SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                      Text(
                              'Devinta Nur Arumsari, S.E., M.E',
                              style: TextStyle(fontSize: 16),
                            ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                        backgroundImage: AssetImage('assets/dosen3kwu.jpg'),
                        radius: 50.0,
                      ),
                      SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                      Text(
                              'Egan Evanzha Yudha Amriel, S.Mn., MM',
                              style: TextStyle(fontSize: 16),
                            ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                        backgroundImage: AssetImage('assets/dosen4kwu.jpg'),
                        radius: 50.0,
                      ),
                      SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                      Text(
                              'Muhammad Ahmi Husein S.Si., M.Sc',
                              style: TextStyle(fontSize: 16),
                            ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                        backgroundImage: AssetImage('assets/dosen5kwu.jpg'),
                        radius: 50.0,
                      ),
                      SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                      Text(
                              'Muhammad Ilham Naufal, S.A, MBA',
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
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                              'No. Telepon : (+62) 318722432',
                              style: TextStyle(fontSize: 14),
                            ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: _launchURL, // Ketika teks ditekan, panggil _launchURL
                             child: Row(
                              children: <Widget>[
                                Text(
                                  'Laman Website Resmi : ',
                                  style: TextStyle(fontSize: 14
                                  ),
                                ),
                                Text(
                                    'https://kwu.upnjatim.ac.id/',
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
                                  style: TextStyle(fontSize: 14
                                  ),
                                ),
                                Text(
                                    'feb@upnjatim.ac.id',
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
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                            image: AssetImage('assets/mapres kwu.jpg'),
                            fit: BoxFit.cover,
                            ),
                          ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                              'Medali perak di kompetisi NASPO (National Applied Science Project Olympiad)',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                              '2022 & Medali perunggu di kompetisi AISEEF ',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                              '(Asean Innovative Science and Enterpreneur Fair) 2023',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                                Text(
                                '1. Kriska Savriel Brawijaya (Kwu’22).\n\n' +
                                '2. Mochamad Rayhan Dwi Cahyo (Kwu’22).\n\n' +
                                '3. Rayhan Mauli Al Khudry Pradana (Kwu’22).\n\n' +
                                '4. Muhammad Muzakky Abd. Harits (Kwu’22).\n\n' +
                                '5. Amanda Citrani Aji (Kwu’22).\n',
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
