class Restaurant {
  
  // Fields
  String name;
  String[] menuItems = new String[6]; // [item1, cost1, item2, cost2, item3, cost3]
  String type;                        // Greek, Italian, etc.
  Boolean furniture;                  // True = new, False = old
  String vibe;                        // modern, chill, old, etc.
  Boolean clean;
  String serverQuality; // Horrible, Ok, Good, Excellent - Determined by how arrogant the owner is
  String foodQuality;   // Worst food ever, It's Aight - Determined by the owner's ethnicity
  
  
  // Constructor
  Restaurant(String n, String t, Boolean f, String v, Boolean c){
    this.name = n;
    this.type = t;
    this.furniture = f;
    this.vibe = v;
    this.clean = c;
  }
  
  
  // Methods

  void qualityAssignment(Owner o){
    // Assigning the quality of the service based on the owner's arrogance
    // If the owner is very arrogant, employees will not have a good time at work = poor service
    // On the other hand, if the owner is not arrogant, the employees like working there = good service
    if (o.arrogance > 8) this.serverQuality = "terrible. You found the owner to be quite arrogant, which affected the service immensely.";
    else if (o.arrogance > 5) this.serverQuality = "okay. You found that the owner is a bit arrogant which reflects in the service.";
    else if (o.arrogance > 3) this.serverQuality = "good. You barely noticed any arrogance in the owner.";
    else if (o.arrogance > 0) this.serverQuality = "excellent! The service is of great quality as the owner is very humble.";
    
    // Assigning the quality of the food based on if the owner is the same ethnicity as the type of food
    // If the owner is Italian, but is running an Indian restaurant, there is a chance they don't know the food well = poor food
    // On the other hand, if the Italian owner is running an Italian restaurant, their food might be better 
    // At the end of the day, the food depends on the chef, so even if the ethnicities match, the food is never up to the reviewer's standards
    // *The reviewer has tasted Gordon Ramsay's food, hence all other dishes are merely subpar*
    if (this.type == o.ethnicity) this.foodQuality = "Eh, it's aight. The owner has the knowledge but Gordon Ramsay's food is so much better.";
    else this.foodQuality = "Horrible. The owner doesn't even know their own food.";
  }
  
  
  String padding( String t, int maxLen ) {
    while( t.length() < maxLen ) {
      t += " ";
    }
    return t;
  }
  
  
  void displayMenu(){
    println("\n-------------------------------------------------");
    for (int i=0; i<6; i+=2){
      println(padding(this.menuItems[i],30), "          $" + this.menuItems[i+1]);
    }
    println("-------------------------------------------------");
  }
  
}
