///scrGetMusic()
var loop = true;
global.restartMusic = false;

switch (room) {
    case rTitle:
    case rFiles:
    case rOptions:
        music = bgmTitle;
        break;

    case r1:
    case r2:
    case r3:
    case r4:
    case r5:
        music = bgmPart1;
        break;
    
    case r6:
    case r7:
    case r8:
    case r9:
    case r10:
        music = bgmPart2;
        break;
    case r11:
    case r12:
    case r13:
    case r14:
    case r15:
    case r16:
    case r17:
    case r18:
    case r19:
    case r20:
    case r21:
    case r22:
        music = bgmPart3;
        break;
        
    case rTYFP:
        music = bgmEnd;
        break;
    
    case rEX0:
    case rEX0_2:
    case rEX0_3:
    case rEX0_Final:
        music = bgmStageEXStart;
        break;
        
    case rEX1:
    case rEX2:
    case rEX3:
        music = bgmStageEX1;
        break;
    case rEX4:
    case rEX5:
    case rEX6:
        music = bgmStageEX2;
        break; 
    case rEX7:
    case rEX8:
    case rEX9:
        music = bgmStageEX3;
        break;
    
    case rF1:
    case rF2:
    case rF3:
    case rF4:
    case rF5:
    case rF6:
    case rF7:
    case rF8:
    case rPractice:
        music = bgmStageEX4;
        break;
        
    case rPortal1:
    case rPortal2:
        music = bgmPortal;
        break;
        
    case rAvoidance:
        music = bgmAvoidance;
        loop = false;
        global.restartMusic = true;
        break;
        
    case rCredits:
        music = bgmEnding;
        loop = false;
        global.restartMusic = true;
        break;
        
    default: music = -1; break;
}

if (music != -2) {
    scrPlayMusic(music, loop);
}
