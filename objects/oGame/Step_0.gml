if pause{
    instance_deactivate_all(true)
    timer++
    
    if upKey{
        selection++
    }
}
else{
    instance_activate_all()
}