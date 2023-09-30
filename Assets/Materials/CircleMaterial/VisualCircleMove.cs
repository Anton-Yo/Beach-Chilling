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
    private float visualTimer = 0;
    private bool circleFilled = false;
    private float buttonTimer = 0;
    private float buttonStartLocation;

    void Start()
    {
        buttonStartLocation = button.localEulerAngles.z;
        Debug.Log(buttonStartLocation);
    }
    
    void Update()
    {
        delayStartTimer-=Time.deltaTime;
        if(delayStartTimer<=0)
        {
            TimerSetup();
            CircleChange(visualTimer);
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
}
