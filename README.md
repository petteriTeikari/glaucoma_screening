# glaucoma_screening

No idea how to make glaucoma screening for **pre-perimetric** glaucoma cost-effective? How about **later stages**? Would it make more sense to target **disease progression** at home from health economics perspective?

## Background estimates

So at population level with glaucoma prevalence of 3.2% in SG at specificity of 0.80 if the pupillometer would gove positice result for glaucoma, then the person would hsve glaucoma at the probability of 11.38%? [Based on this example](http://sphweb.bumc.bu.edu/otlt/MPH-Modules/BS/BS704_Probability/BS704_Probability6.html)

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/doodle1.png "Logo Title Text 1")

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/doodle2.png "Logo Title Text 1")

Specificity of 0.9 would give 23%
And 0.95 -> 39%
And 0.99 -> 77%
And 0.999 -> 97%

So specificity of 0.99 would be quite good in practice

## Simulation Init (R)

You can try to build on this (*divide axis values by 1000*), and at the moment the **clinician uncertainty** is **not** taken into account and is always 100% correct

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/init_simulation_div_axes_by_1000.png "Logo Title Text 1")

So to establish first what are the True Positive, False Positive, False Negative, True Negative rates depending on our device specificity, glaucoma prevalence, and clinician variability in glaucoma diagnosis

## References

* Basic **Bayesian stats** intro: http://sphweb.bumc.bu.edu/otlt/MPH-Modules/BS/BS704_Probability/BS704_Probability6.html
* **Bayesian vs. Frequentist Holy War**: http://jakevdp.github.io/blog/2014/03/11/frequentism-and-bayesianism-a-practical-intro/
* For **clinician performances**, See e.g. Reus et al. (2010), https://doi.org/10.1016/j.ophtha.2009.09.026, Hadwin et al. (2013), http://dx.doi.org/10.1111/opo.12066, Scheetz et al. (2015), http://dx.doi.org/10.1111/ijcp.12600
* For similarish **cost-effectiveness** paper: Kymes,S. M., Kass,M. A., Anderson,D. R., Miller,J. P., Gordon,M. O. and Ocular Hypertension Treatment Study Group, (OHTS). *Am.J.Ophthalmol.* Management of ocular hypertension: a cost-effectiveness approach from the Ocular Hypertension Treatment Study. 2006 141(6):997-1008.
http://bolandlab.wilmer.jhu.edu/refs/PMID/16765666.pdf | https://doi.org/10.1016/j.ajo.2006.01.019

### Kymes et al. (2006)

For the **treatment of ocular hypertension** (not *screening*): 

*"**Utility** loss because of POAG was particularly influential in our analyses. Utility loss is a measurement of the impact
of POAG on quality of life because of the loss of visual. Some **clinicians have questioned** whether a nonfatal disease with **modest early impact on functional status** should be considered to have a significant impact on quality of life. [9] The model was most sensitive to the utility loss that is experienced in stage 1 of the disease, where we assumed the utility loss was small (that is, 0.026)"*

*"At present, published risk models for the progression to POAG do not describe the precision of the estimate of risk [38,39]. Therefore, the results of such models should be viewed with caution in characterizing risk for an individual patient"*

"*UNCERTAINTY AND THE COST-EFFECTIVENESS DECISION: Figure 3 details the result of our Monte Carlo simulation. It demonstrates that, in countries or settings in which **health care resources are more dear** (that is, the “WTP” for a QALY is $43,000), the “Treat >5%” threshold may be preferred. However, **most industrialized nations** would consider a WTP of $43,000 to be low, and the “Treat >2%” threshold would provide the most benefit. The exception to this may be seen in certain **government programs** where **funding restrictions exist**. In such settings, the >5% threshold may be preferred, but even in such settings, it is not likely that the “Treat no one” threshold would be viewed as the option that provides
the most benefit.

![alt text](https://github.com/petteriTeikari/glaucoma_screening/blob/master/images/kymes2006_figure3.png "Logo Title Text 1")

[9] Robin AL, Frick KD, Katz J, Budenz D, Tielsch JM. The Ocular Hypertension Treatment Study: Intraocular pressure
lowering prevents the development of glaucoma, but does that mean we should treat before the onset of disease? *Arch
Ophthalmol* 2004;122:376 –378. http://doi.org/10.1001/archopht.122.3.376 [Cited by 14](https://scholar.google.com.sg/scholar?client=ubuntu&um=1&ie=UTF-8&lr&cites=3304731438540953743)


[38] Mansberger SL. A risk calculator to determine the probability of glaucoma. *J Glaucoma* 2004;13:345–347. https://www.researchgate.net/publication/8481156_A_Risk_Calculator_to_Determine_the_Probability_of_Glaucoma [Cited by 29](https://scholar.google.com.sg/scholar?client=ubuntu&um=1&ie=UTF-8&lr&cites=5948696291567823251)

[39]  Medeiros FA, Weinrab RN, Sample PA, et al. Validation of a predictive model to estimate the risk of conversion from
ocular hypertension to glaucoma. *Arch Ophthalmol* 2005; 123:1351–1360. http://doi.org/10.1001/archopht.123.10.1351 [Cited by 179](https://scholar.google.com.sg/scholar?client=ubuntu&hs=8GT&um=1&ie=UTF-8&lr&cites=8711706948014539558)
