
local screenWidth, screenHeight = guiGetScreenSize()
local imageWidth, imageHeight = 15, 15 
local isVisibleTarget = false 


function drawTargetImage()
    if isVisibleTarget then
        dxDrawImage(1011, 475, imageWidth, imageHeight, "main/image/target.png", 0, 0, 0, targetColor)
    end
end

function toggleTargetImage(key, press)
    if key == "lalt" then 
        isVisibleTarget = press 
    end
end
addEventHandler("onClientRender", root, drawTargetImage)
addEventHandler("onClientKey", root, toggleTargetImage)