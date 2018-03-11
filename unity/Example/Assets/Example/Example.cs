using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using LuaInterface;

public class Example : MonoBehaviour {
	LuaState lua = null;
	LuaLooper looper = null;
	// Use this for initialization
	void Start () {
		new LuaResLoader();
		lua = new LuaState();
		lua.LogGC = true;
		lua.Start();
		LuaBinder.Bind(lua);
		DelegateFactory.Init();         
		looper = gameObject.AddComponent<LuaLooper>();
		looper.luaState = lua;
		lua["UnityEngine.PrimitiveType.Cube"] = PrimitiveType.Cube;
		lua["UnityEngine.PrimitiveType.Sphere"] = PrimitiveType.Sphere;
		string fullPath = Application.dataPath + "/Example";
		lua.AddSearchPath(fullPath);        
		lua.DoFile("hx.lua");
	}
	
	// Update is called once per frame
	void Update()
	{
		lua.CheckTop();
		lua.Collect();        
	}
}
