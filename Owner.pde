class Owner {
 
  // Fields
  String name;
  float arrogance;  // 0-10 (none to very)
  Restaurant restOwned;
  String ethnicity; 
  
  
  // Constructor
  Owner(String n, float a, Restaurant r, String e){
    this.name = n;
    this.arrogance = a;
    this.restOwned = r;
    this.ethnicity = e;
  }
  
  
  // Methods
  
  void welcome(){
    println("\nHi there, welcome to", this.restOwned.name + "! My name is", this.name + " and I'm the owner. Let me get you started with our menu.");
  }
  
  
  void createMenu(){
    Restaurant r = this.restOwned;
    String t = r.type;
    String[] m = r.menuItems;
  
    // Greek 
    if (t.equals("Greek")) {
      m[0] = "Fried Calamari"; 
      m[1] = "15.99"; 
      m[2] = "Moussaka"; 
      m[3] = "21.80"; 
      m[4] = "Hot Tea"; 
      m[5] = "4.50";
    }
    
    // Italian
    else if (t.equals("Italian")) {
      m[0] = "Chicken Fettuccine Alfredo"; 
      m[1] = "21.50"; 
      m[2] = "Vegetarian Pizza"; 
      m[3] = "21.00"; 
      m[4] = "Red Wine"; 
      m[5] = "6.50";
    }    
    
    // Indian
    else if (t.equals("Indian")) {
      m[0] = "Butter Chicken";
      m[1] = "15.60";
      m[2] = "Daal Makhani";
      m[3] = "16.70";
      m[4] = "Masala Chai";
      m[5] = "2.50";
    } 
    
    // American
    else if (t.equals("American")) {
      m[0] = "Angus Beef Burger";
      m[1] = "10.70";
      m[2] = "Fried Cheese dipped in Cheese";
      m[3] = "4.50";
      m[4] = "Sprite";
      m[5] = "2.75";
    }
    
    // Canadian 
    else if (t.equals("Canadian")) {
      m[0] = "Classic Poutine";
      m[1] = "5.25";
      m[2] = "Lobster Roll";
      m[3] = "11.15";
      m[4] = "French Vanilla Coffee";
      m[5] = "2.80";
    }
    
    // Mexican
    else if (t.equals("Mexican")) {
      m[0] = "Tacos For Two";
      m[1] = "5.25";
      m[2] = "Family Sized Nachos";
      m[3] = "5.70";
      m[4] = "Lime Margarita";
      m[5] = "4.30";
    }
    
    // Chinese
    else {
      m[0] = "Steamed Dumplings";
      m[1] = "6.55";
      m[2] = "Shrimp Fried Rice";
      m[3] = "7.15";
      m[4] = "Herbal Tea";
      m[5] = "2.35";
    }
  }  
  
}
