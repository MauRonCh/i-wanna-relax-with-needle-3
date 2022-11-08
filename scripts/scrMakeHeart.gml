///scrMakeHeart(x, y, object, angle, spd, distance, number_per_side)
var xx = argument[0];
var yy = argument[1];
var object = argument[2];
var angle = argument[3];
var spd = argument[4];
var distance = argument[5];
var numSide = argument[6];
var pointX, pointY;
var heartX = xx + 0.25 * dcos(angle + 270);
var heartY = yy - 0.25 * dsin(angle + 270)

for (var i = 0; i < 3; i++) {
    pointX[i] = xx + dcos(angle + 360 / 4 * i);
    pointY[i] = yy - dsin(angle + 360 / 4 * i);
}

for (var i = 0; i < 4; i++) {
    var checkAngle, nowX, nowY, centerAngle, centerDistance, s;
    
    if (i < 2) {
        var p = i + 1;
        checkAngle = point_direction(pointX[i], pointY[i], pointX[p], pointY[p]);
        checkDistance = point_distance(pointX[i], pointY[i], pointX[p], pointY[p]);
    
        for(var j = 0; j < checkDistance; j += checkDistance / numSide) {
            nowX = pointX[i] + j * dcos(checkAngle);
            nowY = pointY[i] - j * dsin(checkAngle);
            centerAngle = point_direction(xx, yy, nowX, nowY);
            centerDistance = point_distance(xx, yy, nowX, nowY);
            s = instance_create(nowX + distance * centerDistance * dcos(centerAngle), nowY - distance * centerDistance * dsin(centerAngle), argument[2]);
            s.direction = centerAngle;
            s.speed = spd * centerDistance;    
        }
    }
    else {
        checkAngle = point_direction(heartX, heartY, pointX[i % 3], pointY[i % 3]);
          
        for (j = 0; j < 180; j += 180 / numSide) {
            if (i == 2) {
                nowX = heartX + 0.5 * dcos(checkAngle) + dcos(checkAngle + j) / 2;
                nowY = heartY - 0.5 * dsin(checkAngle) - dsin(checkAngle + j) / 2;
            }
            else {
                nowX = heartX + 0.5 * dcos(checkAngle) - dcos(checkAngle + j) / 2;
                nowY = heartY - 0.5 * dsin(checkAngle) + dsin(checkAngle + j) / 2;
        }
            centerAngle = point_direction(xx, yy, nowX, nowY);
            centerDistance = point_distance(xx, yy, nowX, nowY);
            s = instance_create(nowX + distance * centerDistance * dcos(centerAngle), nowY - distance * centerDistance * dsin(centerAngle), argument[2]);
            s.direction = centerAngle;
            s.speed = spd * centerDistance;    
        }
    }
}
