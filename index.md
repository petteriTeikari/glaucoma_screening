## Some background

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/topol_bayesianThing.png "Eric Topol at Google Talks talking about personalized precision medicine")](https://youtu.be/hF2QHevDHSw?t=56m31s)

Rough estimates how good the device should be, and how does this translate to real-life performance. Then that should be **linked to cost-estimates** of False Positives (what is the cost of **over-referral**) and False Negatives (what is the cost of **not detecting glaucoma**).

And of course then you need try to estimate what is the **cost saving of picking up glaucoma early** (or at stage I compared to later stages for examples), or added cost. And then what is your average **disease trajectory**, if you can keep your patient at Stage I with costly or inexpensive medication, would that be cheaper than **letting the patient deteriorate to Stage II** and having to start costlier treatment there? 

And then you need some meaningful estimate of the **[QALY](https://en.wikipedia.org/wiki/Quality-adjusted_life_year)**, and are **people interested** actually about their eye health? Do they **adhere** to the medication even?

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/adherence.png "Logo Title Text 1")](https://dx.doi.org/10.1016%2Fj.ophtha.2011.05.013)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/pharmacies_are_awful.png "Logo Title Text 1")](https://www.wired.com/2016/07/pharmacy-experience-sucks-startups-redesigning/)

*featuring [Capsule](https://www.capsulecares.com/) and [Round Refill](https://roundhealth.co/) from [Circadian Design](https://medium.com/circadian-design)*

And finally you can always remember the cynical "truth" that **[Dead Patient is a Cheap Patient](https://www.youtube.com/watch?v=1m0vCOikrcU)**, and in most cases the early intervention does not lead to reduced burden (Resource, and Moneywise) of the healthcare system

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/dead_patient.png "Logo Title Text 1")](https://www.youtube.com/watch?v=1m0vCOikrcU)

And who will actually push against if you could cure patients, or with early intervention to glaucoma kill all the subsequent **revenue from patients**. Is that a sustainable business model, where are the famous **recurring revenues** in this scenario?

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/curingPatientsSustainable.png "Logo Title Text 1")](https://www.cnbc.com/2018/04/11/goldman-asks-is-curing-patients-a-sustainable-business-model.html)

https://www.cnbc.com/2018/04/11/goldman-asks-is-curing-patients-a-sustainable-business-model.html

Everything becomes even more uncertain when your actual "ground truth" diagnosis labels are off. Play with the [table](https://github.com/petteriTeikari/glaucoma_screening/blob/master/tables/ROC_table.ods) if you like, but the analysis/simulation is done in R.

* For **clinician performances**, See e.g. Reus et al. (2010), https://doi.org/10.1016/j.ophtha.2009.09.026, Hadwin et al. (2013), http://dx.doi.org/10.1111/opo.12066, Scheetz et al. (2015), http://dx.doi.org/10.1111/ijcp.12600

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/clinician_performance.png "Logo Title Text 1")
