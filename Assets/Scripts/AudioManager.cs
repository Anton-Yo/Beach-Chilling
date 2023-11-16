using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{


    [Header("Sound Sources")]
    [SerializeField] private AudioSource waveSounds;
    [SerializeField] private AudioSource backgroundMusic;
    [SerializeField] private AudioSource birdShortSound;
    [SerializeField] private AudioSource birdLongSound;
    [SerializeField] private AudioSource speakingSound;
    [SerializeField] private AudioSource treeSoundX1;
    [SerializeField] private AudioSource treeSoundX2;
    [SerializeField] private AudioSource backgroundWindSound;
  
   


    [Header("Other Stuff")]
    [SerializeField] private float firstBirdSound = 2f;
    [SerializeField] private float minTimeBetweenBird = 5f;
    [SerializeField] private float maxTimeBetweenBird = 10f;

    private bool startedBirdCoroutine = false;
    private bool playBirdSound = false;
    private bool playTreeSound = true; //play the tree rustle sound when this is true

    private float birdTimer = 0f;

    [SerializeField] private float timeB4ScriptStarts;
    [SerializeField] private float treeRustleTime;

    [SerializeField] private List<AudioSource> listOfAudioSourcesToFade;

    [Header("Time out sounds X seconds from end")]
    [Tooltip("Stop the bird sounds X seconds from the end")] [SerializeField] private float stopBirdSound = 30f;
    [SerializeField] private float stopWindSound = 20f;
    [SerializeField] private float reduceVolumeOfAllSoundsAt = 30f;
    [SerializeField] private float targetVolumeFadeoutPercentage = 0.25f;
    

    // Start is called before the first frame update
    void Start()
    {
        backgroundMusic.Play();
        waveSounds.Play();
        backgroundWindSound.Play();
        StartCoroutine(BeginScriptCorountine());
        birdTimer = firstBirdSound;
        StartCoroutine(TreeRustleSoundCoroutine());
        StartCoroutine(BirdSoundTimeout());
        StartCoroutine(WindSoundTimeout());
        StartCoroutine(FadeOutAllAudio());
        
       // InvokeRepeating("PlayBirdSound", firstBirdSound, Random.Range(minTimeBetweenBird, maxTimeBetweenBird));
    }

    // Update is called once per frame
    void Update()
    {
        if (!playBirdSound && !startedBirdCoroutine)
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
        startedBirdCoroutine = true;
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

    private IEnumerator BirdSoundTimeout() //stop playing bird sounds specified amount from end
    {
        yield return new WaitForSeconds(ExperienceManager.Instance.ExperienceLength - stopBirdSound);
        playBirdSound = false;
    }

    private IEnumerator WindSoundTimeout() //stop playing bird sounds specified amount from end -- Fade this one out
    {
        yield return new WaitForSeconds(ExperienceManager.Instance.ExperienceLength - stopWindSound);
        //windSound.Stop();
        Debug.Log("Wind is fading out");
        StartCoroutine(FadeOut(backgroundWindSound, 10f, 0f));
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

    private IEnumerator FadeOutAllAudio()
    {
        Debug.Log("Corountine fade out all audio started");
        yield return new WaitForSeconds(ExperienceManager.Instance.ExperienceLength - reduceVolumeOfAllSoundsAt);
        
        foreach(AudioSource audio in listOfAudioSourcesToFade)
        {
            Debug.Log(audio.name + "Has been called to fade out");
            StartCoroutine(FadeOut(audio, reduceVolumeOfAllSoundsAt, targetVolumeFadeoutPercentage));
        }
    }


    //Heavily inspired by https://johnleonardfrench.com/how-to-fade-audio-in-unity-i-tested-every-method-this-ones-the-best/#:~:text=There's%20no%20separate%20function%20for,script%20will%20do%20the%20rest. 
    //Because this was much better than other methods I've used
    private IEnumerator FadeOut(AudioSource audio, float duration, float target)
    {
        Debug.Log(audio.name +  " is fading out");
        float currentTime = 0;
        float startVolume = audio.volume;
        float targetVolume = target * startVolume;

        while(currentTime < duration)
        {
            currentTime += Time.deltaTime;
            audio.volume = Mathf.Lerp(startVolume, targetVolume, currentTime/duration);
            yield return 0;
        }

        yield break;

    }
}
