function createShield()
    return {time=10,active=false}
end
function createShieldSettings()
    return {time = 5, width = 50, height = 50}
end
function createPaddleExtender()
    return {time=7,active=false}
end
function createPaddleExtenderSettings()
    return {time = 2,width = 50, height = 50}
end
function createBoostersForPlayer()
    local boosters = {["shield"] = createShield(), ["paddle_extender"] = createPaddleExtender()}
    return boosters
end
