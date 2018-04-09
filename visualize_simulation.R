visualize.simulation = function(sensitivity, 
                                device_specificity, 
                                clinician_specificity, 
                                glaucoma_prevalence,
                                vis_param) {
  
     # Lattice package
    require(lattice)
  
  
    # Unpack the params from list.
    # TODO! There must be a better way to do this
    d_spec = as.numeric(unlist(vis_param['d_spec']))
    c_spec = as.numeric(unlist(vis_param['c_spec']))
    g_prev = as.numeric(unlist(vis_param['g_prev']))

    # find corresponding indices for the values
    d_i = which.min(abs(device_specificity - d_spec))
    c_i = which.min(abs(clinician_specificity - c_spec))
    g_i = which.min(abs(glaucoma_prevalence - g_prev))
    
    # Actually we can make 3 different
    # 3D structures out of the original 4D sensitivity array to plot
    # the data as 2D heatmaps
    data_dev_clin = sensitivity[,,g_i]
    data_dev_glauc = sensitivity[,c_i,]
    data_clin_glauc = sensitivity[d_i,,]
    
    # Convert to dataframes (if needed)
    df_dev_clin = data.frame(data_dev_clin)
    df_dev_glauc = data.frame(data_dev_glauc)
    df_clin_glauc = data.frame(data_clin_glauc)

    # Use the lattice package for 3D Plots
    # for multiple plots, see: 
    # https://stackoverflow.com/questions/2540129/lattice-multiple-plots-in-one-window
    z_limits = c(0,1)
    
    p1 = levelplot(z ~ x * y, data=data_dev_clin, xlab="Device Specificity", ylab='Clinician Specificity',
              col.regions = heat.colors(100)[length(heat.colors(100)):1], main=paste('Glaucoma Prevalence = ', g_prev),
              aspect=1, zlim=z_limits) # aspect=1 makes plot square
    
    p2 = levelplot(data_dev_glauc, xlab="Device Specificity", ylab='Glaucoma Prevalence',
                   col.regions = heat.colors(100)[length(heat.colors(100)):1], main=paste('Clinician Specificity = ', c_spec),
                   aspect=1, zlim=z_limits)
    
    p3 = levelplot(data_clin_glauc, xlab='Clinician Specificity', ylab='Glaucoma Prevalence',
                   col.regions = heat.colors(100)[length(heat.colors(100)):1]   , main=paste('Device Specificity = ', d_spec),
                   aspect=1, zlim=z_limits) 
    
    # Plot prints
    print(p1, split = c(1, 1, 3, 1), more = TRUE)
    print(p2, split = c(2, 1, 3, 1), more = TRUE)
    print(p3, split = c(3, 1, 3, 1), more = FALSE)  # more = FALSE is redundant
  
}