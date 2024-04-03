import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailProfilePage(profileNumber: 1)),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/fachturozi.jpeg'), 
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fachturozi', 
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '22082010021', 
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailProfilePage(profileNumber: 2)),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/adam.jpg'), 
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adam Idhofi Rakasiwi', 
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '22082010026', 
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailProfilePage extends StatelessWidget {
  final int profileNumber;

  const DetailProfilePage({Key? key, required this.profileNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Map<String, String> profileDetails1 = {
      'Nama                 ': 'Fachturozi',
      'TTL                  ': 'Pasuruan, 23-06-2004',
      'Alamat               ': 'Jl. Kedinding Lor GG Bougenvil No. 29',
      'No. HP               ': ' 082236333847',
      'Email                ': 'fachturozi2004@gmail.com / 22082010021@student.upnjatim.ac.id',
      'Url Profil Github    ': 'https://github.com/fchtrz',
      'Riwayat Pendidikan   ': '2019-2022     :  SMA Negeri 19 Surabaya \n\n'
                                'Sekarang       : UPN Veteran Jawa Timur \n',
      'Penghargaan          ': '-',
    };

    Map<String, String> profileDetails2 = {
      'Nama                ': 'Adam Idhofi Rakasiwi',
      'TTL                 ': 'Jombang,10-12-2003',
      'Alamat              ': 'Jln Kusuma Pasar Baru 1 No. 17',
      'No. HP              ': ' 081999752814',
      'Email               ': 'adamraka221@gmail.com / 22082010026@student.upnjatim.ac.id',
      'Url Profil Github   ': 'https://github.com/AdamIdhofi',
      'Riwayat Pendidikan  ': '2019-2022             :  SMK Negeri 3 Surabaya \n\n'
                              '2022 - sekarang    :  UPN Veteran Jawa Timur \n',
      'Penghargaan         ': '-',
    };

    Map<String, String> profileDetails = profileNumber == 1 ? profileDetails1 : profileDetails2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profil'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: profileDetails.entries
            .map(
              (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        entry.key,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (entry.key.contains('Url Profil Github')) {
                            launchURL(entry.value);
                          } else if (entry.key.contains('Email')) {
                            launchEmail(entry.value);
                          }
                        },
                        child: Text(
                          entry.value,
                          style: TextStyle(fontSize: 14, color: entry.key.contains('Url Profil Github') || entry.key.contains('Email') ? Colors.blue : null),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );

    var emailUrl = params.toString();

    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }
}
