import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailMagisterAkuntansiScreen extends StatelessWidget {
  // Fungsi untuk membuka link
  void _launchURL() async {
    const url = 'https://mak.upnjatim.ac.id/';
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
      path: 'pasca@upnjatim.ac.id',
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
        title: Text('Magister Akuntansi'),
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
                        'Magister Akuntansi',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Koordinator Program Studi Magister Akuntansi',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Dr. Dra. Ec. Siti Sundari, M.Si.',
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
                    'VISI DAN MISI PROGRAM STUDI MAGISTER AKUNTANSI\n',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Visi Program Studi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Menjadi Pusat Pembelajaran Ilmu Akuntansi Jenjang Magister yang Unggul dan Berkarakter Bela Negara Pada tahun 2039',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Misi Program Studi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.\n'
                    '2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS ekonomi dan bisnis.\n'
                    '3. Menyelenggarakan pengabdian kepada masyarakat melalui penerapan TTG berbasis kearifan lokal.\n'
                    '4. Menyelenggarakan tata kelola Jurusan yang baik, dan bersih.\n'
                    '5. Mengembangkan kualitas sumber daya manusia berkarakter bela negara.\n'
                    '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di tingkat Jurusan.\n'
                    '7. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui keunggulan Litdimas.',
                    style: TextStyle(fontSize: 16),
                  ),                
                  SizedBox(height: 10),
                  Text(
                    'Tujuan Program Studi',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1. Menghasilkan lulusan yang profesional serta memiliki kemampuan akademik dan terapan di bidang Akuntansi serta berkarekter Bela Negara.\n'
                    '2. Menggali dan mengembangkan bidang akuntansi, baik secara dasar ilmiah maupun terapan.\n'
                    '3. Menerapkan dan menyebarluaskan bidang akuntansi sebagai solusi terhadap permasalahan masyarakat bisnis.\n'
                    '4. Menerapkan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di PS akuntansi.\n' 
                    '5. Meningkatkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial dalam koridor keilmuan Akuntansi.\n'
                    '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di PS Akuntansi.\n'
                    '7. Menerapkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri yang relevan dengan PS Akuntansi.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Akreditasi : Baik Sekali',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  // Tambahkan foto profil dan teks koordinator dalam satu container
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [],
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/koorprodi-magister-ak.jpg'),
                          radius: 50.0,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Koordinator Program Studi Magister Akuntansi',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Dr. Dra. Ec. Siti Sundari, M.Si.',
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
                        'Dosen Program Studi Magister Akuntansi',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      // Tambahkan foto profil dan teks nama dosen
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen-magister-ak1.png'),
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
                                AssetImage('assets/dosen-magister-ak3.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dr. Hero Priono, S.E., M.Si., Ak., C.A., CMA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dosen-magister-ak4.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dr. Gideon Setyo Budiwitjaksono, M.Si.',
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
                            'Instagram : @famaupnveteran',
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
                                  'https://mak.upnjatim.ac.id/',
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
                                  'pasca@upnjatim.ac.id',
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
                          SizedBox(height: 20),
                          Text(
                            'Tidak ditemukan data terkait mahasiswa berprestasi di dalam website resmi.',
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
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
