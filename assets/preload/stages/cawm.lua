function onCreate()
	--intro
	makeLuaSprite('img', 'cawm/intro/img', 150, 300)
	scaleObject('img', 0.85, 0.85)
	setScrollFactor('img', 1, 1)
	addLuaSprite('img')

    makeLuaSprite('titulo3', 'cawm/intro/Ilustracion_sin_titulo-3', 150, 300)
    scaleObject('titulo3', 0.85, 0.85)
    setScrollFactor('titulo3', 1, 1)
    addLuaSprite('titulo3', true)

	makeLuaSprite('titulo2', 'cawm/intro/Ilustracion_sin_titulo-2', 250, 500)
	scaleObject('titulo2', 0.85, 0.85)
	setScrollFactor('titulo2', 1.2, 1.2)
	addLuaSprite('titulo2')

	makeLuaSprite('titulo2t', 'cawm/intro/Ilustracion_sin_titulo-2t', 250, 500)
	scaleObject('titulo2t', 0.85, 0.85)
	setScrollFactor('titulo2t', 1.2, 1.2)
	addLuaSprite('titulo2t', true)

	makeLuaSprite('titulo1', 'cawm/intro/Ilustracion_sin_titulo-1', 150, 300)
	scaleObject('titulo1', 0.85, 0.85)
	setScrollFactor('titulo1', 1, 1)
	addLuaSprite('titulo1')
---------------------------------------------------------------------------------
	
	makeLuaSprite('cs', 'cawm/reveal/CameraShtuff', 0, 0)
	scaleObject('cs', 1, 1)
	setScrollFactor('cs', 1, 1)
	setObjectCamera('cs', 'camHUD')
	addLuaSprite('cs', true)

----------------------------------------------------------------------------------
   --reveal
   	makeLuaSprite('glitch', 'cawm/reveal/glitch', 150, 600)
	scaleObject('glitch', 0.85, 0.85)
	setScrollFactor('glitch', 1, 1)
	addLuaSprite('glitch')
 
    makeLuaSprite('hstf', 'cawm/reveal/HillStuff', 150, 600)
	scaleObject('hstf', 0.85, 0.85)
	setScrollFactor('hstf', 1, 1)
	addLuaSprite('hstf')

	makeLuaSprite('dangling', 'cawm/reveal/Dangling', 250, 700)
	scaleObject('dangling', 0.85, 0.85)
	setScrollFactor('dangling', 1.2, 1.2)
	addLuaSprite('dangling')

	makeLuaSprite('aboveglitch', 'cawm/reveal/AboveGlitch', 150, 600)
	scaleObject('aboveglitch', 0.85, 0.85)
	setScrollFactor('aboveglitch', 1, 1)
	addLuaSprite('aboveglitch')

	makeLuaSprite('particles', 'cawm/reveal/Particles', 150, 600)
	scaleObject('particles', 0.85, 0.85)
	setScrollFactor('particles', 1, 1)
	addLuaSprite('particles', true)

	makeLuaSprite('corruption', 'cawm/reveal/Corruption', 150, 600)
	scaleObject('corruption', 0.85, 0.85)
	setScrollFactor('corruption', 1.1, 1.1)
	setProperty('corruption.alpha', 0.5, 0.5)
	addLuaSprite('corruption', true)

	makeAnimatedLuaSprite('lighting', 'cawm/Lighting', 1050, 150);
	addAnimationByPrefix('lighting', 'lgtng', 'LIGHTNING', 14 , false);
	scaleObject('lighting', 1, 1)
	addLuaSprite('lighting')

   makeAnimatedLuaSprite('rain', 'rain', 0, 200)
   addAnimationByPrefix('rain', 'rain rain', 'rain rain', 26 , true)
   setScrollFactor('rain', 0.9, 0.9)
   scaleObject('rain', 2, 2)
   doTweenAlpha('rain','rain',0,0.01,'linear')
   addLuaSprite('rain', true)

    setProperty('glitch.visible', false)
    setProperty('hstf.visible', false)
    setProperty('dangling.visible', false)
    setProperty('aboveglitch.visible', false)
    setProperty('particles.visible', false)
    setProperty('corruption.visible', false)
    setProperty('titulo2t.visible', false)
    setProperty('lighting.visible', false)
    --setProperty('rainfall.visible', false)


