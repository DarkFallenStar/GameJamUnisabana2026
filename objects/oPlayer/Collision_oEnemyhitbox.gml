if canTakeDamage{
    hp -= clamp(other.damage - defense,0,100)
    canTakeDamage = false
}
