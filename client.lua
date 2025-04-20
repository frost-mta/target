
local screenWidth, screenHeight = guiGetScreenSize()
local isVisibleTarget = false 


function drawTargetImage()
    if isVisibleTarget then
        dxDrawImage(1011, 475, config.targetSize.width, config.targetSize.height, "main/image/target.png", 0, 0, 0, config.targetColor)
    end
end

function toggleTargetImage(key, press)
    if key == config.keyToggle then 
        isVisibleTarget = press
    end
end
addEventHandler("onClientRender", root, drawTargetImage)
addEventHandler("onClientKey", root, toggleTargetImage)