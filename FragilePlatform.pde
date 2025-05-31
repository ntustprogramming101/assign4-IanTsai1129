// Practice2: finish FragilePlatform
final int FRAGILE_PLATFORM_DURATION = 50; // Duration before the platform breaks

class FragilePlatform extends Platform {
  float duration;
  boolean isBroken;

  FragilePlatform(float tempX, float tempY) {
    super(tempX, tempY);
    this.duration = 0; 
    this.isBroken = false; 
  }
  
  void interact(Player player) {
    duration++;
    if (duration > FRAGILE_PLATFORM_DURATION) {
    
      isBroken = true;
    }
  
    if (!isBroken) {
      super.interact(player);
    } else {
      //player.ySpeed = 0; // Stop the vertical speed to let the player fall through
      //player.y = y ;  // Move the player below the platform (fall through it)
    } 
      
    playPlatformSound(); // Play the platform sound
  }
  
  void display() {
    if(!isBroken){
      image(fragilePlatformImage, x, y, w, h);
    }else{
      image(fragilePlatformBrokenImage, x, y, w, h);
    }
  }

  void playPlatformSound() {
    if(!isBroken){
      if(!playedSound){
      fragilePlatformSound.play(); 
      playedSound = true;
      }
    }else{
      fragilePlatformBrokenSound.play(); 
    }
  }


}
