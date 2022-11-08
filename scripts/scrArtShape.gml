///scrArtShape(x, y, object, speed, angle, distance, art, symbol, row_length, col_length)
var xx = argument[0];
var yy = argument[1];
var distance = argument[5];
var rowLength = argument[8];
var colLength = argument[9];

for (var i = 0; i < rowLength; i++) {
    for (var j = 0; j < colLength; j++) {
        if (string_char_at(argument[6], colLength * i + j + 1) == argument[7]) {
            var nowX = xx + 1 / colLength * j - 0.5 + (1 / colLength / 2);
            var nowY = yy + 1 / rowLength * i - 0.5 + (1 / rowLength / 2);
            var centerAngle = degtorad(point_direction(xx, yy, nowX, nowY) + argument[4]);
            var centerDistance = point_distance(xx, yy, nowX, nowY);
            
            var s = instance_create(nowX + distance * centerDistance * cos(centerAngle), nowY - distance * centerDistance * sin(centerAngle), argument[2]);
            with (s) motion_set(radtodeg(centerAngle), argument[3] * centerDistance);
        }
    }
}
