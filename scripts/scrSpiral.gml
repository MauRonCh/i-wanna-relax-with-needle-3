//scrSpiral(sides, iter, spd, obj, dir1, dir2, xx, yy);
var sides = argument[0];
var iter = argument[1];
var spd = argument[2];
var obj = argument[3];
var dir1 = argument[4];
var dir2 = argument[5];
var xx = argument[6];
var yy = argument[7];

var dirm = point_direction(x, y, dir1, dir2);
var num = 360 / sides;

for (var k = 0; k < sides; k++) {
    sept[k] = dcos(dirm + k * num);
    huit[k] = dsin(dirm + k * num);
    sept[k + 1] = dcos(dirm + (k + 1) * num);
    huit[k + 1] = dsin(dirm + (k + 1) * num);

    for (var i = 0; i < iter; i++) {
        neuf[k, i] = instance_create(xx, yy, obj);
        neuf[k, i].direction = dirm + point_direction(x, y, x + sept[k] + (sept[k + 1] - sept[k]) * i / iter, y - huit[k] - (huit[k + 1] - huit[k]) * i / iter);
        neuf[k, i].speed = spd * point_distance(x, y, x + sept[k] + (sept[k + 1] - sept[k]) * i / iter, y - huit[k] - (huit[k + 1] - huit[k]) * i / iter);
    }
}
