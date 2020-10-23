import 'package:healthplus/menu/appointment.dart';
import 'package:healthplus/menu/emergency.dart';
import 'package:healthplus/menu/products.dart';
import 'package:healthplus/menu/services.dart';

class ListData {
  final String title;
  final String uRL;
  final String routeName;
  final String name;

  ListData({
    this.title,
    this.uRL,
    this.routeName,
    this.name,
  });
}

List<ListData> cardsData = [
  ListData(
    title: "Please visit here in Emergency Situation",
    uRL:
        "https://11sdmxpljfy3r23dsezjpp1e-wpengine.netdna-ssl.com/wp-content/uploads/2018/09/HF_BlogIllustration_DentistMedKit_aqua.png",
    routeName: EmergencyPage.routeName,
    name: "Emergency",
  ),
  ListData(
    title: "For regular health checkup or Doctor's appointment",
    uRL:
        "https://www.octalsoftware.co.uk/blog/wp-content/uploads/2019/05/New-Project-1-768x461.jpg",
    routeName: Appointment.routeName,
    name: "Appointment",
  ),
  ListData(
    title: "Check out our heatlh services",
    uRL:
        "https://explore.easyprojects.net/wp-content/uploads/2016/04/Healthcare-Project-Management-Software-1091x640.jpg",
    routeName: Services.routeName,
    name: "Services",
  ),
  ListData(
    title: "Check out our life saving products",
    uRL:
        "https://imcbusiness.com/public/CategoryBanner/V1/Health-Care/health-care-banner-v1.jpg",
    routeName: Products.routeName,
    name: "Products",
  ),
];
