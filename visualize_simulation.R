visualize.simulation = function(sensitivity, 
                                device_specificity, 
                                clinician_specificity, 
                                glaucoma_prevalence,
                                vis_param) {
  
    # convert
    dev = array(as.numeric(unlist(device_specificity)))
    clin = array(as.numeric(unlist(clinician_specificity)))
    glauc = array(as.numeric(unlist(glaucoma_prevalence)))
  
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
    
    # Define axis labels for plotting
    x_lab = c('Device Specificity', 'Device Specificity', 'Clinician Specificity')
    y_lab = c('Clinician Specificity', 'Glaucoma Prevalence', 'Glaucoma Prevalence')
    z_lab = rep('Specificity', length(y_lab))
    
    # non-elegant way to define
    x_lims = c(c(min(device_specificity), max(device_specificity)),
               c(min(device_specificity), max(device_specificity)),
               c(min(clinician_specificity), max(clinician_specificity)))
    
    y_lims = c(c(min(clinician_specificity), max(clinician_specificity)),
               c(min(glaucoma_prevalence), max(glaucoma_prevalence)),
               c(min(glaucoma_prevalence), max(glaucoma_prevalence)))
    
    # Transform into Melted form (data frame)
    melt_dev_clin = melt(data_dev_clin)
    melt_dev_glauc = melt(data_dev_glauc)
    melt_clin_glauc = melt(data_clin_glauc)
    
    melt_df = list(melt_dev_clin, melt_dev_glauc, melt_clin_glauc)

    # Use ggplot2 for 2D density plots now
    # https://www.r-graph-gallery.com/2d-density-plot-with-ggplot2/
    p = list()
    
    # Define palette
    hm.palette <- colorRampPalette(rev(brewer.pal(11, 'Spectral')), 
                                   space='Lab')
    
    # Define color bar ticks and limits
    value_limits = c(0,1)
    value_breaks = c(0, 0.2, 0.4, 0.6, 0.8, 1.0)
    
    # For using ggplot2 in a loop
    # http://ggplot2.tidyverse.org/reference/aes_.html
    for (i in 1:length(y_lab)) {
    
      # x = seq(x_lims[(i-1)*2 + 1], x_lims[(i-1)*2 + 1], length.out=length(melt_df[[i]]$Var1))
      # y = seq(y_lims[(i-1)*2 + 1], y_lims[(i-1)*2 + 1], length.out=length(melt_df[[i]]$Var2))
        
      p[[i]] = ggplot(melt_df[[i]], aes_(x = ~Var1, 
                                         y = ~Var2, 
                                         fill = ~value )) +
        geom_tile() +
        theme(aspect.ratio=1) + 
        scale_fill_gradientn(colours = hm.palette(100),
                             limits = value_limits,
                             breaks = value_breaks) +
        ylab(y_lab[i]) +
        xlab(x_lab[i]) +
        theme(axis.text.x = element_text(angle = 90, hjust = 1))
    }
    
    no_of_cols = length(y_lab)
    do.call(grid.arrange, c(p, list(ncol=no_of_cols)))
    
  
}
