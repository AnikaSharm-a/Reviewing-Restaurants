// OOP Project: Reviewing Restaurants
// By Anika Sharma

// You are the Reviewer. Please enter your name here: 
String userName = "Anika";

// Main
void setup(){
 
  float budget = Math.round(100.0 * random(5,20)) / 100.0;
  Reviewer r = new Reviewer(userName, budget);  
  
  r.introduceTask();
  fillArrays();
  
  for (int i=0; i<4; i++){
    
    println("\n\n// RESTAURANT VISIT #" + (i+1), "//");
    
    println("\nFor this restaurant, your budget is $" + r.bankBalance);
    
    Restaurant r1 = rests.get(i);
    Owner o1 = owners.get(i); 
    
    o1.createMenu();
    o1.restOwned.qualityAssignment(o1);
    
    o1.welcome();
    o1.restOwned.displayMenu();
    r.orderFood(r1);
    
    println("\n\nWhile waiting for your food, you look around to notice the interior of the restaurant.");
    r.rateAtmosphere();
    r.rateDecor();
    
    println("\n----Some time later----");
    r.reactToFood();
    r.rateFood();
    r.rateService();
    r.payForFood();
    r.finalRating();
    
    // Redoing rating and budget for the next restaurant
    r.currentRating = 0.0;
    r.bankBalance = Math.round(100.0 * random(5,20)) / 100.0;

    println("\n\n// END OF VISIT #" + (i+1), "//");
  }
}


// Fill the restaurant and owner arrays
void fillArrays(){
  String[] types = loadStrings("Restaurant Types.txt");
  String[] names = loadStrings("Names.txt");
  
  
  // 1
  String t1 = types[round(random(types.length-1))];  // Type  
  String on1 = names[round(random(names.length-1))]; // Owner name 
  String e1 = types[round(random(types.length-1))];  // Owner ethnicity

  Restaurant r1 = new Restaurant(assignName(t1), t1, false, "old and bland", false);
  Owner o1 = new Owner(on1, 8.2, r1, e1);
  rests.add(r1);
  owners.add(o1);
  
  
  // 2
  String t2 = types[round(random(types.length-1))];  // Type  
  String on2 = names[round(random(names.length-1))]; // Owner name 
  String e2 = types[round(random(types.length-1))];  // Owner ethnicity
  
  Restaurant r2 = new Restaurant(assignName(t2), t2, true, "modern", false);
  Owner o2 = new Owner(on2, 6.6, r2, e2);
  rests.add(r2);
  owners.add(o2);  
  
  
  // 3
  String t3 = types[round(random(types.length-1))];  // Type  
  String on3 = names[round(random(names.length-1))]; // Owner name 
  String e3 = types[round(random(types.length-1))];  // Owner ethnicity
  
  Restaurant r3 = new Restaurant(assignName(t3), t3, true, "hip and lively", true);
  Owner o3 = new Owner(on3, 2.3, r3, e3);
  rests.add(r3);
  owners.add(o3);
  
  
  // 4
  String t4 = types[round(random(types.length-1))];  // Type  
  String on4 = names[round(random(names.length-1))]; // Owner name 
  String e4 = types[round(random(types.length-1))];  // Owner ethnicity
  
  Restaurant r4 = new Restaurant(assignName(t4), t4, false, "chill and slow", true);
  Owner o4 = new Owner(on4, 2.9, r4, e4);
  rests.add(r4);
  owners.add(o4);
}


// Assign name to the restaurant
String assignName(String t){
  if (t.equals("Greek")) return "El Greco";
  else if (t.equals("Italian")) return "Campania";
  else if (t.equals("Indian")) return "The Curry Lounge";
  else if (t.equals("American")) return "Classic American";
  else if (t.equals("Canadian")) return "Eat North";
  else if (t.equals("Mexican")) return "Zócalo";
  else return "Luminous Wok";
}
