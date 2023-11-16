using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ExperienceManager : MonoBehaviour
{

    [SerializeField] private float experienceLength;
    [SerializeField] private bool noFinish = false;
    public float ExperienceLength
    {
        get { return experienceLength;}
    }

    private float experienceTimer;

    [SerializeField] private float timeB4VisualShows;
    [SerializeField] private float fadeToBlackTime;
    [SerializeField] private GameObject visualCircle;

    #region Singleton Setup
    //Singleton Setup
    static private ExperienceManager instance;
    static public ExperienceManager Instance
    {
        get
        {
            if (instance == null)
            {
                Debug.LogError("There is no GameManager in the scene.");
            }
            return instance;
        }
    }

    void Awake()
    {
        instance = this;
    } 

    #endregion Singleton Setup

    [SerializeField] private GameObject fadeToBlackUI;
    // Start is called before the first frame update
    void Start()
    {
        experienceTimer = experienceLength;
        StartCoroutine(ShowVisualCorountine());

        if(fadeToBlackUI.activeSelf)
        {
            fadeToBlackUI.SetActive(false);
        }
       
    }

    // Update is called once per frame
    void Update()
    {

        if(experienceTimer > 0)
        {
            experienceTimer -= Time.deltaTime;

            if(experienceTimer <= fadeToBlackTime && !fadeToBlackUI.activeSelf && !noFinish) //Start the fade to black sequence
            {
                Debug.Log("Beginning fade in effect");
                StartCoroutine(FadeToBlack());
            }

            if(experienceTimer <= 0 && !noFinish) //Stop the application
            {
                Debug.Log("Experience Ended");
                Application.Quit();
            }
        } 
    }

    private IEnumerator FadeToBlack() //Slowly fade in a black image to simulate a fade to black finish
    {   
        fadeToBlackUI.SetActive(true);
        Image image = fadeToBlackUI.GetComponent<Image>();
        float currentAlpha = 0;
        Color imageColour;

        while(image.color.a < 1)
        {
            imageColour = image.color;
            currentAlpha = imageColour.a + Time.deltaTime/fadeToBlackTime; //Supposedly, the alpha of the black screen will go from 0 -> 1 over 5 seconds
            imageColour.a = currentAlpha;
            image.color = imageColour;
            yield return 0;
        }

        yield break;
    }

    private IEnumerator ShowVisualCorountine() //Set the visual circle visible after a delay
    {
        yield return new WaitForSeconds(timeB4VisualShows);
        visualCircle.SetActive(true);
    }

}
