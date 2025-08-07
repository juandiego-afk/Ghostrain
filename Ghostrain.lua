
-- Variables que puedes ajustar
local tiempoDeEspera = 5 -- El tiempo en segundos que el tren estará visible
local posicionDeReaparicion = Vector3.new(100, 10, 200) -- Las coordenadas (X, Y, Z) donde el tren reaparecerá

-- Función principal para el tren fantasma
local function moverTrenFantasma()
    -- Esperar el tiempo especificado
    task.wait(tiempoDeEspera)

    -- Teletransportar el tren a la nueva posición
    script.Parent:PivotTo(CFrame.new(posicionDeReaparicion))

    -- Aquí puedes agregar más efectos, como un sonido o una animación
    print("El tren fantasma ha reaparecido en una nueva posición.")

    -- Llamar a la función de nuevo para que el ciclo se repita
    moverTrenFantasma()
end

-- Iniciar el ciclo del tren fantasma
moverTrenFantasma()
