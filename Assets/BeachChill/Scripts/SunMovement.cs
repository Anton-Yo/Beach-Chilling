using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SunMovement : MonoBehaviour
{

    [SerializeField] private GameObject startPoint;
    [SerializeField] private GameObject endPoint;

    [SerializeField] private float movementSpeed;
    private Vector3 moveDir = new Vector3(0,0,0);


    // Start is called before the first frame update
    void Start()
    {
        if(startPoint == null || endPoint == null) // null check for necessary start/end points
        {
            startPoint = this.gameObject.transform.parent.gameObject;
            endPoint = startPoint.transform.GetChild(1).gameObject;
        }

        moveDir = startPoint.transform.position - endPoint.transform.position; //grabs direction the sun must move to go from Point A -> B
        moveDir = moveDir.normalized;
    }

    // Update is called once per frame
    void Update()
    {
        
        if(transform.localPosition.z > endPoint.transform.localPosition.z) //While the sun is not at the destination, move it towards the destination at a set speed
        {
            transform.localPosition = transform.localPosition - moveDir * movementSpeed * Time.deltaTime;

            if(transform.localPosition.z < endPoint.transform.localPosition.z) //if passed end point, set transform.position to end point.
            {
                transform.localPosition = endPoint.transform.localPosition;
            }
        }

        if(transform.localPosition.z < endPoint.transform.localPosition.z) //While the sun is not at the destination, move it towards the destination at a set speed
        {
            transform.localPosition = transform.localPosition + moveDir * movementSpeed * Time.deltaTime;

            if(transform.localPosition.z > endPoint.transform.localPosition.z) // if passed end point, set transform.position to end point.
            {
                transform.localPosition = endPoint.transform.localPosition;
            }
        }
        
        

    }
}
