import 'package:collection/collection.dart' show IterableExtension;
part of tesla;

class VehicleOptionCode {
  const VehicleOptionCode(this.code, this.description);

  final String code;
  final String description;

  @override
  String toString() => "VehicleOptionCode(${code}, ${description})";

  // ignore: constant_identifier_names
  static const VehicleOptionCode MDLS =
      const VehicleOptionCode("MDLS", "Model S");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MS03 =
      const VehicleOptionCode("MS03", "Model S");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MS04 =
      const VehicleOptionCode("MS04", "Model S");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MDLX =
      const VehicleOptionCode("MDLX", "Model X");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MDL3 =
      const VehicleOptionCode("MDL3", "Model 3");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MDLY =
      const VehicleOptionCode("MDLY", "Model Y");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RENA =
      const VehicleOptionCode("RENA", "Region: North America");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RENC =
      const VehicleOptionCode("RENC", "Region: Canada");
  // ignore: constant_identifier_names
  static const VehicleOptionCode REEU =
      const VehicleOptionCode("REEU", "Region: Europe");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD02 =
      const VehicleOptionCode("AD02", "NEMA 14-50");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD04 =
      const VehicleOptionCode("AD04", "European 3-Phase");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD05 =
      const VehicleOptionCode("AD05", "European 3-Phase, IT");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD06 =
      const VehicleOptionCode("AD06", "Schuko (1 phase, 230V 13A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD07 =
      const VehicleOptionCode("AD07", "Red IEC309 (3 phase, 400V 16A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD08 =
      const VehicleOptionCode("AD08", "Blue Charging Adapter");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD09 =
      const VehicleOptionCode("AD09", "Adapter, Swiss (1 phase, 10A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD10 =
      const VehicleOptionCode("AD10", "Adapter, Denmark (1 phase, 13A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD11 =
      const VehicleOptionCode("AD11", "Adapter, Italy (1 phase, 13A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AD15 =
      const VehicleOptionCode("AD15", "Adapter");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADPX2 =
      const VehicleOptionCode("ADPX2", "Type 2 Public Charging Connector");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADX4 =
      const VehicleOptionCode("ADX4", "No European 3-Phase");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADX5 =
      const VehicleOptionCode("ADX5", "European 3-Phase, IT");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADX6 =
      const VehicleOptionCode("ADX6", "No - Adapter, Schuko (1 phase, 13A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADX7 =
      const VehicleOptionCode("ADX7", "No - 3-ph Red IEC309 (3 phase, 16A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADX9 =
      const VehicleOptionCode("ADX9", "No - Adapter, Swiss (1 phase, 10A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ADX8 =
      const VehicleOptionCode("ADX8", "Blue IEC309 (1 phase, 230V 32A)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AF00 =
      const VehicleOptionCode("AF00", "No HEPA Filter");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AF02 =
      const VehicleOptionCode("AF02", "HEPA Filter");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AH00 =
      const VehicleOptionCode("AH00", "No Accessory Hitch");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APE1 =
      const VehicleOptionCode("APE1", "Enhanced Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APF0 =
      const VehicleOptionCode("APF0", "Autopilot Firmware 2.0 Base");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APF1 =
      const VehicleOptionCode("APF1", "Autopilot Firmware 2.0 Enhanced");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APF2 =
      const VehicleOptionCode("APF2", "Full Self-Driving Capability");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APH0 =
      const VehicleOptionCode("APH0", "Autopilot 2.0 Hardware");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APH2 =
      const VehicleOptionCode("APH2", "Autopilot 2.0 Hardware");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APBS =
      const VehicleOptionCode("APBS", "Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APH3 =
      const VehicleOptionCode("APH3", "Autopilot 2.5 Hardware");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APH4 =
      const VehicleOptionCode("APH4", "Autopilot 3.0 Hardware");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APPA =
      const VehicleOptionCode("APPA", "Autopilot 1.0 Hardware");
  // ignore: constant_identifier_names
  static const VehicleOptionCode APPB =
      const VehicleOptionCode("APPB", "Enhanced Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AU00 =
      const VehicleOptionCode("AU00", "No Audio Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AU01 =
      const VehicleOptionCode("AU01", "Ultra High Fidelity Sound");
  // ignore: constant_identifier_names
  static const VehicleOptionCode AU3P =
      const VehicleOptionCode("AU3P", "Sound Studio Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BC0B =
      const VehicleOptionCode("BC0B", "Black Brake Calipers");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BC0R =
      const VehicleOptionCode("BC0R", "Red Brake Calipers");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BC3B =
      const VehicleOptionCode("BC3B", "Black Brake Calipers, Model 3");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BCMB =
      const VehicleOptionCode("BCMB", "Black Brake Calipers");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BCYR =
      const VehicleOptionCode("BCYR", "Performance Brakes");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BG30 =
      const VehicleOptionCode("BG30", "No Badge");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BP00 =
      const VehicleOptionCode("BP00", "No Ludicrous");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BP01 =
      const VehicleOptionCode("BP01", "Ludicrous Speed Upgrade");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BR00 =
      const VehicleOptionCode("BR00", "No Battery Firmware Limit");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BR03 =
      const VehicleOptionCode("BR03", "Battery Firmware Limit (60kWh)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BR05 =
      const VehicleOptionCode("BR05", "Battery Firmware Limit (75kWh)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BS00 =
      const VehicleOptionCode("BS00", "Blind Spot Sensor Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BS01 =
      const VehicleOptionCode("BS01", "Special Production Flag");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BT37 =
      const VehicleOptionCode("BT37", "75 kWh (Model 3)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BT40 =
      const VehicleOptionCode("BT40", "40 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BT60 =
      const VehicleOptionCode("BT60", "60 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BT70 =
      const VehicleOptionCode("BT70", "70 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BT85 =
      const VehicleOptionCode("BT85", "85 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BTX4 =
      const VehicleOptionCode("BTX4", "90 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BTX5 =
      const VehicleOptionCode("BTX5", "75 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BTX6 =
      const VehicleOptionCode("BTX6", "100 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BTX7 =
      const VehicleOptionCode("BTX7", "75 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BTX8 =
      const VehicleOptionCode("BTX8", "85 kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CC01 =
      const VehicleOptionCode("CC01", "Five Seat Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CC02 =
      const VehicleOptionCode("CC02", "Six Seat Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CC04 =
      const VehicleOptionCode("CC04", "Seven Seat Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CC12 =
      const VehicleOptionCode("CC12", "Six Seat Interior with Center Console");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CDM0 =
      const VehicleOptionCode("CDM0", "No CHAdeMO Charging Adaptor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CF00 =
      const VehicleOptionCode("CF00", "High Power Charger");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CF01 =
      const VehicleOptionCode("CF01", "48amp charger");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CH00 =
      const VehicleOptionCode("CH00", "Standard Charger (40 Amp)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CH01 =
      const VehicleOptionCode("CH01", "Dual Chargers (80 Amp)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CH04 =
      const VehicleOptionCode("CH04", "72 Amp Charger (Model S/X)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CH05 =
      const VehicleOptionCode("CH05", "48 Amp Charger (Model S/X)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CH07 =
      const VehicleOptionCode("CH07", "48 Amp Charger (Model 3)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode COL0 =
      const VehicleOptionCode("COL0", "Signature");
  // ignore: constant_identifier_names
  static const VehicleOptionCode COL1 =
      const VehicleOptionCode("COL1", "Solid");
  // ignore: constant_identifier_names
  static const VehicleOptionCode COL2 =
      const VehicleOptionCode("COL2", "Metallic");
  // ignore: constant_identifier_names
  static const VehicleOptionCode COL3 =
      const VehicleOptionCode("COL3", "Tesla Multi-Coat");
  // ignore: constant_identifier_names
  static const VehicleOptionCode COUS =
      const VehicleOptionCode("COUS", "Country: United States");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CONL =
      const VehicleOptionCode("CONL", "Country: Netherlands");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CPW1 =
      const VehicleOptionCode("CPW1", "20\" Performance Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CW00 =
      const VehicleOptionCode("CW00", "Weather Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode CW02 =
      const VehicleOptionCode("CW02", "Weather Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DA00 =
      const VehicleOptionCode("DA00", "No Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DA01 =
      const VehicleOptionCode("DA01", "Active Safety (ACC,LDW,SA)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DA02 =
      const VehicleOptionCode("DA02", "Autopilot Convenience Features");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DCF0 =
      const VehicleOptionCode("DCF0", "Autopilot Convenience Features (DCF0)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DRLH =
      const VehicleOptionCode("DRLH", "Left Hand Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode BC3R =
      const VehicleOptionCode("BC3R", "Performance Brakes");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DRRH =
      const VehicleOptionCode("DRRH", "Right Hand Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DSH5 =
      const VehicleOptionCode("DSH5", "Dashboard");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DSH7 =
      const VehicleOptionCode("DSH7", "Alcantara Dashboard Accents");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DSHG =
      const VehicleOptionCode("DSHG", "PUR Dash Pad");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DU00 =
      const VehicleOptionCode("DU00", "Drive Unit - IR");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DU01 =
      const VehicleOptionCode("DU01", "Drive Unit - Infineon");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DV2W =
      const VehicleOptionCode("DV2W", "Rear-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode DV4W =
      const VehicleOptionCode("DV4W", "All-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FC3P =
      const VehicleOptionCode("FC3P", "Front Console Front Console (Premium)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FG00 =
      const VehicleOptionCode("FG00", "No Exterior Lighting Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FG01 =
      const VehicleOptionCode("FG01", "Fog Lamps");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FG02 =
      const VehicleOptionCode("FG02", "Fog Lamps");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FG31 =
      const VehicleOptionCode("FG31", "Fog Lamps");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FM3B =
      const VehicleOptionCode("FM3B", "Performance Package (Model 3)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FMP6 = const VehicleOptionCode("FMP6", "FMP6");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FR01 =
      const VehicleOptionCode("FR01", "Base Front Row");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FR02 =
      const VehicleOptionCode("FR02", "Ventilated Front Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FR03 = const VehicleOptionCode("FR03", "FR03");
  // ignore: constant_identifier_names
  static const VehicleOptionCode FR04 = const VehicleOptionCode("FR04", "FR04");
  // ignore: constant_identifier_names
  static const VehicleOptionCode GLFR =
      const VehicleOptionCode("GLFR", "Assembly");
  // ignore: constant_identifier_names
  static const VehicleOptionCode HC00 =
      const VehicleOptionCode("HC00", "No Home Charging installation");
  // ignore: constant_identifier_names
  static const VehicleOptionCode HC01 =
      const VehicleOptionCode("HC01", "Home Charging Installation");
  // ignore: constant_identifier_names
  static const VehicleOptionCode HM31 =
      const VehicleOptionCode("HM31", "Teck Package - Homelink");
  // ignore: constant_identifier_names
  static const VehicleOptionCode HL31 =
      const VehicleOptionCode("HL31", "Head Lamp (Model 3)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode HP00 =
      const VehicleOptionCode("HP00", "No HPWC Ordered");
  // ignore: constant_identifier_names
  static const VehicleOptionCode HP01 =
      const VehicleOptionCode("HP01", "HPWC Ordered");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ID3W =
      const VehicleOptionCode("ID3W", "(Model 3) Wood Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDBA =
      const VehicleOptionCode("IDBA", "Dark Ash Wood Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDBO =
      const VehicleOptionCode("IDBO", "Figured Ash Wood Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDCF =
      const VehicleOptionCode("IDCF", "Carbon Fiber Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDOK =
      const VehicleOptionCode("IDOK", "Oak Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDOM =
      const VehicleOptionCode("IDOM", "Matte Obeche Wood Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDOG =
      const VehicleOptionCode("IDOG", "Gloss Obeche Wood Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDLW =
      const VehicleOptionCode("IDLW", "Lacewood Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IDPB =
      const VehicleOptionCode("IDPB", "Piano Black Decor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IN3BB =
      const VehicleOptionCode("IN3BB", "All Black Partial Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IN3PB =
      const VehicleOptionCode("IN3PB", "All Black Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INBBW =
      const VehicleOptionCode("INBBW", "White");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INBFP =
      const VehicleOptionCode("INBFP", "Classic Black");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INBPP =
      const VehicleOptionCode("INBPP", "Black");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INBTB =
      const VehicleOptionCode("INBTB", "Multi-Pattern Black");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INFBP =
      const VehicleOptionCode("INFBP", "Black Premium");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INLPC =
      const VehicleOptionCode("INLPC", "Cream");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INLPP =
      const VehicleOptionCode("INLPP", "Black / Light Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INWPT =
      const VehicleOptionCode("INWPT", "Tan Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INYPB =
      const VehicleOptionCode("INYPB", "All Black Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode INYPW =
      const VehicleOptionCode("INYPW", "Black and White Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IL31 =
      const VehicleOptionCode("IL31", "Interior Ambient Lighting");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IVBPP =
      const VehicleOptionCode("IVBPP", "All Black Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IVBSW =
      const VehicleOptionCode("IVBSW", "Ultra White Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IVBTB =
      const VehicleOptionCode("IVBTB", "All Black Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IVLPC =
      const VehicleOptionCode("IVLPC", "Vegan Cream");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IX00 =
      const VehicleOptionCode("IX00", "No Extended Nappa Leather Trim");
  // ignore: constant_identifier_names
  static const VehicleOptionCode IX01 =
      const VehicleOptionCode("IX01", "Extended Nappa Leather Trim");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LLP1 = const VehicleOptionCode("LLP1", "LLP1");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LLP2 = const VehicleOptionCode("LLP2", "LLP2");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LP00 =
      const VehicleOptionCode("LP00", "Lighting Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LP01 =
      const VehicleOptionCode("LP01", "Lighting Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT00 =
      const VehicleOptionCode("LT00", "Vegan interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT01 =
      const VehicleOptionCode("LT01", "Standard interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT1B =
      const VehicleOptionCode("LT1B", "Lower Trim");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT3W = const VehicleOptionCode("LT3W", "LT3W");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT4B = const VehicleOptionCode("LT4B", "LT4B");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT4C = const VehicleOptionCode("LT4C", "LT4C");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT4W = const VehicleOptionCode("LT4W", "LT4W");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT5C = const VehicleOptionCode("LT5C", "LT5C");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT5P = const VehicleOptionCode("LT5P", "LT5P");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT6P = const VehicleOptionCode("LT6P", "LT6P");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LT6W =
      const VehicleOptionCode("LT6W", "White Base Lower Trim");
  // ignore: constant_identifier_names
  static const VehicleOptionCode LTPB =
      const VehicleOptionCode("LTPB", "Lower Trim PUR Black");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ME01 =
      const VehicleOptionCode("ME01", "Memory Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ME02 =
      const VehicleOptionCode("ME02", "Seat Memory");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MI00 =
      const VehicleOptionCode("MI00", "2015 Production Refresh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MI00_0 =
      const VehicleOptionCode("MI00_0", "Project/Program Code M3");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MI01 =
      const VehicleOptionCode("MI01", "2016 Production Refresh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MI02 =
      const VehicleOptionCode("MI02", "2017 Production Refresh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MI03 =
      const VehicleOptionCode("MI03", "201? Production Refresh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MR31 =
      const VehicleOptionCode("MR31", "Tech Package - Mirror -YES");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MT300 =
      const VehicleOptionCode("MT300", "Standard Range Rear-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MT301 =
      const VehicleOptionCode("MT301", "Standard Range Plus Rear-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MT302 =
      const VehicleOptionCode("MT302", "Long Range Rear-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MT303 =
      const VehicleOptionCode("MT303", "Long Range All-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MT304 = const VehicleOptionCode(
      "MT304", "Long Range All-Wheel Drive Performance");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MT305 =
      const VehicleOptionCode("MT305", "Mid Range Rear-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MTY02 =
      const VehicleOptionCode("MTY02", "Long Range Rear-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MTY03 =
      const VehicleOptionCode("MTY03", "Long Range All-Wheel Drive");
  // ignore: constant_identifier_names
  static const VehicleOptionCode MTY04 = const VehicleOptionCode(
      "MTY04", "Long Range All-Wheel Drive Performance");
  // ignore: constant_identifier_names
  static const VehicleOptionCode OSSB =
      const VehicleOptionCode("OSSB", "Safety CA Black");
  // ignore: constant_identifier_names
  static const VehicleOptionCode OSSW =
      const VehicleOptionCode("OSSW", "Safety CA White");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PA00 =
      const VehicleOptionCode("PA00", "No Paint Armor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PBCW =
      const VehicleOptionCode("PBCW", "Solid White Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PBSB =
      const VehicleOptionCode("PBSB", "Solid Black Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PBT8 =
      const VehicleOptionCode("PBT8", "Performance 85kWh");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PC30 =
      const VehicleOptionCode("PC30", "No Performance Chassis");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PC31 =
      const VehicleOptionCode("PC31", "Performance Chassis");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PF00 =
      const VehicleOptionCode("PF00", "No Performance Legacy Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PF01 =
      const VehicleOptionCode("PF01", "Performance Legacy Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PI00 =
      const VehicleOptionCode("PI00", "No Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PI01 =
      const VehicleOptionCode("PI01", "Premium Upgrades Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PK00 =
      const VehicleOptionCode("PK00", "Parking Sensors");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMAB =
      const VehicleOptionCode("PMAB", "Anza Brown Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMBL =
      const VehicleOptionCode("PMBL", "Obsidian Black Multi-Coat Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMMB =
      const VehicleOptionCode("PMMB", "Monterey Blue Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMMR =
      const VehicleOptionCode("PMMR", "Red Multi-Coat Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMNG =
      const VehicleOptionCode("PMNG", "Midnight Silver Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMSG =
      const VehicleOptionCode("PMSG", "Green Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMSS =
      const VehicleOptionCode("PMSS", "San Simeon Silver Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PMTG =
      const VehicleOptionCode("PMTG", "Dolphin Grey Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PPMR =
      const VehicleOptionCode("PPMR", "Red Multi-Coat Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PPSB =
      const VehicleOptionCode("PPSB", "Deep Blue Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PPSR =
      const VehicleOptionCode("PPSR", "Signature Red Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PPSW =
      const VehicleOptionCode("PPSW", "Pearl White Multi-Coat Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PPTI =
      const VehicleOptionCode("PPTI", "Titanium Metallic Color");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PL30 =
      const VehicleOptionCode("PL30", "No Aluminum Pedal");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PL31 =
      const VehicleOptionCode("PL31", "Performance Pedals");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PRM30 =
      const VehicleOptionCode("PRM30", "Partial Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PRM31 =
      const VehicleOptionCode("PRM31", "Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PRM3S =
      const VehicleOptionCode("PRM3S", "Standard Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PRMY1 =
      const VehicleOptionCode("PRMY1", "Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PS00 =
      const VehicleOptionCode("PS00", "No Parcel Shelf");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PS01 =
      const VehicleOptionCode("PS01", "Parcel Shelf");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RS3H =
      const VehicleOptionCode("RS3H", "Second Row Seat Rear Seats (Heated)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PX00 =
      const VehicleOptionCode("PX00", "No Performance Plus Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PX01 =
      const VehicleOptionCode("PX01", "Performance Plus");
  // ignore: constant_identifier_names
  static const VehicleOptionCode PX6D =
      const VehicleOptionCode("PX6D", "Zero to 60 in 2.5 sec");
  // ignore: constant_identifier_names
  static const VehicleOptionCode P85D = const VehicleOptionCode("P85D", "P85D");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QLBS =
      const VehicleOptionCode("QLBS", "Black Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QLFC =
      const VehicleOptionCode("QLFC", "Cream Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QLFP =
      const VehicleOptionCode("QLFP", "Black Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QLFW =
      const VehicleOptionCode("QLFW", "White Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QLWS =
      const VehicleOptionCode("QLWS", "White Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QNET =
      const VehicleOptionCode("QNET", "Tan NextGen");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QPBT =
      const VehicleOptionCode("QPBT", "Black Textile Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QPMP =
      const VehicleOptionCode("QPMP", "Black seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTBS =
      const VehicleOptionCode("QTBS", "Black Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTBW =
      const VehicleOptionCode("QTBW", "White Premium Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTFC =
      const VehicleOptionCode("QTFC", "Cream Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTFP =
      const VehicleOptionCode("QTFP", "Black Premium Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTFW =
      const VehicleOptionCode("QTFW", "White Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTPC =
      const VehicleOptionCode("QTPC", "Cream Premium Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTPP =
      const VehicleOptionCode("QTPP", "Black Premium Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTPT =
      const VehicleOptionCode("QTPT", "Tan Premium Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTTB =
      const VehicleOptionCode("QTTB", "Multi-Pattern Black Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QTWS =
      const VehicleOptionCode("QTWS", "White Premium Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QVBM =
      const VehicleOptionCode("QVBM", "Multi-Pattern Black Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QVPC =
      const VehicleOptionCode("QVPC", "Vegan Cream Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QVPP =
      const VehicleOptionCode("QVPP", "Vegan Cream Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode QVSW =
      const VehicleOptionCode("QVSW", "White Tesla Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RCX0 =
      const VehicleOptionCode("RCX0", "No Rear Console");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RCX1 =
      const VehicleOptionCode("RCX1", "Rear Console");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RF3G =
      const VehicleOptionCode("RF3G", "Model 3 Glass Roof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RFBK =
      const VehicleOptionCode("RFBK", "Black Roof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RFBC =
      const VehicleOptionCode("RFBC", "Body Color Roof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RFFG =
      const VehicleOptionCode("RFFG", "Glass Roof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RFP0 =
      const VehicleOptionCode("RFP0", "All Glass Panoramic Roof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RFP2 =
      const VehicleOptionCode("RFP2", "Sunroof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode RFPX =
      const VehicleOptionCode("RFPX", "Model X Roof");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S01B =
      const VehicleOptionCode("S01B", "Black Textile Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S02B = const VehicleOptionCode("S02B", "Seat");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S02P = const VehicleOptionCode("S02P", "S02P");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S07W =
      const VehicleOptionCode("S07W", "White Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S31B = const VehicleOptionCode("S31B", "S31B");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S32C = const VehicleOptionCode("S32C", "S32C");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S32P = const VehicleOptionCode("S32P", "S32P");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S32W = const VehicleOptionCode("S32W", "S32W");
  // ignore: constant_identifier_names
  static const VehicleOptionCode S3PB =
      const VehicleOptionCode("S3PB", "Seat Black PUR Premium Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SC00 =
      const VehicleOptionCode("SC00", "No Supercharging");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SC01 =
      const VehicleOptionCode("SC01", "Supercharging Enabled");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SC04 =
      const VehicleOptionCode("SC04", "Pay Per Use Supercharging");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SC05 =
      const VehicleOptionCode("SC05", "Free Supercharging");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SLR0 =
      const VehicleOptionCode("SLR0", "No Rear Spoiler");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SP00 =
      const VehicleOptionCode("SP00", "No Security Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SR01 =
      const VehicleOptionCode("SR01", "Standard 2nd row");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SR06 =
      const VehicleOptionCode("SR06", "Seven Seat Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SR07 =
      const VehicleOptionCode("SR07", "Standard 2nd row");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ST00 =
      const VehicleOptionCode("ST00", "Non-leather Steering Wheel");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ST01 =
      const VehicleOptionCode("ST01", "Non-heated Leather Steering Wheel");
  // ignore: constant_identifier_names
  static const VehicleOptionCode ST31 =
      const VehicleOptionCode("ST31", "Steering Wheel");
  // ignore: constant_identifier_names
  static const VehicleOptionCode STCP =
      const VehicleOptionCode("STCP", "Steering Wheel");
  // ignore: constant_identifier_names
  static const VehicleOptionCode STY5S =
      const VehicleOptionCode("STY5S", "Five Seat Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode STY7S =
      const VehicleOptionCode("STY7S", "Seven Seat Interior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SU00 =
      const VehicleOptionCode("SU00", "Standard Suspension");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SU01 =
      const VehicleOptionCode("SU01", "Smart Air Suspension");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SU3C =
      const VehicleOptionCode("SU3C", "Suspension");
  // ignore: constant_identifier_names
  static const VehicleOptionCode T3MA =
      const VehicleOptionCode("T3MA", "Tires M3");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TIC4 =
      const VehicleOptionCode("TIC4", "Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TIG2 =
      const VehicleOptionCode("TIG2", "Summer Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TIM7 =
      const VehicleOptionCode("TIM7", "Summer Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TIMP =
      const VehicleOptionCode("TIMP", "Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TIP0 =
      const VehicleOptionCode("TIP0", "All-season Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TM00 =
      const VehicleOptionCode("TM00", "Model Trim");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TM02 =
      const VehicleOptionCode("TM02", "General Production Signature Trim");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TM0A =
      const VehicleOptionCode("TM0A", "ALPHA PRE-PRODUCTION NON-SALEABLE");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TM0B =
      const VehicleOptionCode("TM0B", "BETA PRE-PRODUCTION NON-SALEABLE");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TM0C =
      const VehicleOptionCode("TM0C", "PRE-PRODUCTION SALEABLE");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TP01 =
      const VehicleOptionCode("TP01", "Tech Package - No Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TP02 =
      const VehicleOptionCode("TP02", "Tech Package with Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TP03 =
      const VehicleOptionCode("TP03", "Tech Package with Enhanced Autopilot");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TR00 =
      const VehicleOptionCode("TR00", "No Rear Facing Seats");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TR01 =
      const VehicleOptionCode("TR01", "Third Row Seating");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TRA1 =
      const VehicleOptionCode("TRA1", "Third Row HVAC");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TW00 =
      const VehicleOptionCode("TW00", "No Tow Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode TW01 =
      const VehicleOptionCode("TW01", "Tow Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UM01 = const VehicleOptionCode(
      "UM01", "Universal Mobile Charger - US Port (Single)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UT3P =
      const VehicleOptionCode("UT3P", "Suede Grey Premium Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UTAB =
      const VehicleOptionCode("UTAB", "Black Alcantara Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UTAW =
      const VehicleOptionCode("UTAW", "Light Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UTMF =
      const VehicleOptionCode("UTMF", "Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UTPB =
      const VehicleOptionCode("UTPB", "Dark Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UTSB =
      const VehicleOptionCode("UTSB", "Dark Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode UTZW =
      const VehicleOptionCode("UTZW", "Light Headliner");
  // ignore: constant_identifier_names
  static const VehicleOptionCode USSB =
      const VehicleOptionCode("USSB", "Safety");
  // ignore: constant_identifier_names
  static const VehicleOptionCode USSW =
      const VehicleOptionCode("USSW", "US Safety Kit White");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SLR1 =
      const VehicleOptionCode("SLR1", "Carbon Fibre Spoiler");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SPT31 =
      const VehicleOptionCode("SPT31", "Performance Upgrade");
  // ignore: constant_identifier_names
  static const VehicleOptionCode SPTY1 =
      const VehicleOptionCode("SPTY1", "Performance Upgrade");
  // ignore: constant_identifier_names
  static const VehicleOptionCode W32P =
      const VehicleOptionCode("W32P", "20\" Performance Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode W38B =
      const VehicleOptionCode("W38B", "18\" Aero Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode W39B =
      const VehicleOptionCode("W39B", "19\" Sport Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WR00 =
      const VehicleOptionCode("WR00", "No Wrap");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WT19 =
      const VehicleOptionCode("WT19", "19\" Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WT20 =
      const VehicleOptionCode("WT20", "20\" Silver Slipstream Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WT22 =
      const VehicleOptionCode("WT22", "22\" Silver Turbine Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTAB =
      const VehicleOptionCode("WTAB", "21\" Black Arachnid Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTAS =
      const VehicleOptionCode("WTAS", "19\" Silver Slipstream Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTDS =
      const VehicleOptionCode("WTDS", "19\" Grey Slipstream Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTNN =
      const VehicleOptionCode("WTNN", "20\" Nokian Winter Tires (non-studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTNS =
      const VehicleOptionCode("WTNS", "20\" Nokian Winter Tires (studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTP2 =
      const VehicleOptionCode("WTP2", "20\" Pirelli Winter Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTSC =
      const VehicleOptionCode("WTSC", "20\" Sonic Carbon Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTSG =
      const VehicleOptionCode("WTSG", "21\" Turbine Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTSP =
      const VehicleOptionCode("WTSP", "21\" Turbine Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTSS =
      const VehicleOptionCode("WTSS", "21\" Turbine Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTTB =
      const VehicleOptionCode("WTTB", "19\" Cyclone Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTTC =
      const VehicleOptionCode("WTTC", "21\" Sonic Carbon Twin Turbine Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTUT =
      const VehicleOptionCode("WTUT", "22\" Onyx Black Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW2 =
      const VehicleOptionCode("WTW2", "19\" Nokian Winter Wheel Set");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW3 =
      const VehicleOptionCode("WTW3", "19\" Pirelli Winter Wheel Set");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW4 =
      const VehicleOptionCode("WTW4", "19\" Winter Tire Set");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW5 =
      const VehicleOptionCode("WTW5", "21\" Winter Tire Set");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW6 =
      const VehicleOptionCode("WTW6", "19\" Nokian Winter Tires (studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW7 =
      const VehicleOptionCode("WTW7", "19\" Nokian Winter Tires (non-studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTW8 =
      const VehicleOptionCode("WTW8", "19\" Pirelli Winter Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WTX1 =
      const VehicleOptionCode("WTX1", "19\" Michelin Primacy Tire Upgrade");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXNN = const VehicleOptionCode(
      "WXNN", "No 20\" Nokian Winter Tires (non-studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXNS =
      const VehicleOptionCode("WXNS", "No 20\" Nokian Winter Tires (studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXP2 =
      const VehicleOptionCode("WXP2", "No 20\" Pirelli Winter Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW2 = const VehicleOptionCode(
      "WXW2", "No 19\" Wheels with Nokian Winter Tyres");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW3 = const VehicleOptionCode(
      "WXW3", "No 19\" Wheels with Pirelli Winter Tyres");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW4 =
      const VehicleOptionCode("WXW4", "No 19\" Winter Tire Set");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW5 =
      const VehicleOptionCode("WXW5", "No 21\" Winter Tire Set");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW6 =
      const VehicleOptionCode("WXW6", "No 19\" Nokian Winter Tires (studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW7 = const VehicleOptionCode(
      "WXW7", "No 19\" Nokian Winter Tires (non-studded)");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WXW8 =
      const VehicleOptionCode("WXW8", "No 19\" Pirelli Winter Tires");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WY18B =
      const VehicleOptionCode("WY18B", "18\" Aero Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WY19B =
      const VehicleOptionCode("WY19B", "19\" Sport Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode WY20P =
      const VehicleOptionCode("WY20P", "20\" Performance Wheels");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X001 =
      const VehicleOptionCode("X001", "Override: Power Liftgate");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X003 =
      const VehicleOptionCode("X003", "Maps & Navigation");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X004 =
      const VehicleOptionCode("X004", "Override: No Navigation");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X007 =
      const VehicleOptionCode("X007", "Daytime running lights");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X010 =
      const VehicleOptionCode("X010", "Base Mirrors");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X011 =
      const VehicleOptionCode("X011", "Override: Homelink");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X012 =
      const VehicleOptionCode("X012", "Override: No Homelink");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X013 =
      const VehicleOptionCode("X013", "Override: Satellite Radio");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X014 =
      const VehicleOptionCode("X014", "Override: No Satellite Radio");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X019 =
      const VehicleOptionCode("X019", "Carbon Fiber Spoiler");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X020 =
      const VehicleOptionCode("X020", "No Performance Exterior");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X021 =
      const VehicleOptionCode("X021", "No Rear Carbon Fiber Spoiler");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X024 =
      const VehicleOptionCode("X024", "Performance Package");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X025 =
      const VehicleOptionCode("X025", "Performance Powertrain");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X027 =
      const VehicleOptionCode("X027", "Lighted Door Handles");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X028 =
      const VehicleOptionCode("X028", "Battery Badge");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X029 =
      const VehicleOptionCode("X029", "Remove Battery Badge");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X030 =
      const VehicleOptionCode("X030", "Override: No Passive Entry Pkg");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X031 =
      const VehicleOptionCode("X031", "Keyless Entry");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X037 =
      const VehicleOptionCode("X037", "Powerfolding Mirrors");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X039 =
      const VehicleOptionCode("X039", "DAB Radio");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X040 =
      const VehicleOptionCode("X040", "No DAB Radio");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X041 =
      const VehicleOptionCode("X041", "No Auto Presenting Door");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X042 =
      const VehicleOptionCode("X042", "Auto Presenting Door");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X043 =
      const VehicleOptionCode("X043", "No Phone Dock Kit");
  // ignore: constant_identifier_names
  static const VehicleOptionCode X044 =
      const VehicleOptionCode("X044", "Phone Dock Kit");
  // ignore: constant_identifier_names
  static const VehicleOptionCode YF00 =
      const VehicleOptionCode("YF00", "No Yacht Floor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode YF01 =
      const VehicleOptionCode("YF01", "Matching Yacht Floor");
  // ignore: constant_identifier_names
  static const VehicleOptionCode YFCC = const VehicleOptionCode("YFCC", "YFCC");
  // ignore: constant_identifier_names
  static const VehicleOptionCode YFFC =
      const VehicleOptionCode("YFFC", "Integrated Center Console");
  static const VehicleOptionCode UNKNOWN = const VehicleOptionCode("UNKNOWN", "<UNKNOWN>>");

  static const List<VehicleOptionCode> values = const <VehicleOptionCode>[
    MDLS,
    MS03,
    MS04,
    MDLX,
    MDL3,
    MDLY,
    RENA,
    RENC,
    REEU,
    AD02,
    AD04,
    AD05,
    AD06,
    AD07,
    AD08,
    AD09,
    AD10,
    AD11,
    AD15,
    ADPX2,
    ADX4,
    ADX5,
    ADX6,
    ADX7,
    ADX9,
    ADX8,
    AF00,
    AF02,
    AH00,
    APE1,
    APF0,
    APF1,
    APF2,
    APH0,
    APH2,
    APBS,
    APH3,
    APH4,
    APPA,
    APPB,
    AU00,
    AU01,
    AU3P,
    BC0B,
    BC0R,
    BC3B,
    BCMB,
    BCYR,
    BG30,
    BP00,
    BP01,
    BR00,
    BR03,
    BR05,
    BS00,
    BS01,
    BT37,
    BT40,
    BT60,
    BT70,
    BT85,
    BTX4,
    BTX5,
    BTX6,
    BTX7,
    BTX8,
    CC01,
    CC02,
    CC04,
    CC12,
    CDM0,
    CF00,
    CF01,
    CH00,
    CH01,
    CH04,
    CH05,
    CH07,
    COL0,
    COL1,
    COL2,
    COL3,
    COUS,
    CONL,
    CPW1,
    CW00,
    CW02,
    DA00,
    DA01,
    DA02,
    DCF0,
    DRLH,
    BC3R,
    DRRH,
    DSH5,
    DSH7,
    DSHG,
    DU00,
    DU01,
    DV2W,
    DV4W,
    FC3P,
    FG00,
    FG01,
    FG02,
    FG31,
    FM3B,
    FMP6,
    FR01,
    FR02,
    FR03,
    FR04,
    GLFR,
    HC00,
    HC01,
    HM31,
    HL31,
    HP00,
    HP01,
    ID3W,
    IDBA,
    IDBO,
    IDCF,
    IDOK,
    IDOM,
    IDOG,
    IDLW,
    IDPB,
    IN3BB,
    IN3PB,
    INBBW,
    INBFP,
    INBPP,
    INBTB,
    INFBP,
    INLPC,
    INLPP,
    INWPT,
    INYPB,
    INYPW,
    IL31,
    IVBPP,
    IVBSW,
    IVBTB,
    IVLPC,
    IX00,
    IX01,
    LLP1,
    LLP2,
    LP00,
    LP01,
    LT00,
    LT01,
    LT1B,
    LT3W,
    LT4B,
    LT4C,
    LT4W,
    LT5C,
    LT5P,
    LT6P,
    LT6W,
    LTPB,
    ME01,
    ME02,
    MI00,
    MI00_0,
    MI01,
    MI02,
    MI03,
    MR31,
    MT300,
    MT301,
    MT302,
    MT303,
    MT304,
    MT305,
    MTY02,
    MTY03,
    MTY04,
    OSSB,
    OSSW,
    PA00,
    PBCW,
    PBSB,
    PBT8,
    PC30,
    PC31,
    PF00,
    PF01,
    PI00,
    PI01,
    PK00,
    PMAB,
    PMBL,
    PMMB,
    PMMR,
    PMNG,
    PMSG,
    PMSS,
    PMTG,
    PPMR,
    PPSB,
    PPSR,
    PPSW,
    PPTI,
    PL30,
    PL31,
    PRM30,
    PRM31,
    PRM3S,
    PRMY1,
    PS00,
    PS01,
    RS3H,
    PX00,
    PX01,
    PX6D,
    P85D,
    QLBS,
    QLFC,
    QLFP,
    QLFW,
    QLWS,
    QNET,
    QPBT,
    QPMP,
    QTBS,
    QTBW,
    QTFC,
    QTFP,
    QTFW,
    QTPC,
    QTPP,
    QTPT,
    QTTB,
    QTWS,
    QVBM,
    QVPC,
    QVPP,
    QVSW,
    RCX0,
    RCX1,
    RF3G,
    RFBK,
    RFBC,
    RFFG,
    RFP0,
    RFP2,
    RFPX,
    S01B,
    S02B,
    S02P,
    S07W,
    S31B,
    S32C,
    S32P,
    S32W,
    S3PB,
    SC00,
    SC01,
    SC04,
    SC05,
    SLR0,
    SP00,
    SR01,
    SR06,
    SR07,
    ST00,
    ST01,
    ST31,
    STCP,
    STY5S,
    STY7S,
    SU00,
    SU01,
    SU3C,
    T3MA,
    TIC4,
    TIG2,
    TIM7,
    TIMP,
    TIP0,
    TM00,
    TM02,
    TM0A,
    TM0B,
    TM0C,
    TP01,
    TP02,
    TP03,
    TR00,
    TR01,
    TRA1,
    TW00,
    TW01,
    UM01,
    UT3P,
    UTAB,
    UTAW,
    UTMF,
    UTPB,
    UTSB,
    UTZW,
    USSB,
    USSW,
    SLR1,
    SPT31,
    SPTY1,
    W32P,
    W38B,
    W39B,
    WR00,
    WT19,
    WT20,
    WT22,
    WTAB,
    WTAS,
    WTDS,
    WTNN,
    WTNS,
    WTP2,
    WTSC,
    WTSG,
    WTSP,
    WTSS,
    WTTB,
    WTTC,
    WTUT,
    WTW2,
    WTW3,
    WTW4,
    WTW5,
    WTW6,
    WTW7,
    WTW8,
    WTX1,
    WXNN,
    WXNS,
    WXP2,
    WXW2,
    WXW3,
    WXW4,
    WXW5,
    WXW6,
    WXW7,
    WXW8,
    WY18B,
    WY19B,
    WY20P,
    X001,
    X003,
    X004,
    X007,
    X010,
    X011,
    X012,
    X013,
    X014,
    X019,
    X020,
    X021,
    X024,
    X025,
    X027,
    X028,
    X029,
    X030,
    X031,
    X037,
    X039,
    X040,
    X041,
    X042,
    X043,
    X044,
    YF00,
    YF01,
    YFCC,
    YFFC,
    UNKNOWN
  ];

  static VehicleOptionCode lookup(String code) {
    return values.firstWhere((c) => c.code == code, orElse: () => UNKNOWN);
  }
}
