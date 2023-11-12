using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class VisualCircleMove : MonoBehaviour
{
    [SerializeField] private Image circleIndicator;
    [SerializeField] private float circleIndicatorSpeed;
    [SerializeField] private RectTransform button;
    [SerializeField] private float delayStartTimer;
    [SerializeField] private bool pauseTimer;
    [SerializeField] private CanvasGroup circleGroup;
    [SerializeField] private CanvasGroup inText;
    [SerializeField] private CanvasGroup outText;
    [SerializeField] private float fadeInTime;

    private float visualTimer = 0;
    private bool circleFilled = false;
    private float buttonTimer = 0;
    private float buttonStartLocation;
    private bool fadeIn = true;
    private bool inTextFadeIn = false;
    private bool outTextFadeOut = false;
    private float outTextFadeOutSpeed = 0.2f;

    void Start()
    {
        buttonStartLocation = button.localEulerAngles.z;
        Debug.Log(buttonStartLocation);

    }
    
    void Update()
    {
        if(!pauseTimer)
        {
            delayStartTimer-=Time.deltaTime;
            if(delayStartTimer<=0)
            {
                TimerSetup();
                CircleChange(visualTimer);
                TextChange();
            }
        }
        
        if(fadeIn)
        {
            circleGroup.alpha+= fadeInTime*Time.deltaTime;
        }
    }

    void CircleChange(float circleTimer)
    {
        //circle setup
        float amount = circleTimer*circleIndicatorSpeed/360;
        circleIndicator.fillAmount = amount;
        if(TimerCheck(amount))
        {
            circleIndicator.fillClockwise = false;
        }
        else
        {
            circleIndicator.fillClockwise = true;
        }

        //button setup
        float buttonAmount = buttonTimer*circleIndicatorSpeed/360;
        float buttonAngle = buttonAmount*360;
        button.localEulerAngles = new Vector3(0,0,-buttonAngle+buttonStartLocation);
        
    }

    private bool TimerCheck(float amount)
    {
        if(amount>=1)
        {
            circleFilled = true;
        }
        else if(amount<=0)
        {
            circleFilled = false;
            visualTimer = 0f;
            buttonTimer = 0f; 
        }
        return circleFilled;
    }

    void TimerSetup()
    {
        if(circleFilled)
        {
            visualTimer -= Time.deltaTime;
        }
        else
        {
            visualTimer += Time.deltaTime;
        }

        buttonTimer+= Time.deltaTime;
    }

    void TextChange()
    {
        if(circleIndicator.fillAmount <= 0 || circleIndicator.fillAmount >= 1)
        {
            outTextFadeOut = false;
            outText.alpha = 0;
            inTextFadeIn = true;
        }

        if(circleIndicator.fillAmount >= 0.3 && circleIndicator.fillClockwise == true)
        {
            outTextSetup();
        }

        if(circleIndicator.fillAmount <= 0.7 && circleIndicator.fillClockwise == false)
        {
            outTextSetup();
        }


        if(inTextFadeIn)
        {
            inText.alpha+=Time.deltaTime;
        }
        if(outTextFadeOut)
        {
            outText.alpha-=Time.deltaTime*outTextFadeOutSpeed;
        }
    }

    void outTextSetup()
    {
        if(outText.alpha <=0 && inTextFadeIn == true)
        {
            outText.alpha = 1;
        }
        inTextFadeIn = false;
        inText.alpha = 0;
        outTextFadeOut = true;
    }
}
