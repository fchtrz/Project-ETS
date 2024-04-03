import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailManajemenScreen extends StatelessWidget {
  // Fungsi untuk membuka link
  void _launchURL() async {
    const url = 'https://manajemen.upnjatim.ac.id/';
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
      path: 'feb@upnjatim.ac.id',
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
        title: Text('Manajemen'),
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
                    backgroundImage: AssetImage('assets/logo-dtl-manajemen.jpeg'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manajemen',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Koordinator Program Studi Manajemen',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Dr. Muhadjir Anwar, M.M., CFP',
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
                    'VISI DAN MISI PROGRAM STUDI MANAJEMEN\n',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Visi Manajemen',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Menjadi salah satu program studi yang unggul dalam pengembangan Ilmu Manajemen yang berkarakter bela negara pada tahun 2024',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Misi Manajemen',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '1. Menyelenggarakan pendidikan bidang manajemen yang berkarakter bela negara\n' +
                    '2. Meningkatkan pengembangan ilmu manajemen melalui kegiatan penelitian\n' +
                    '3. Melaksanakan pengabdian kepada masyarakat melalui karya inovatif berbasis iptek dan kearifan lokal\n' +
                    '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran\n' +
                    '5. Mengembangkan kualitas sumber manusia unggul dalam sikap dan tata nilai, unjuk rasa, penguasaan pengetahuan dan manajerial\n' +
                    '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu\n' +
                    '7. Membangun jejaring dengan institusi baik nasional dan internasional melalui Implementasi kerjasama.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Akreditasi : Unggul',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [],
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/koorprodi-manajemen.png'),
                          radius: 50.0,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Koordinator Program Studi Manajemen',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Dr. Muhadjir Anwar, M.M., CFP',
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
                      Text(
                        'Dosen Program Studi Manajemen',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen1manajemen.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Prof. Dr. Ir. Akhmad Fauzi, MMT, CHRA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen2manajemen.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Prof. Dr. Yuniningsih, SE, M.Si',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen3manajemen.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Dr. Dhani Ichsanuddin Nur, MM, CFP',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen4manajemen.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Dra.Ec. Kustini, M.Si, CHRA',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dosen5manajemen.png'),
                            radius: 50.0,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Dr. Drs.Ec. Gendut Sukarno, MS, CHRA',
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
                            'Instagram : @manajemenupnjatim',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: _launchURL,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Laman Website Resmi : ',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  'https://manajemen.upnjatim.ac.id/',
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
                            onTap: _sendEmail,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Email : ',
                                  style: TextStyle(fontSize: 14),
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
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/mapres1manajemen.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Juara 1 National Economic Business Plan Competition Festival 2022',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '1. Ikhwanda Haikel Radito (Manajemen, 2020).\n' +
                                '2. Gangsar Ragil Tri Waluyo (Manajemen, 2020).\n' +
                                '3. Nailatun Ni’mah (Manajemen, 2020).\n' +
                                '4. Amanda Okky Wijaya (Manajemen, 2020).\n' +
                                '5. Dimas Rangga Dewantara (Manajemen, 2020).\n' +
                                '6. Arealdo Robiq Yustiawan (Manajemen, 2020).\n',
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
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/mapres2manajemen.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '1. Akmat Syaifudin (Manajemen, 2020).\n',
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
                          Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/mapres3manajemen.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Juara 2 Lomba Essay tingkat Nasional Kongres dan Konfernas',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '1. Feri Ardiansyah (Manajemen, 2020).\n',
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
