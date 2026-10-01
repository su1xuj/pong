-- function for creating effects objects
function createShield()
    return {time=10,active=false}
end
function createMagnet()
    return {time = 5, active =false}
end
function createPaddleExtender()
    return {time=7,active=false}
end
function createBoostersForPlayer()
    local boosters = {["shield"] = createShield(), ["paddle_extender"] = createPaddleExtender(), ["magnet"] = createMagnet()}
    return boosters
end
-- functions for create settings for boosters
function createShieldSettings()
    return {time = 5, width = 50, height = 50}
end

function createPaddleExtenderSettings()
    return {time = 2,width = 50, height = 50}
end

function createMagnetSettings()
    return {time = 4, width = 50, height = 50}
end
-- initialize effects icon
