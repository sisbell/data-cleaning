### Code Data
The meanData.csv contains the following data. 
* subject_id: id of one of the participants. It is a numeric value between 1 and 30
* activity: the activity of the participant while recording the measurements: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The remaining fields can be understood with the following rules (see data/features_info.txt for more info on the raw data)
1. first section is the measurement transform time or fft
2. second section is body OR gravity.
3. third section is the type of measurement: acceleration, gyro, gyro_jerk
4. fourth section is the type of statistic: mean, std (standard deviation)
5. fifth section is the coordinate of the movement in space, X, Y or Z.
6. six section: averarge identifier. The measurement is an average over the subject_id and activity

All feature measurements are decimals between [-1, 1]

[1] "subject_id"                                             "activity"                                              
[3] "time_body_acceleration_mean_x_average"                  "time_body_acceleration_mean_y_average"                 
[5] "time_body_acceleration_mean_z_average"                  "time_body_acceleration_std_x_average"                  
[7] "time_body_acceleration_std_y_average"                   "time_body_acceleration_std_z_average"                  
[9] "time_gravity_acceleration_mean_x_average"               "time_gravity_acceleration_mean_y_average"              
[11] "time_gravity_acceleration_mean_z_average"               "time_gravity_acceleration_std_x_average"               
[13] "time_gravity_acceleration_std_y_average"                "time_gravity_acceleration_std_z_average"               
[15] "time_body_acceleration_jerk_mean_x_average"             "time_body_acceleration_jerk_mean_y_average"            
[17] "time_body_acceleration_jerk_mean_z_average"             "time_body_acceleration_jerk_std_x_average"             
[19] "time_body_acceleration_jerk_std_y_average"              "time_body_acceleration_jerk_std_z_average"             
[21] "time_body_gyro_mean_x_average"                          "time_body_gyro_mean_y_average"                         
[23] "time_body_gyro_mean_z_average"                          "time_body_gyro_std_x_average"                          
[25] "time_body_gyro_std_y_average"                           "time_body_gyro_std_z_average"                          
[27] "time_body_gyro_jerk_mean_x_average"                     "time_body_gyro_jerk_mean_y_average"                    
[29] "time_body_gyro_jerk_mean_z_average"                     "time_body_gyro_jerk_std_x_average"                     
[31] "time_body_gyro_jerk_std_y_average"                      "time_body_gyro_jerk_std_z_average"                     
[33] "time_body_acceleration_magnitude_mean_average"          "time_body_acceleration_magnitude_std_average"          
[35] "time_gravity_acceleration_magnitude_mean_average"       "time_gravity_acceleration_magnitude_std_average"       
[37] "time_body_acceleration_jerk_magnitude_mean_average"     "time_body_acceleration_jerk_magnitude_std_average"     
[39] "time_body_gyro_magnitude_mean_average"                  "time_body_gyro_magnitude_std_average"                  
[41] "time_body_gyro_jerk_magnitude_mean_average"             "time_body_gyro_jerk_magnitude_std_average"             
[43] "fft_body_acceleration_mean_x_average"                   "fft_body_acceleration_mean_y_average"                  
[45] "fft_body_acceleration_mean_z_average"                   "fft_body_acceleration_std_x_average"                   
[47] "fft_body_acceleration_std_y_average"                    "fft_body_acceleration_std_z_average"                   
[49] "fft_body_acceleration_jerk_mean_x_average"              "fft_body_acceleration_jerk_mean_y_average"             
[51] "fft_body_acceleration_jerk_mean_z_average"              "fft_body_acceleration_jerk_std_x_average"              
[53] "fft_body_acceleration_jerk_std_y_average"               "fft_body_acceleration_jerk_std_z_average"              
[55] "fft_body_gyro_mean_x_average"                           "fft_body_gyro_mean_y_average"                          
[57] "fft_body_gyro_mean_z_average"                           "fft_body_gyro_std_x_average"                           
[59] "fft_body_gyro_std_y_average"                            "fft_body_gyro_std_z_average"                           
[61] "fft_body_acceleration_magnitude_mean_average"           "fft_body_acceleration_magnitude_std_average"           
[63] "fft_body_body_acceleration_jerk_magnitude_mean_average" "fft_body_body_acceleration_jerk_magnitude_std_average" 
[65] "fft_body_body_gyro_magnitude_mean_average"              "fft_body_body_gyro_magnitude_std_average"              
[67] "fft_body_body_gyro_jerk_magnitude_mean_average"         "fft_body_body_gyro_jerk_magnitude_std_average"  