using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SunMovement : MonoBehaviour
{

    [Header("Necessary GameObjects")]
    [SerializeField] private GameObject sun;
    [SerializeField] private GameObject startPoint;
    [SerializeField] private GameObject endPoint;
 
    [Header("MoveSpeed related")]
    [SerializeField] private float movementSpeed = 10;
    private enum sunSpeedBasis
    {
        MoveSpeed,
        OverallTime
    }
    [SerializeField] private sunSpeedBasis SunSpeedBasis;
    [SerializeField] private  float timeBuffer = 1;

    private Vector3 currentSunPos = new Vector3(0,0,0);

    private Vector3 targetPos = new Vector3(0,0,0);
    
    private Vector3 movementPerFrame = new Vector3(0,0,0);


    // Start is called before the first frame update
    void Start()
    {
        if(startPoint == null || endPoint == null || sun == null) // null check for start/end points
        {   
            sun = transform.GetChild(0).gameObject;
            startPoint = transform.GetChild(1).gameObject;
            endPoint = transform.GetChild(2).gameObject;
        }

        sun.transform.position = startPoint.transform.position; // make sure sun is at startPoint. It should be by default but hey you never know
        targetPos = endPoint.transform.position;

        switch(SunSpeedBasis) //if want to use movement speed use case 0. If want to have sun speed calculated based on overall experience time, then pick case 1;
        {
            case(sunSpeedBasis.MoveSpeed): //movementSpeed is unaffected
            
            break;

            case(sunSpeedBasis.OverallTime):
                movementSpeed = Vector3.Distance(startPoint.transform.position, endPoint.transform.position)/(ExperienceManager.Instance.ExperienceLength + timeBuffer); //calc movement speed of sun if it is to reach the endPoint by end of experience
            break;
        }


    }

    // Update is called once per frame
    void Update()
    {
        currentSunPos = sun.transform.position; //grab the transform.position value once cos its easier
       
            if(currentSunPos.y > targetPos.y)
            {
                sun.transform.position = Vector3.MoveTowards(sun.transform.position, endPoint.transform.position, movementSpeed * Time.deltaTime);
            }


            if(currentSunPos.y <= targetPos.y) //check if it will have gone past the end point
            {
                currentSunPos = targetPos;
                Debug.Log("Sun has set and has turned to red");
                sun.GetComponent<Renderer>().material.color = Color.red;
            }
      
        }
    
}
