

## Introduction

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

## Glaucoma Statistics

Some statistics from papers giving you guidelines where to start your journey in the world of glaucoma health economics. Some estimates of the **glaucoma prevalence**, **direct costs per disease stage**, and **indirect societal costs** due to lost productivity.

The cynical take again would be that for hospitals and insurance providers (especially in a system like USA where **[patients do not know what things cost](http://doi.org/10.1001/jama.2016.4325))** it might be profitable to **have sick patients** coming to your business as illustrated with the case [where surgery complications where found to be the most profitable business](https://www.nytimes.com/2013/04/17/health/hospitals-profit-from-surgical-errors-study-finds.html).

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/hospitals_profit.png "Logo Title Text 1")}(https://www.nytimes.com/2013/04/17/health/hospitals-profit-from-surgical-errors-study-finds.html)

If government (i.e. tax-payers) pay the bill, there is an actual system-level incentive to reduce both direct healthcare costs, and indirect costs as the too sick patients cannot work, pay taxes and execute. One could generalize that healthcare incentives are distorted.

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/misaligned_incentives.png "Logo Title Text 1")](https://www.slideshare.net/PetteriTeikariPhD/artificial-intelligence-in-ophthalmology)

**Slide 62 from [[AI in Ophthalmology | Startup Landscape]](https://www.slideshare.net/PetteriTeikariPhD/artificial-intelligence-in-ophthalmology)

One way to achieve **[price transparency](https://www.nytimes.com/2016/12/19/upshot/price-transparency-is-nice-just-dont-expect-it-to-cut-health-costs.html)** in the US healthcare system could be the introduction of "$5,000 health stamps" (see e.g. [Dinesh D'Souza's answer](https://www.youtube.com/watch?v=uOuLQXnbd5s)), where the patients would be spending their own money for routine healthcare (which of course could have unintended consequences)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/health_stamps.png "Logo Title Text 1")](https://www.nytimes.com/2016/12/19/upshot/price-transparency-is-nice-just-dont-expect-it-to-cut-health-costs.html)

### Vision Loss

From [Bourne et al. (2017)](http://dx.doi.org/10.1136/bjophthalmol-2017-311258):

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/bourne2017_visionLossByCountries.png "Logo Title Text 1")

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/bourne2017_MSVIByCountries.png "Logo Title Text 1")

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/bourne2017_mildByCountries.png "Logo Title Text 1")

### Glaucoma Prevalence and projections

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/glaucoma_stats.png "Logo Title Text 1")

