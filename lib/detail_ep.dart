import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailEkScreen extends StatelessWidget {
  // Fungsi untuk membuka link
  void _launchURL() async {
    const url = 'https://ekbang.upnjatim.ac.id/';
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
      path: 'Progdi.ep@gmail.com',
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
        title: Text('Ekonomi Pembangunan'),
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
                    backgroundImage: AssetImage('assets/logo-dtl-ep.jpeg'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ekonomi Pembangunan',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Koordinator Program Studi Ekonomi Pembangunan',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Riko Setya W, S.E., M.M',
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
                    'VISI DAN MISI PROGRAM STUDI EKONOMI PEMBANGUNAN \n',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Visi', // Tambahkan bold di sini
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki karakter bela negara', // Tambahkan bold di sini
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Misi', // Tambahkan bold di sini
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.\nMeningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat.\nMenyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\nMenyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.\nMengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.\nMeningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.', // Tambahkan bold di sini
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tujuan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Menghasilkan lulusan yang kompeten, berdaya saing, dan berkarakter bela negara.\nMenghasilkan penelitian bermutu yang berdaya guna untuk peningkatan kesejahteraan masyarakat.\nMewujudkan kegiatan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\nMengembangkan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.\nMenghasilkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.\nMengembangkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Akreditasi : Unggul',
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
                          backgroundImage: AssetImage('assets/koorprodi-ep.png'), // Perbaiki penutup string
                          radius: 50.0,
                        ),
                        SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Teks Koordinator Program Studi Ekonomi Pembangunan (bold)
                            Text(
                              'Koordinator Program Studi Ekonomi Pembangunan',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            // Teks nama koordinator (tanpa bold)
                            Text(
                              'Riko Setya W, S.E., M.M',
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
                        'Dosen Program Studi Ekonomi Pembangunan',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      // Tambahkan foto profil dan teks nama dosen
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen1ep.jpeg'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Prof. Dr. Syamsul Huda, S.E., M.T.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen2ep.jpg'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dr. Ignatia Martha, S.E., M.E.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen3ep.jpg'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dr. Muchtolifah, S.E., M.P.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen4ep.jpg'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Dr. Ririt Iriani, S.E., M.E.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen5ep.jpg'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20), // Tambahkan jarak horizontal antara foto dan teks
                          Text(
                            'Drs. Ec. Arief Bachtiar, M.Si.',
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
                            'No. Telepon : 0318722432',
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
                                  'https://ekbang.upnjatim.ac.id/#',
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
                                  'Progdi.ep@gmail.com',
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
                                image: AssetImage('assets/mapres1ep.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Best Speaker Nasional Businees Plane Competition',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '1. Amelia Diva Effendy (Administrasi Publik, 2020).\n\n' +
                                    '2. Icha Sinaga (Sistem Informasi, 2020).\n\n' +
                                    '3. Nadia Afny Zuraida (Ekonomi Pembangunan, 2020).\n',
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
                                image: AssetImage('assets/mapres2ep.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Best Team annual National Business Plan Competition Ideas 7',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Universitas Gadjah Mada 2021',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '1. Sarah Adora Febria (Administrasi Publik, 2020).\n\n' +
                                        '2. Azzahra Zulfalinda (Ekonomi Pembangunan, 2020).\n',
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
            ],
          ),
        ),
      ),
    );
  }
}
