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

        obj = myplayer.player;
    }
    void Start()
    {
        RigidbodyCharacter[] players = FindObjectsOfType(typeof(RigidbodyCharacter)) as RigidbodyCharacter[];
        // foreach (RigidbodyCharacter player in players)
        // {
        //     if (playerid == player.GetComponent<RigidbodyCharacter>().controllernumber)
        //     {
        //         obj = player.gameObject;
        //     }
        // }
    }

    // Update is called once per frame
    void Update()
    {
        if (myplayer != null)
        {
            hpbar.fillAmount = (float)obj.GetComponent<PlayerState>().currentHp / (float)obj.GetComponent<PlayerState>().hpMax;
            sword.fillAmount = (obj.GetComponent<RigidbodyCharacter>().sword_CD - obj.GetComponent<RigidbodyCharacter>().sword_count) / obj.GetComponent<RigidbodyCharacter>().sword_CD;
            shadow.fillAmount = (obj.GetComponent<RigidbodyCharacter>().duplicate_CD - obj.GetComponent<RigidbodyCharacter>().duplicate_count) / obj.GetComponent<RigidbodyCharacter>().duplicate_CD;
        }
    }

    public void setColor() {
        background.color = Color.red;
        shadow.color = Color.red;
        sword.color = Color.red;


    }
}
