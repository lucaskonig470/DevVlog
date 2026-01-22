#region movimentação

var jump = keyboard_check(vk_space)
var left = keyboard_check(ord("A"))
var rigth = keyboard_check(ord("D"))

var mover_h = rigth - left

velh = mover_h * vel

velV = velV + grav

if (mover_h != 0) {
    
    image_xscale = mover_h;
}


if place_meeting(x, y+velV , Obj_chao){

while (!place_meeting(x,y +sign(velV),Obj_chao)){
	y = y +sign(velV)
	}
	velV = 0
}
y = y + velV

if(place_meeting(x,y+1,Obj_chao)and jump){
velV -= 8
}

if(left){
x -= vel
}
if(rigth){
x += vel	
}


#endregion

var click = mouse_check_button_pressed(mb_left)
image_angle = direction
if(click){
	 var _tiro = instance_create_layer(x, y, "Instances", Object3);
	 _tiro.direction = point_direction(x, y, mouse_x, mouse_y);
}
