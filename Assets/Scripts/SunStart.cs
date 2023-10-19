using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SunStart : MonoBehaviour
{
    [SerializeField] private ParticleSystem system;

    void Start()
    {
        system.Simulate(10, true);
        system.Play(true);
    }

}
