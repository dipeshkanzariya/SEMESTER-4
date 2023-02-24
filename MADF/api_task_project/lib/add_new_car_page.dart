import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddNewCar extends StatefulWidget {
  Map? map;
  AddNewCar(this.map);

  @override
  State<AddNewCar> createState() => _AddNewCarState();
}

class _AddNewCarState extends State<AddNewCar> {
  var companyController = TextEditingController();
  var nameController = TextEditingController();
  var img1Controller = TextEditingController();
  var img2Controller = TextEditingController();
  var img3Controller = TextEditingController();
  var colorController = TextEditingController();
  var gearboxController = TextEditingController();
  var modelController = TextEditingController();
  var seatController = TextEditingController();
  var typeController = TextEditingController();
  var yearController = TextEditingController();
  var priceController = TextEditingController();
  var ratingController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void initState() {
    companyController.text = widget.map == null ? '' : widget.map!['CarCompany'];
    nameController.text = widget.map == null ? '' : widget.map!['CarName'];
    img1Controller.text = widget.map == null ? '' : widget.map!['CarImg1'];
    img2Controller.text = widget.map == null ? '' : widget.map!['CarImg2'];
    img3Controller.text = widget.map == null ? '' : widget.map!['CarImg3'];
    colorController.text = widget.map == null ? '' : widget.map!['CarColor'];
    gearboxController.text = widget.map == null ? '' : widget.map!['CarGearBox'];
    modelController.text = widget.map == null ? '' : widget.map!['CarModel'];
    seatController.text = widget.map == null ? '' : widget.map!['CarSeat'];
    typeController.text = widget.map == null ? '' : widget.map!['CarType'];
    yearController.text = widget.map == null ? '' : widget.map!['CarYear'];
    priceController.text = widget.map == null ? '' : widget.map!['CarPrice'];
    ratingController.text = widget.map == null ? '' : widget.map!['CarRating'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
            child: Column(
          children: [
            CreateFormFields("Car copmany", "abc def",
                "Please Enter Car company", companyController),
            CreateFormFields("Car Name", "abc def",
                "Please Enter Car Name", nameController),
            CreateFormFields("Car image 1", "image link",
                "Please Enter image 1", img1Controller),
            CreateFormFields("Car image 2", "image link",
                "Please Enter image 2", img2Controller),
            CreateFormFields("Car image 3", "image link",
                "Please Enter Car Name", img3Controller),
            CreateFormFields("Car Color", "color",
                "Please Enter Car color", colorController),
            CreateFormFields("Car gearbox", "auto,manual etc",
                "Please Enter Car gearbox", gearboxController),
            CreateFormFields("Car model", "turbo etc",
                "Please Enter Car model", modelController),
            CreateFormFields("Car seat", "4 , 5 , etc",
                "Please Enter Car seat", seatController),
            CreateFormFields("Car type", "sedan , suv , etc",
                "Please Enter Car type", typeController),
            CreateFormFields("Car year", "16 23 66 ",
                "Please Enter Car year", yearController),
            CreateFormFields("Car price", "1656566566",
                "Please Enter Car price", priceController),
            CreateFormFields("Car Rating", "2",
                "Please Enter Car Rating", ratingController),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue,
                ),
                margin: EdgeInsets.all(15),
                child: TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if(widget.map == null){
                          addCarIntoApi().then((value) {
                            Navigator.of(context).pop(true);
                          },);
                        }
                        else{
                          updateCarIntoApi(widget.map!['id']).then((value) {
                            Navigator.of(context).pop(true);
                          },);
                        }
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )),
              ),
            )
          ],
        )),
      ),
    ));
  }

  Widget CreateFormFields(Name, HintText, validationText, controllerName) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter ${Name} : ",
              style: TextStyle(fontFamily: "f6", fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controllerName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter ${Name}",
                  hintText: HintText),
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return validationText;
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> addCarIntoApi() async {
    Map map = {};
    map['CarCompany'] = companyController.text;
    map['CarName'] = nameController.text;
    map['CarImg1'] = img1Controller.text;
    map['CarImg2'] = img2Controller.text;
    map['CarImg3'] = img3Controller.text;
    map['CarColor'] = colorController.text;
    map['CarGearBox'] = gearboxController.text;
    map['CarModel'] = modelController.text;
    map['CarSeat'] = seatController.text;
    map['CarType'] = typeController.text;
    map['CarYear'] = companyController.text;
    map['CarPrice'] = priceController.text;
    map['CarRating'] = ratingController.text;
    http.Response res = await http.post(Uri.parse("https://631eb51222cefb1edc387662.mockapi.io/Cars"),body: map);
  }

  Future<void> updateCarIntoApi(id) async {
    Map map = {};
    map['CarCompany'] = companyController.text;
    map['CarName'] = nameController.text;
    map['CarImg1'] = img1Controller.text;
    map['CarImg2'] = img2Controller.text;
    map['CarImg3'] = img3Controller.text;
    map['CarColor'] = colorController.text;
    map['CarGearBox'] = gearboxController.text;
    map['CarModel'] = modelController.text;
    map['CarSeat'] = seatController.text;
    map['CarType'] = typeController.text;
    map['CarYear'] = companyController.text;
    map['CarPrice'] = priceController.text;
    map['CarRating'] = ratingController.text;
    http.Response res = await http.put(Uri.parse("https://631eb51222cefb1edc387662.mockapi.io/Cars/$id"),body: map);
  }
}
