import 'package:flutter/material.dart';

class OrganizationalChartScreen extends StatefulWidget {
  const OrganizationalChartScreen({super.key});

  @override
  State<OrganizationalChartScreen> createState() =>
      _OrganizationalChartScreenState();
}

class _OrganizationalChartScreenState extends State<OrganizationalChartScreen> {
  final List<Map<String, dynamic>> _divisions = const [
    {
      'division': 'EXECUTIVE DIVISION',
      'officers': [
        {
          'office': 'Office of the President',
          'position': 'President',
          'name': 'Mr. Mario C. Villanueva'
        },
        {
          'office': 'Office of the Senior Vice President',
          'position': 'Senior Vice President',
          'name': 'Atty. Carlo C. Villanueva, Jr.'
        },
        {
          'office':
              'Office of the Executive Vice President for Institutional Linkages/University Hood',
          'position': 'Executive Vice President',
          'name': 'Aida P. Osea, PhD'
        },
        {
          'office': 'Presidential Affairs Office',
          'position': 'Director',
          'name': 'Ms. Gemma P. Foronda'
        },
        {
          'office': 'Office of President\'s Special Projects',
          'position': 'Vice President for Academic Business Development',
          'name': 'Edwin P. Bernal, PhD'
        },
        {
          'office':
              'Vice President for Sustainability Innovation and Enterprise Development Office',
          'position': 'Vice-President',
          'name': 'Mr. Jason Keith Boñaga'
        },
        {
          'office': 'Certified Nursing Assistant/ Business Development Office',
          'position': 'Consultant',
          'name': 'Mr. Melvin S. Del Puerto'
        },
        {
          'office': 'Center for Rural Entrep and Economic Development (CREED)',
          'position': 'Director',
          'name': 'Mr. Rodolfo R. Baldemor'
        },
        {
          'office':
              'Agri Techno-preneurship Development Center (ATDC)',
          'position': 'Director',
          'name': 'Wenifredo T. Oñate, PhD'
        },
        {
          'office': 'Robotics/AI',
          'position': 'Consultant',
          'name': 'Mr. Joselito S. Ocol'
        },
        {
          'office': 'Typhoon Preparedness Center',
          'position': 'Director',
          'name': 'Mr. David Michael V. Padua'
        },
      ]
    },
    {
      'division': 'ACADEMIC DIVISION',
      'officers': [
        {
          'office': 'Office of the Vice-President for Academic Affairs',
          'position': 'Vice President',
          'name': 'Nora Elizabeth Maniquiz, PhD'
        },
        {
          'office': 'Research, Innovation, Extension & Sustainability (RIES)',
          'position': 'Asst. Vice-President (AVP)',
          'name': 'Mr. Nico A. Ogarte'
        },
        {
          'office': 'Research and Extension',
          'position': 'Director',
          'name': 'Ronel B. Simon, PhD'
        },
        {
          'office': 'Technology Business Incubator',
          'position': 'Director',
          'name': 'Mr. Harvin Ong'
        },
        {
          'office': 'Learning Resource Center/Library',
          'position': 'Chief Librarian',
          'name': 'Ms. Mary Rose Gracilla'
        },
        {
          'office': 'Registrar\'s Office',
          'position': 'Registrar',
          'name': 'Ms. Rea V. Agregado'
        },
        {
          'office': 'Basic Education Department',
          'position': 'AVP for BED/Principal',
          'name': 'Mr. Al Noel L. Asis'
        },
        {
          'office': 'Senior High School',
          'position': 'Assistant Principal',
          'name': 'Ms. Francia B. Gomez'
        },
        {
          'office': 'Junior High School',
          'position': 'Assistant Principal',
          'name': 'Ms. Alita P. Ballarda'
        },
        {
          'office': 'Grade School',
          'position': 'Assistant Principal',
          'name': 'Ms. Francia B. Ruin'
        },
        {
          'office': 'College of Arts and Sciences',
          'position': 'Dean',
          'name': 'Fausto C. Romero Jr., PhD'
        },
        {
          'office': 'College of Accountancy and Finance',
          'position': 'Acting Dean',
          'name': 'Ms. Lorence Aster B. Pellejera'
        },
        {
          'office': 'College of Business and Management',
          'position': 'Dean',
          'name': 'Ryan Bastareche, PhD'
        },
        {
          'office': 'College of Computer Studies',
          'position': 'Dean',
          'name': 'Anna Loretta C. Romulo, PhD'
        },
        {
          'office': 'College of Criminal Justice Education',
          'position': 'AVP for Tertiary Education/Dean',
          'name': 'Marilyn F. Balares, PhD'
        },
        {
          'office': 'College of Engineering',
          'position': 'Dean',
          'name': 'Engr. Monsito G. Ilarde, PhD'
        },
        {
          'office': 'College of Health Sciences',
          'position': 'AVP for Health Sciences/Dean',
          'name': 'Stanley O. Dy, PhD'
        },
        {
          'office': 'College of Teacher Education',
          'position': 'Dean',
          'name': 'Onward O. Ognita, PhD'
        },
        {
          'office': 'Graduate Studies',
          'position': 'AVP for Graduate Studies/Dean',
          'name': 'Josephine Francia R. Villanueva, PhD'
        },
      ]
    },
    {
      'division': 'ADMINISTRATIVE & INSTITUTIONAL AFFAIRS DIVISION',
      'officers': [
        {
          'office':
              'Office of the Vice President for Administrative & Institutional Affairs',
          'position': 'Vice President',
          'name': 'Ms. Teenarose O. Castroverde'
        },
        {
          'office': 'Human Resource Management Office',
          'position': 'Director',
          'name': 'Ms. Maria Elisa B. Arendaing'
        },
        {
          'office': 'Administrative Services',
          'position': 'Director',
          'name': 'Engr. Odelon M. Remoquillo'
        },
        {
          'office': 'Campus Facilities Management',
          'position': 'Head',
          'name': 'Engr. Mark Angelo DJ. Obal'
        },
        {
          'office': 'Laboratory',
          'position': 'Head',
          'name': 'Ms. Ira Armina P. Borigas'
        },
        {
          'office': 'Education Support Services',
          'position': 'Director',
          'name': 'Mr. Roy B. Fabay'
        },
        {
          'office': 'Book Center',
          'position': 'Head',
          'name': 'Ms. Danielle V. Fajardo'
        },
        {
          'office': 'Center for Language and Program Development',
          'position': 'Head',
          'name': 'Ms. Rica Raphaela DR. Villanueva'
        },
        {
          'office': 'Center for Technical Vocational Education',
          'position': 'Coordinator',
          'name': 'Mr. Samson R. Buenaagua'
        },
        {
          'office': 'Driving School',
          'position': 'Head',
          'name': 'Mr. Roy B. Fabay'
        },
        {
          'office': 'Hotel and Food/Catering Services',
          'position': 'Operations Manager',
          'name': 'Ms. Gimalyn R. Corporal'
        },
        {
          'office': 'Tiger\'s Cafe',
          'position': 'Assistant Manager',
          'name': 'Ms. Dianne C. Villanueva'
        },
        {
          'office': 'Student Services/Alumni Affairs',
          'position': 'Director',
          'name': 'Ms. Marivic V. Balance'
        },
        {
          'office': 'Campus Ministry',
          'position': 'School Chaplain',
          'name': 'Fr. Ryan Fenis'
        },
        {
          'office': 'Guidance and Testing Center',
          'position': 'Head',
          'name': 'Ms. Katherine Erika Castillo'
        },
        {
          'office': 'Health Services',
          'position': 'Head',
          'name': 'Dr. Maria Bella A. De Jesus'
        },
        {
          'office': 'Office for Student Affairs',
          'position': 'Head',
          'name': 'Mr. Son B. Reburiano'
        },
      ]
    },
    {
      'division': 'DIGITAL TRANSFORMATION DIVISION',
      'officers': [
        {
          'office':
              'Office of the Vice President for Digital Transformation/Quality Assurance and Training and Development (Micro-credentialing)',
          'position': 'Vice President',
          'name': 'Shiela B. Bordado, PhD'
        },
        {
          'office': 'Training and Development (Micro-credentialing)',
          'position': 'Manager',
          'name': 'Brenn Bacus'
        },
        {
          'office': 'Institutional Marketing and Promotions Office',
          'position': 'AVP',
          'name': 'Mr. Joel C. Villanueva'
        },
        {
          'office': 'Technology Resource Center',
          'position': 'Director',
          'name': 'Mr. Proceso P. Capagas'
        },
      ]
    },
    {
      'division': 'ACCOUNTING AND FINANCE DIVISION',
      'officers': [
        {
          'office': 'Chief Finance Officer',
          'position': 'Chief Finance Officer',
          'name': 'Roger P. Villanueva, PhD, EdD'
        },
        {
          'office': 'Accounting Office',
          'position': 'Finance Manager',
          'name': 'Mr. Rolly I. Villadarez'
        },
        {
          'office': 'Cashier\'s Office',
          'position': 'Head Cashier',
          'name': 'Ms. Mary Ann V. Reyes'
        },
        {
          'office': 'Property Management Office',
          'position': 'Head',
          'name': 'Ms. Marilou R. Lelis'
        },
        {
          'office': 'Purchasing',
          'position': 'Coordinator',
          'name': 'Ms. Johnbe M. Gata'
        },
        {
          'office': 'Safety and Security Office',
          'position': 'Security Officer',
          'name': 'Mr. Dan Emile Villanueva'
        },
      ]
    },
    {
      'division': 'SPORTS, CULTURE AND ARTS DIVISION',
      'officers': [
        {
          'office': 'Office of the VP for Sports, Culture and Arts',
          'position': 'Vice-President',
          'name': 'Nelba O. Olaso, PhD'
        },
        {
          'office': 'Arts Development Center',
          'position': 'Director',
          'name': 'Mr. Mark Franco V. Reyes'
        },
        {
          'office': 'Center for Arts and Culture',
          'position': 'Director',
          'name': 'William M. Espejo, PhD'
        },
        {
          'office': 'School Band',
          'position': 'Band Director',
          'name': 'Mr. Venrich Kenosis P. Hermogeno'
        },
        {
          'office': 'Sports Development Office',
          'position': 'Sports Director',
          'name': 'Mr. Roel R. Rosales'
        },
      ]
    },
  ];

  final Map<int, bool> _expandedDivisions = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _divisions.length,
        itemBuilder: (context, divIndex) {
          final division = _divisions[divIndex];
          final isExpanded = _expandedDivisions[divIndex] ?? false;

          return Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                color: Colors.green[900],
                child: ListTile(
                  leading: Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.white,
                  ),
                  title: Text(
                    division['division'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _expandedDivisions[divIndex] = !isExpanded;
                    });
                  },
                ),
              ),
              if (isExpanded)
                ...List.generate(
                  division['officers'].length,
                  (officerIndex) {
                    final officer = division['officers'][officerIndex];
                    return Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 8),
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        color: Colors.green[700],
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green[600],
                            child: const Icon(Icons.person,
                                color: Colors.white, size: 18),
                          ),
                          title: Text(
                            officer['name'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                officer['position'],
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                              Text(
                                officer['office'],
                                style: const TextStyle(
                                  color: Colors.white60,
                                  fontSize: 10,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          isThreeLine: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}
