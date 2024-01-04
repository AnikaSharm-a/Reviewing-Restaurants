class Reviewer{
  
  // Fields
  String name;
  float bankBalance;
  float cost;
  Restaurant currentRest;
  float currentRating; 
  ArrayList<String> itemsOrdered;
  
  
  // Constructor
  Reviewer(String n, float b){
    this.name = n;
    this.bankBalance = b;
    this.currentRating = 0.0;
    this.cost = 0.0;
    this.itemsOrdered = new ArrayList<String>();
  }
  
  
  // Methods
  
  void introduceTask(){
    println("Hello Reviewer", this.name + ". \n\nYou're very famous in the restaurant reviewers industry. Your one opinion has the power to make or fail restaurants. \nThis is why you have been chosen to provide your critical review for 4 restaurants.");
    println("Your task is to visit these restaurants and provide your rating on 4 aspects of the restaurant: \nAtmosphere, Decor, Service and Food."); 
    println("You will get a different amount of money for each restaurant visit.");
    println("\nKeep us updated on your progress! Let's begin...");
  }
  
  
  void orderFood(Restaurant r){
    
    this.currentRest = r;
    
    int numitems = int(random(1,4));
    
    // Ordering 1 item
    if (numitems == 1){
      int item = int(random(1,3));
      
      if (item == 1) {
        this.itemsOrdered.add(r.menuItems[0]);
        
        println("\nYou decide to order the", r.menuItems[0]);
        this.cost = Math.round(100.0 * float(r.menuItems[1]))/100.0;
      }
      
      else {
        this.itemsOrdered.add(r.menuItems[2]);
        
        println("\nYou decide to order the", r.menuItems[2]);
        this.cost = Math.round(100.0 * float(r.menuItems[3]))/100.0;
      }
    }
    
    // Ordering 2 items
    else if (numitems == 2){
      int item = int(random(1,4));
      
      if (item == 1) {
        this.itemsOrdered.add(r.menuItems[0]);
        this.itemsOrdered.add(r.menuItems[2]);
        
        println("\nYou decide to order the", r.menuItems[0], "and", r.menuItems[2]);
        float c = float(r.menuItems[1]) + float(r.menuItems[3]);
        this.cost = Math.round(100.0 * c)/100.0;
      }

      else if (item == 2) {
        this.itemsOrdered.add(r.menuItems[2]);
        this.itemsOrdered.add(r.menuItems[4]);
        
        println("\nYou decide to order the", r.menuItems[2], "and", r.menuItems[4]);
        float c = float(r.menuItems[3]) + float(r.menuItems[5]);
        this.cost = Math.round(100.0 * c)/100.0;
      }
      
      else {
        this.itemsOrdered.add(r.menuItems[0]);
        this.itemsOrdered.add(r.menuItems[4]);
        
        println("\nYou decide to order the", r.menuItems[0], "and", r.menuItems[4]);
        float c = float(r.menuItems[1]) + float(r.menuItems[5]);
        this.cost = Math.round(100.0 * c)/100.0;
      }
    }
    
    // Ordering 3 items
    else { 
      this.itemsOrdered.add(r.menuItems[0]);
      this.itemsOrdered.add(r.menuItems[2]);
      this.itemsOrdered.add(r.menuItems[4]);
      
      println("\nYou decide to order everything on the menu! ;P");
      float c = float(r.menuItems[1]) + float(r.menuItems[3]) + float(r.menuItems[5]);
      this.cost = Math.round(100.0 * c)/100.0;
    }
  }
  
  
  void reactToFood(){
    println("\nI see the waiter coming... I think my food is here!");
    println("Oh, they just turned to some other customer. It wasn't my food :,)");
    println("...");
    println("Ok NOW my food is here :D");
    
    
    // Specific Item Comments
    if (this.itemsOrdered.contains("Shrimp Fried Rice")) println("\nYou're telling me a shrimp fried this rice? Nice.");
    else if (this.itemsOrdered.contains("Family Sized Nachos")) println("\nWow, this is truly family sized. I am my own family now ;P");
    else if (this.itemsOrdered.contains("Lobster Roll")) println("\nHehe a lobster rolled in this bread. Look great :)");
    else if (this.itemsOrdered.contains("Fried Cheese dipped in Cheese")) println("\nTime to clog my arteries forever. I love American cuisine :/");
    else if (this.itemsOrdered.contains("Butter Chicken")) println("\nYou're telling me a chicken was buttered in this? Amazing.");
    else if (this.itemsOrdered.contains("Red Wine")) println("\nTime to sip back and relax :D");
    else if (this.itemsOrdered.contains("Fried Calamari")) println("\nThere's something fishy about this Calamari LOL just kidding, looks great.");
    
    
    println("\nVisuals are fine. Let's see, how does it taste?");
    println("***chewing noises***");
    println(this.currentRest.foodQuality);
  }
  
  
  void payForFood(){
    
    println("\n.\n.\n.\n\nOk I think it's time for me to leave. Let's get the bill.");
    println("\nLooks like I must pay $" + this.cost, "for my meal.");
    
    // Not enough money
    if (this.bankBalance < this.cost){
      println("Oof, my card declined :,( ... I only have $" + this.bankBalance, "which is not enough.");
      becomeKaren();    
    }
    
    // Enough money
    else println("I had enough money ($" + this.bankBalance, "to be precise). I'm done paying. Let's get the final rating");
  }
  
  
  void becomeKaren(){
    println("\nAhhhh what should I do now? Oh I know the perfect solution. Time to become a karen >:P");
    println("\n***takes a deep breath***");
    println("I DEMAND TO SEE THE MANAGER RIGHT THIS INSTANCE- MY FOOD WAS TERRIBLE I AM ENTITLED TO A REFUND!");
    println("\n\n... you got kicked out and banned from", this.currentRest.name, "forever. Why did you think this was a good idea ???");
    println("\nMaybe you should give your final rating now...");
  }
  
  
  void callGordonRamsay(){
    println("\nThis is a... low rating :/ \nYou're going to have to call Gordon Ramsay to come fix", this.currentRest.name, "or else it will fail.");
    println("Alright... if this is what I must do... \n\n***dials Gordon***\n***incoherent swearing***");
    println("Please Gordon, help this restaurant succeed. \n\nAfter your begging, he finally agrees to help. You leave it to him as you have full trust that he's got this.");
    println("\nThank you", this.name, "for your reviews. Your work is done for now.");
  }
  
  
  void rateAtmosphere(){
    Restaurant r = this.currentRest;
    
    println("\nIn your opinion, the vibe of this restaurant is", r.vibe + "...");
    float rating;
    
    if (r.vibe.equals("old and bland")) rating = 3.2;
    else if (r.vibe.equals("modern")) rating = 5.5;
    else if (r.vibe.equals("hip and lively")) rating = 8.7;
    else if (r.vibe.equals("chill and slow")) rating = 4.1;
    else rating = 10.0;
    
    println("You rated the atmosphere a solid", rating, "out of 10.");
    
    this.currentRating += rating;
  }
  
  
  void rateDecor(){
    Restaurant r = this.currentRest; 
    float rating;
    String opinion;
    
    // New furniture and clean
    if (r.furniture && r.clean) {
      rating = 9.8;
      opinion = "new and clean";
    }
    
    // Old furniture and clean
    else if ((!r.furniture) && r.clean) {
      rating = 6.3;
      opinion = "old but clean";
    }
    
    // New furniture and not clean
    else if (r.furniture && (!r.clean)) {
      rating = 4.7;
      opinion = "new but dirty";
    }
    
    // Old furniture and not clean
    else {
      rating = 0;
      opinion = "old and dirty";
    }
    
    println("\nYou found the furniture and decor to be", opinion, "so you rated it a", rating, "out of 10.");
    
    this.currentRating += rating;
  }
  
  
  void rateFood(){
    float rating;
    
    if (this.currentRest.foodQuality.indexOf("Horrible") != -1) rating = 1.8;
    else rating = 7.1;
    
    println("\nYou rated the food a", rating, "out of 10.");
    
    this.currentRating += rating;
  }
  
  
  void rateService(){
    println("\n\nLet's talk about their service. You said their service was", this.currentRest.serverQuality);
    
    float rating;
    
    if (this.currentRest.serverQuality.indexOf("terrible") != -1) rating = 0.9;
    else if (this.currentRest.serverQuality.indexOf("okay") != -1) rating = 3.5;
    else if (this.currentRest.serverQuality.indexOf("good") != -1) rating = 5.7;
    else rating = 8.8;
    
    println("\nYou rated their service a", rating, "out of 10.");
    
    this.currentRating += rating;
  }  
  
  
  void finalRating(){
    float finalRating = Math.round(100.0 * this.currentRating) / 100.0;
    
    println("\n\n\n--- The final opinion ---");
    println("In total,", this.currentRest.name, "has", finalRating, "out of 40.");
    
    if (finalRating < 20) callGordonRamsay();
    else println("\nWhat a great rating! This restaurant will do well in the future because of your rating. \nThank you", this.name, "for your reviews. Your work is done for now.");
  }

}
