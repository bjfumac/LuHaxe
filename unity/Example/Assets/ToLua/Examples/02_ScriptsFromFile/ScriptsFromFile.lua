local GameObject = UnityEngine.GameObject
local go = GameObject('go')
go:AddComponent(typeof(UnityEngine.ParticleSystem))
go.transform.position = Vector3.zero
go.transform:Rotate(Vector3(0,90,0), UnityEngine.Space.World)
go.transform:Rotate(Vector3(0, 1, 0), 0)



function Update()
    print(123)
end

local OnUpdate = UpdateBeat:CreateListener(Update, self)
    FixedUpdateBeat:AddListener(OnUpdate)