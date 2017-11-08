class Mover{
  PVector position; 
  PVector velocity; 
  PVector acceleration; 
  float mass; 
  
  Mover(float m, float x, float y){
    mass = m; 
    position = new PVector(x, y); 
    velocity = new PVector(1, 0); 
    acceleration = new PVector(0, 0); 
    
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, -mass); // applying force based on the mass of our objects
    acceleration.add(f); //adding the force based on mass to the acceleration of our mover
  }
  
  void update(){
    velocity.add(acceleration); 
    position.add(velocity); 
    if(position.x < 0)
    position.x = 500;
     if(position.x > 500)
    position.x = 0;
     if(position.y < 0)
    position.y = 500;
     if(position.y > 500)
    position.y = 0;
    acceleration.mult(0); //clearing the acceleration; otherwise would accelerate infinitely
  }

  void display(){
    fill(255); 
    ellipse(position.x, position.y, mass*25, mass*25); 
    
  }
}