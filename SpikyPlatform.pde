// Practice1: finish SpikyPlatform
class SpikyPlatform extends Platform {
  int damage = 1;
  boolean hasHurt = false;


  SpikyPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }
  
   void interact(Player player) {
    player.y = y - player.h + player.feetOffset;
    player.ySpeed = 0;
     
     if (!hasHurt) {
      player.takeDamage(1);
      hasHurt = true;
      playPlatformSound(); // Play the platform sound
    }
  }
  
  void display() {
    // Use a different image for bouncy platforms
    image(spikyPlatformImage, x, y, w, h);
  }
  
  void playPlatformSound() {
    spikyPlatformSound.play(); 
  }

}
