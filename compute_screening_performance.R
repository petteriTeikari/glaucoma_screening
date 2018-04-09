compute.screening.performance = function(d,c,g) { # Actual computation
  
  # d - device specificity
  # c - clinician specificity
  # g - glaucoma prevalence
  
  # First pass (device and glaucoma prevalence) -----------------------------
  
    # See for example:
    # http://sphweb.bumc.bu.edu/otlt/MPH-Modules/BS/BS704_Probability/BS704_Probability6.html
  
    P_A = g
    
    glaucoma_TP = (d * g)
    nonglaucoma_FP = ((1-g)*(1-d))
    P_B = glaucoma_TP + nonglaucoma_FP
    
    P_BA = d
    
    P_AB_1 = P_BA*P_A / P_B
    
  # First pass (device & clinician and glaucoma prevalence) -----------------------------
  
  
    # See later, a better way to quantify the clinical involvement?
    # e.g. Leibig et al. (2017): http://doi.org/10.1038/s41598-017-17876-z
    
    # And how to handle the "noisy labels", i.e. when clinicians do not get it right
    # Yao et al. (2017): https://arxiv.org/abs/1711.00583
    # Rolnick et al. (2017): https://arxiv.org/abs/1705.10694
    
    # P_A stays the same
    
      # "The truth table" gets a bit more complicated, do later
  
  
  
  
  return(P_AB_1)
  
}



