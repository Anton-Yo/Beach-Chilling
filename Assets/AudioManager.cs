﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{

    [SerializeField] private AudioSource waveSounds;
    [SerializeField] private AudioSource backgroundMusic;

    [SerializeField] private AudioSource birdSound;
    [SerializeField] private float firstBirdSound = 2f;
    [SerializeField] private float minTimeBetweenBird = 5f;
    [SerializeField] private float maxTimeBetweenBird = 10f;

    private float birdTimer = 0f;

    [SerializeField] private AudioSource speakingSound;

    private bool playBirdSound = false;

    

    // Start is called before the first frame update
    void Start()
    {
        backgroundMusic.Play();
        waveSounds.Play();
        birdTimer = firstBirdSound;
        
       // InvokeRepeating("PlayBirdSound", firstBirdSound, Random.Range(minTimeBetweenBird, maxTimeBetweenBird));
    }

    // Update is called once per frame
    void Update()
    {
        if (!playBirdSound)
        {
            birdTimer -= Time.deltaTime;

            if(birdTimer <= 0)
            {
                playBirdSound = true;
                StartCoroutine(BirdSoundCoroutine());
            }
        }

    }

    // private void PlayBirdSound()
    // {
    //     birdSound.Play();
    // }

    private IEnumerator BirdSoundCoroutine()
    {   
        while(playBirdSound) //keep playing bird soundd ever x 'WaitForSeconds'.
        {
            birdSound.Play();
            Debug.Log("Bird sound played");
            yield return new WaitForSeconds(Random.Range(minTimeBetweenBird, maxTimeBetweenBird));
        }
    }
}