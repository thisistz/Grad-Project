﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class player1ui : MonoBehaviour
{
    public Image background;
    public Image hpbar;
    public Image sword;
    public Image shadow;
    public LinkedPlayer myplayer;

    GameObject obj;
    // public int playerid;
    // Start is called before the first frame update
    private void Awake()
    {
    }
    void Start()
    {
        RigidbodyCharacter[] players = FindObjectsOfType(typeof(RigidbodyCharacter)) as RigidbodyCharacter[];
        obj = myplayer.player;
    }

    void Update()
    {
        if (obj != null)
        {
            hpbar.fillAmount = (float)obj.GetComponent<PlayerState>().currentHp / (float)obj.GetComponent<PlayerState>().hpMax;
            sword.fillAmount = (obj.GetComponent<RigidbodyCharacter>().sword_CD - obj.GetComponent<RigidbodyCharacter>().sword_count) / obj.GetComponent<RigidbodyCharacter>().sword_CD;
            shadow.fillAmount = (obj.GetComponent<RigidbodyCharacter>().duplicate_CD - obj.GetComponent<RigidbodyCharacter>().duplicate_count) / obj.GetComponent<RigidbodyCharacter>().duplicate_CD;
        }
        else {
            background.color = Color.gray;
            sword.color = Color.gray;
            shadow.color = Color.gray;
        }
    }

    public void setColor(Color col) {
        background.color = col;
        shadow.color = col;
        sword.color = col;
    }
}
