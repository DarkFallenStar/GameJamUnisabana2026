if !instance_exists(oTransition){ 
    trans = instance_create_layer(x,y,"Instances",oTransition)  
    trans.nextRoom = -1 
}


dead = false