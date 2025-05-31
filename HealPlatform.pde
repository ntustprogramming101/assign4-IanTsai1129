// Practice3: finish HealPlatform
class HealPlatform extends Platform {
  float potionW = 20, potionH = 20;
  int healingAmount = 1;
  boolean hasHealed = false;

  HealPlatform(float tempX, float tempY) {
    super(tempX, tempY);
  }
  
 void interact(Player player) {
   super.interact(player);
   
    if (!hasHealed) {
      player.health += healingAmount;
      hasHealed = true;
      playPlatformSound();
    }
  }
  
  void display() {
    // 顯示平台
    image(platformImage, x, y, w, h);

    // 顯示漂浮的藥水（如果還在）
    if (!hasHealed) {
      float potionY = y - potionH - 5 - 10 * sin(TWO_PI*(frameCount/60.0));
      image(healPotionImage, x + w/2 - potionW/2, potionY, potionW, potionH);
    }
  }

void playPlatformSound() {
    healSound.play(); 
  }

}
