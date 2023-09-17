using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ExperienceManager : MonoBehaviour
{

    [SerializeField] private float experienceLength;
    public float ExperienceLength
    {
        get { return experienceLength;}
    }

    private float experienceTimer;

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

            if(experienceTimer <= 0)
            {
                fadeToBlack.SetActive(true);
            }
        }
        

        
    }

}
