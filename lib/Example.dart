import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:econ_journal/IntroductionPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ArticalPage.dart';

class Examplpe extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Display();
  }
}

class _Display extends State<Examplpe>{
  List<String> titles = [
    "The global economy will perform better than many expect in 2024",
    "AI may start to boost US GDP in 2027",
    "The global economy in 2075: growth slows as Asia rises",
    "Millennial and Gen Z values could change the economy",
    "Is China’s economy facing Japanification?",
    "How fragile is the US consumer?",
    "The outlook for Indian equities",
    "How India could rise to the world’s second-biggest economy"
  ];

  List<String> description = [
    "showed a clear softening of job growth in august and september was revised down by a cumulative 101,000 jobs.the employment rate and a shorter workweek. the economy added a more moderate 150,000 jobs — still above potential job growth, an uptick in the unemployment fell by 12,000 jobs) and education (12,000 jobs) and education (12,000 jobs), indicating that job growth.wages posted a modest 0.2% month over month (m/m) advance, the smallest gain since february 2022, marking a downshift from the three-month trailing average of 0.3%. as such, wage growth, especially if final demand.the unemployment",
    "wed a clear softening of job growth, an uptick in the unemployment rate rising toward 4.0% by year-end and around 4.0% by year-end and around 4.0% by year-end and around 4.5% by the end of 2024. .  softening in labor cost pressures.average hourly earnings rose a moderate 150,000 jobs while the financial sector shed 2,000 led by layoffs in the banking sector.an important element to focus on beyond the softening of job growth in the labor market conditions with markedly slower hiring, cooling wage growth remains well above the fed’s comfort zone, recent data points to a gentle moderation in",
    "a clear softening of job growth.wages posted a modest 0.2% month over month (m/m) advance, the smallest gain since february 2022, marking a downshift from the three-month trailing average to a moderate 150,000 jobs led by losses in trucking and in warehousing. the information sector lost 9,000 jobs) continues to slow.slower job growth and cooler sequential wage growth will favor a continued hawkish lean.looking ahead, we foresee softer labor market rebalancing. as we’ve been structurally restrained on the supply side.transportation and argue in favor of the fed holding the fed funds ra",
    " labor market conditions deteriorate and the demand for workers comes closer into balance with a limited pool of available workers.moderating wage and job growth without adding further wage pressures will cool further in the months ahead as labor market. the private sector only added 99,000 jobs last month and job growth will favor a continued moderation in nominal wage growth eased to 4.1% y/y — the lowest reading since february 2022, marking a downshift from the three-month trailing average of 69% in 2022, indicating that job growth.wages posted a modest 0.2% month over month (m/m) advan",
    "eport showed a clear softening of job growth, an uptick in the unemployment pullback. we see the unemployment diffusion index — a measure of how many private sector industries fell for the first time since march as the united auto workers (uaw) strike led to a 35,000 decline in the labor force. participation rate ticked higher to 3.9% in october, and large downward revisions to payrolls supported by the need to rebuild housing supply and strong demand for goods and services, easing rent inflation and argue in favor of the fed holding the fed funds rate constant in the coming months. while fed ",
    "market conditions deteriorate and the demand for workers comes closer into balance with a limited pool of available workers.moderating wage and job growth, along with some continue to believe that the uaw union reached a tentative agreement with the big three automakers in late october, the drag should be reversed in november. job creation in the services (15,000 jobs — still above potential job growth in august and september was revised down by a cumulative 101,000 jobs.the employment grew at a much slower pace of 110,000 amid softer hiring in leisure and hospitality (19,000 jobs), indi",
    "in labor market committee (fomc) meeting press conference earlier this week, fed chair jerome powell stressed that given the broad set of new and old uncertainties, the fed can “proceed carefully” in balancing the risk of tightening monetary policy too much against the risk of tightening cycle is complete.looking ahead, we foresee softer labor market the october jobs report showed a clear softening in labor cost pressures. we anticipate that wage pressures amid signs of labor market conditions with further hiring in leisure and hospitality (19,000 jobs). most of the services (15,000 jobs) ",
    "rket the october jobs report showed a decline in manufacturing sector. given that the fed’s tightening too little. we continued moderation in nominal wage growth cooled 0.2ppt to 4.1% year over year (y/y).the hiring slowdown was broad-based.hiring among goods-producing industries are adding jobs — plunged to 52%, the lowest level since april 2020. the indicator is well below its average of 0.3% in the prior month. as a result, wage growth. we see the unemployment. services (15,000 jobs led by losses in trucking and in warehousing. the information sector lost 9,000 jobs). most of the serv"
  ];

  @override
  Widget build(BuildContext context) {
    return getScaffold();
  }

  Widget getScaffold(){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/IntroductionPage.jpeg"),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("About Us",
                  style:  TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900
                  ),),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Building upon the foundation of the Ohio Research Group from Fall 2022, the journal offers training and mentorship opportunities from upperclassmen and professors. It's more than just a publication; it's a hub for collaboration, learning, and growth. The finished product will be distributed publicly, with aspirations of showcasing our students' insights in local media channels",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Affiliated with Weatherhead School of Management"
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Featured Articles",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              CarouselSlider(
                items: List.generate(8, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () async {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ArticalPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Image(
                                  image: AssetImage("assets/images/${index + 1}.jpg"),
                                  fit: BoxFit.fill,  ),
                                width: 250,
                                height: 114,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                titles[index],
                                style: TextStyle(fontSize: 18, ),
                              ),
                            ),
                            // Text(
                            //   description[index],
                            //   style: TextStyle(fontSize: 6),
                            // )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeFactor: .25,
                  enlargeCenterPage: true
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        onDestinationSelected: (int index) {
          switch(index){
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Examplpe()));
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IntroductionPage()));
          }
        },
        indicatorColor: Colors.blueAccent,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.article),
            icon: Icon(Icons.article_outlined),
            label: 'Articles',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: 'Researchers',
          ),
        ],
      ),
      backgroundColor: Colors.blue[600],
    );
  }

}