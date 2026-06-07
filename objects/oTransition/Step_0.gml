switch(state){
    case transtates.OUT:
        if subImgIndex < iMax + xMax{
            subImgIndex += subImgIndexInc
        }
        else{
            if !setTimer{
                alarm[0] = 20
                setTimer = true
            }
            
        }
        break
    case transtates.IN:
        if subImgIndex > 0{
            subImgIndex -= subImgIndexInc
        }
        else{
            instance_destroy()
        }
        break

}
