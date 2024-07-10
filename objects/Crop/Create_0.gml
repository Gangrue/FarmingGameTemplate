/// @description
frameWidth = 32;
frameHeight = 64;

cropType = 0;
daysOld = 0;
lastWatered = 0;
growthStage = 0;
growthStageDuration = 3;
maxGrowthStage = (sprite_get_width(spr_crops)/frameWidth)-1;

fullGrown = false;
sparkle = -1;

xx = x-(frameWidth/2)+2;
yy = y-(frameHeight)+6;