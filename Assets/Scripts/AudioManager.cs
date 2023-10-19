using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{


    [Header("Sound Sources")]
    [SerializeField] private AudioSource windSound;
    [SerializeField] private AudioSource treeSoundX1;
    [SerializeField] private AudioSource treeSoundX2;
    [SerializeField] private AudioSource backgroundWindSound;
    [SerializeField] private AudioSource waveSounds;
    [SerializeField] private AudioSource backgroundMusic;
    [SerializeField] private AudioSource speakingSound;
    [SerializeField] private AudioSource birdShortSound;
    [SerializeField] private AudioSource birdLongSound;
   


    [Header("Other Stuff")]
    [SerializeField] private float firstBirdSound = 2f;
    [SerializeField] private float minTimeBetweenBird = 5f;
    [SerializeField] private float maxTimeBetweenBird = 10f;
    private bool playBirdSound = false;
    private bool playTreeSound = true; //play the tree rustle sound when this is true

    private float birdTimer = 0f;

    [SerializeField] private float timeB4ScriptStarts;
    [SerializeField] private float treeRustleTime;
    

    // Start is called before the first frame update
    void Start()
    {
        backgroundMusic.Play();
        waveSounds.Play();
        backgroundWindSound.Play();
        StartCoroutine(BeginScriptCorountine());
        birdTimer = firstBirdSound;
        StartCoroutine(TreeRustleSoundCoroutine());
        
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

    private IEnumerator BirdSoundCoroutine()
    {      
        float extra = 0;
        while(playBirdSound) //keep playing bird sound every x 'WaitForSeconds'.
        {
           
             if(Random.Range(0f,1f) > 0.5f)
                {
                    birdShortSound.pitch = 1f + Random.Range(-0.2f, 0.2f); //add some extra variation to sound
                    birdShortSound.Play();
                }
                else
                {
                    birdLongSound.pitch = 1f + Random.Range(-0.2f, 0.2f);
                    birdLongSound.Play();
                    extra = 5f; //add some extra time to the random bird sound range, because the long sound is 7s vs the short 3s
                }
            Debug.Log("Bird sound played");
            yield return new WaitForSeconds(Random.Range(minTimeBetweenBird + extra, maxTimeBetweenBird + extra));
        }
    }

    private IEnumerator BeginScriptCorountine()
    {
        yield return new WaitForSeconds(timeB4ScriptStarts);
        speakingSound.Play();
    }

    private IEnumerator TreeRustleSoundCoroutine()
    {
        while(playTreeSound)
        {
            yield return new WaitForSeconds(treeRustleTime);
            if(!treeSoundX1.isPlaying && !treeSoundX2.isPlaying)
            {
                if(Random.Range(0f,1f) > 0.5f)
                {
                    treeSoundX1.pitch = 1f + Random.Range(-0.2f, 0.2f);
                    treeSoundX1.Play();
                }
                else
                {
                    treeSoundX2.pitch = 1f + Random.Range(-0.2f, 0.2f);
                    treeSoundX2.Play();
                }
            }
        } 
    }
}
