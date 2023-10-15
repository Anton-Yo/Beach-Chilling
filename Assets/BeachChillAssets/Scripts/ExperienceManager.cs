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
    [SerializeField] private GameObject visualCircle;

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

    [SerializeField] private GameObject fadeToBlack;
    // Start is called before the first frame update
    void Start()
    {
        experienceTimer = experienceLength;
        StartCoroutine(ShowVisualCorountine());

        if(fadeToBlack.activeSelf)
        {
            fadeToBlack.SetActive(false);
        }
       
    }

    // Update is called once per frame
    void Update()
    {

        if(experienceTimer > 0)
        {
            experienceTimer -= Time.deltaTime;

            if(experienceTimer <= 0 && !noFinish)
            {
                Debug.Log("Experience Ended");
                Application.Quit();
            }
        } 
    }

    private IEnumerator ShowVisualCorountine()
    {
        yield return new WaitForSeconds(timeB4VisualShows);
        visualCircle.SetActive(true);
    }

}