[Quigley and Broman (2010)](http://doi.org/10.1136/bjo.2005.081224)
[Cited by 3,677 articles](https://scholar.google.co.uk/scholar?cites=3913844328440524411&as_sdt=2005&sciodt=0,5&hl=en)

See also [Tham et al. (2014)](http://dx.doi.org/10.1016/j.ophtha.2014.05.013) for projections, and [Chan et al. (2014)](http://dx.doi.org/10.1136/bjophthalmol-2014-306102) for more Asia-specific statistics (from SERI)

From [Burr et al. (2007)](http://researchonline.lshtm.ac.uk/8383/):

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/burr2007_OAG_UK.png "Logo Title Text 1")

### Stage-wise costs

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/US_costs.png "Logo Title Text 1")

[Lee et al. (2006)](http://dx.doi.org/10.1001/archopht.124.1.12)

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/EU_costs.png "Logo Title Text 1")

[Traverso et al. (2005)](http://dx.doi.org/10.1136/bjo.2005.067355)

**Willingness to pay for QALY in Finland**

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/Finland_QALY_willingness.png "Logo Title Text 1")

[Vaahtoranta-Lehtonen et al. (2007)](https://doi.org/10.1111/j.1600-0420.2007.00947.x) (**[cited by 66 articles](https://scholar.google.co.uk/scholar?cites=8938518617503454586&as_sdt=2005&sciodt=0,5&hl=en)**)

**Especially in Singapore**

See studies by 
* [Seang-Mei et al. 2005](https://www.ncbi.nlm.nih.gov/pubmed/16276277) | [cited by 34 articles](https://scholar.google.co.uk/scholar?cites=7546155073406021974&as_sdt=2005&sciodt=0,5&hl=en)
* [Wang and Chew (2004)](http://dx.doi.org/10.1111/j.1442-9071.2004.00906.x) | [cited by 21 articles](https://scholar.google.co.uk/scholar?cites=171586620128783280&as_sdt=2005&sciodt=0,5&hl=en), 
* [Lim et al. (2016)](https://doi.org/10.1097/IJG.0000000000000393) | [cited by 9 articles](https://scholar.google.co.uk/scholar?cites=6257751590156299834&as_sdt=2005&sciodt=0,5&hl=en)

#### Scheetz et al. (2016) Review

[Scheetz et al. 2016](http://dx.doi.org/10.1111/ijcp.12600): 

*The burden of glaucoma **increases as disease severity worsens**; especially the financial burden. In the USA, there is a fourfold increase in average direct costs per patient (pp), with the earliest stage of glaucoma costing US $623pp and end stage glaucoma/blindness costing US $2511pp (Lee et al. 2006). There have been similar findings in Europe with early stages of glaucoma having direct costs of US $588pp and end stage costing US $1253 per person per year (Traverso et al. 2005).*

*The **indirect costs** of glaucoma can be difficult to quantify. In Australia, the prevalence of POAG in 2005 was 208,000 and is expected to rise to 379,000 by 2025 (Dirani et al. 2011). This increase will see the total estimated costs of treating those with POAG (healthcare costs, indirect costs such as **loss of productivity** and loss of well-being measured as disability adjusted life years rise from US $1.77 billion in 2005 to US $4.01 billion in 2025 (Dirani et al. 2011).*

*A **European** study by Poulsen estimates the average cost per person for community services (including equipment, residential care, household and guide dogs) to be US $7885 and patient and family (household and transportation) to be US $11,149 annually (Poulsen et al. 2005).*

### Biomarkers

#### Visual Field

From [Boodhna et al. 2017](http://openaccess.city.ac.uk/17931/)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/boodhna2017_MD_change.png "Logo Title Text 1")](http://openaccess.city.ac.uk/17931/)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/boodhna2017_MDchangeRates.png "Logo Title Text 1")](http://openaccess.city.ac.uk/17931/)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/boodhna2017_MDchangeRatesPerGroup.png "Logo Title Text 1")](http://openaccess.city.ac.uk/17931/)

From [Bryan and Crabb (2018)](http://doi.org/10.1167/tvst.7.1.22), new way to visualize (Hedgehog Plot):

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/bryanCrabb2018_hedgehogPlot.png "Logo Title Text 1")](http://doi.org/10.1167/tvst.7.1.22)
 
*(A) Hedgehog Plot showing rate of VF progression status in a **sample of 200 eyes from 100 patients**. (B) All eyes are colored depending on the rate of progression. This can be divided into (C) eyes that are stable/improving (slope > 0 dB/y), (D) eyes with slow progression (−0.5 < slope < 0 dB/y), (E) eyes with moderate progressoion (−1 < slope < −0.5 dB/y), and (F) eyes with fast progression (−1 < slope).*

##### Deep Learning

[Wen et al. (2018)](https://doi.org/10.1101/293621): To determine if deep learning networks could be trained to **forecast a future** 24-2 Humphrey Visual Field (HVF). More than 1.7 million perimetry points were extracted to the hundredth decibel from **32,443 24-2 HVFs**. Conclusions: Using unfiltered **real-world datasets**, deep learning networks show an impressive ability to not only learn spatio-temporal HVF changes but also to **generate predictions for future HVFs up to 5.5 years**, given only a single HVF. 

#### IOP:

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/burr2007_IOP.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

*Intraocular pressure (IOP). G, glaucoma population; N, normal distribution; P, frequency of distribution of IOP in population.*

#### Optic disc screening performance:

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/burr2007_glaucomaOpticDisc.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

##### Deep Learning

We retrospectively included 48 116 fundus photographs for the development and validation of a deep learning algorithm. In the validation dataset, this deep learning system achieved an **AUC of 0.986** with sensitivity of 95.6% and specificity of 92.0%. The most common reasons for **false-negative** grading (n = 87) were GON with coexisting eye conditions (n = 44 [50.6%]), including pathologic or high myopia (n = 37 [42.6%]), diabetic retinopathy (n = 4 [4.6%]), and age-related macular degeneration (n = 3 [3.4%]). The leading reason for **false-positive** results (n = 480) was having other eye conditions (n = 458 [95.4%]), mainly including physiologic cupping (n = 267 [55.6%]). Misclassification as **false-positive** results amidst a normal-appearing fundus occurred in only 22 eyes (4.6%).

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/li2018_fundusDL.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/li2018_falseNegative.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/li2018_falsePositive.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

#### OCT RNFL thickness

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/burr2007_glaucomaRNFL.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

#### Structural vs. Functional tests

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/burr2007_structureVsFunction.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

##### RFNL + Visual Field

[Garway-Heath et al. (2018)](https://dx.doi.org/10.3310%2Fhta22040): OBJECTIVE: To compare statistical methods that **combine VF and OCT data** with VF-only methods to establish whether or not these allow (1) more rapid identification of glaucoma progression and (2) shorter or smaller clinical trials.

*The sANSWERS method combining VF and OCT data had a **higher hit rate** and **identified progression more quickly** than the reference (Guided Progression Analysis™ (GPA) Software, Carl Zeiss) and other VF-only methods, and produced more accurate estimates of the progression rate, but did not increase treatment effect statistical significance. Similar studies with current OCT technology need to be undertaken and the statistical methods need refinement.*

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/GarwayHeath2018_structureFunction.png "Logo Title Text 1")](https://dx.doi.org/10.3310%2Fhta22040)

#### Comparison

From [Burr et al. (2007)](http://researchonline.lshtm.ac.uk/8383/):

[![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/burr2007_summary.png "Logo Title Text 1")](http://researchonline.lshtm.ac.uk/8383/)

