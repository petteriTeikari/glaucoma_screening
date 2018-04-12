# PARAM that you are interested in tweaking

  # Simulation resolution
  step_resolution = 0.0025 # for clinician, device specificity
  glaucoma_prevalence_steps = 0.001
  
  # Visualization parameters
  vis_param = list()
  vis_param['d_spec'] = 0.95 # for 2D plots as constant
  vis_param['c_spec'] = 0.80 # for 2D plots as constant
  vis_param['g_prev'] = 0.032 # for 2D plots as constant
  

# INIT --------------------------------------------------------------------

  # Source this file to make the subfunction work?
  script.dir <- dirname(sys.frame(1)$ofile) # Define Path for this script
  source(file.path(script.dir, 'compute_screening_performance.R', fsep = .Platform$file.sep))
  source(file.path(script.dir, 'visualize_simulation.R', fsep = .Platform$file.sep))
  
  # Libraries needed
  # http://blog.aicry.com/r-heat-maps-with-ggplot2/
  library(ggplot2) # for plotting
  library(RColorBrewer)
  library(reshape2)
  library(gridExtra)
  library(grid)
  
  # Simulation vectors
  
    # "AUC"
    device_specificity = seq(from = step_resolution, to = 1, by = step_resolution)
    
    # See e.g. 
    # Reus et al. (2010), https://doi.org/10.1016/j.ophtha.2009.09.026
    # Hadwin et al. (2013), http://dx.doi.org/10.1111/opo.12066
    # Scheetz et al. (2015), http://dx.doi.org/10.1111/ijcp.12600
    clinician_specificity = seq(from = step_resolution, to = 1, by = step_resolution)
  
    # Glaucoma prevalence
    glaucoma_prevalence = seq(from = glaucoma_prevalence_steps, to = 0.1, by = glaucoma_prevalence_steps)
    
    # Initialize the 3D Array (matrix) to store the results
    # https://stackoverflow.com/questions/10961141/setting-up-a-3d-matrix-in-r-and-accessing-certain-elements
    empty_data = as.numeric(rep(NA, length(device_specificity)*length(clinician_specificity)*length(glaucoma_prevalence)))
    sensitivity = array(empty_data, c(length(device_specificity), length(clinician_specificity), length(glaucoma_prevalence)))

# Go through the vectors --------------------------------------------------

  for (d in 1:length(device_specificity)) {
    
    cat(d, '/', length(device_specificity), '\n')
    
    for (c in 1:length(clinician_specificity)) {
      
      for (g in 1:length(glaucoma_prevalence)) {
        
        # TODO! There might be more efficient vectorized way to compute
        value_out <- compute.screening.performance(device_specificity[d],
                                                   clinician_specificity[c],
                                                   glaucoma_prevalence[g])
        
        # Assign to the 3D matrix (you could do directly, but
        # maybe nicer for demonstration and debug purposes)
        sensitivity[d,c,g] = value_out
        
      } # end of d
    } # end of c
  } # end of g
    
  cat('Done computing for each value combination')
  

# VISUALIZE ---------------------------------------------------------------

  visualize.simulation(sensitivity, 
                       device_specificity, 
                       clinician_specificity, 
                       glaucoma_prevalence,
                       vis_param)