----------------------------------------------------------------------------------

   	makeLuaSprite('back', 'cawm/back', -200, -50)
	scaleObject('back', 1, 1)
	setScrollFactor('back', 0.6, 0.6)
	addLuaSprite('back')

	makeLuaSprite('tree', 'cawm/tree', 0, 200)
	scaleObject('tree', 1, 1)
	setScrollFactor('tree', 1, 1)
	addLuaSprite('tree')

    setProperty('back.visible', false)
    setProperty('tree.visible', false)

end

function onUpdate()
	 setProperty('boyfriend.visible', false)

     if curStep == 1 then
          doTweenAlpha('rain','rain',0.5,2,'linear')
     end	

     if curStep == 227 then
          setProperty('titulo2t.visible', true)
          setProperty('lighting.visible', true)
          doTweenAlpha('titulo2t','titulo2t',0,0.5,'linear')
           objectPlayAnimation('lighting', 'lgtng')
     end

	if curStep == 238 then
          doTweenAlpha('lighting','lighting',0,0.2,'linear')
     end

     if curStep == 240 then
           setProperty('titulo2t.visible', false)
          setProperty('lighting.visible', false)
          doTweenAlpha('titulo2t','titulo2t',1,0.01,'linear')
          doTweenAlpha('lighting','lighting',1,0.01,'linear')
     end

	if curStep == 417 then
          setProperty('titulo2t.visible', true)
          setProperty('lighting.visible', true)
          doTweenAlpha('titulo2t','titulo2t',0,0.5,'linear')
           objectPlayAnimation('lighting', 'lgtng')
     end

	if curStep == 428 then
          doTweenAlpha('lighting','lighting',0,0.2,'linear')
     end

	if curStep >= 522 then
		  setProperty('glitch.visible', true)
            setProperty('hstf.visible', true)
            setProperty('dangling.visible', true)
            setProperty('aboveglitch.visible', true)
            setProperty('particles.visible', true)
            setProperty('corruption.visible', true)

        end


       if curStep >= 778 then
            setProperty('back.visible', true)
            setProperty('tree.visible', true)
            
            setProperty('boyfriend.visible', true)

            
            setProperty('img.visible', false)
            setProperty('titulo3.visible', false)
            setProperty('titulo2.visible', false)
            setProperty('titulo2t.visible', false)
            setProperty('titulo1.visible', false)
            setProperty('cs.visible', false)
            setProperty('glitch.visible', true)
            setProperty('hstf.visible', true)
            setProperty('dangling.visible', true)
            setProperty('aboveglitch.visible', true)
            setProperty('corruption.visible', false)
            setProperty('particles.visible', false)
            --setProperty('rain.visible', true)
            --setProperty('rain.alpha', 0.4)

            doTweenX('BF', 'boyfriend', 2350, 0.001, 'linear')
            
            doTweenY('ermBF', 'boyfriend', 1800, 0.001, 'linear')
            
            doTweenX('DAD', 'dad', 1100, 0.001, 'linear')
            
            doTweenY('ermDAD', 'dad', 1700, 0.001, 'linear')

           --setObjectCamera('rain', 'camHUD')
           --scaleObject('rain', 1, 1)
           setProperty('rain.x', 450)
           setProperty('rain.y', 750)
           setScrollFactor('rain', 0.7, 0.7)
           doTweenAlpha('rain','rain',0.3,0.1,'linear')
      end


      --if curStep >= 1419 then
           -- setProperty('cameraSpeed', 5)
      --end
       if curStep >= 1419 then
            setProperty('cameraSpeed', 10)
       end
       
       if curStep >= 1420 then
            setProperty('back.visible', false)
            setProperty('tree.visible', false)
            setProperty('img.visible', true)
            setProperty('titulo3.visible', true)
            setProperty('titulo2.visible', true)
            setProperty('titulo1.visible', true)
            setProperty('cs.visible', true)	

            setProperty('glitch.visible', false)
            setProperty('hstf.visible', false)
            setProperty('dangling.visible', false)
            setProperty('aboveglitch.visible', false)
            setProperty('particles.visible', false)
            setProperty('corruption.visible', false)

            --setProperty('boyfriend.visible', false)

            doTweenX('BF', 'boyfriend', -1000, 0.001, 'linear')
            
            doTweenY('ermBF', 'boyfriend', -1000, 0.001, 'linear')
            
            doTweenX('DAD', 'dad', 800, 0.001, 'linear')
            
            doTweenY('ermDAD', 'dad', 1000, 0.001, 'linear')

            setProperty('rain.y', 550)
            --setProperty('cameraSpeed', 9)
       end

     if curStep >= 1421 then
          setProperty('cameraSpeed', 1)
     end

end