#' Deploy the lecture slides in HTML format
#'
#' @param lecture character object indicating which lecture to visualise:
#' \itemize{
#'   \item{'Lecture1': }{Introduction to R - Part 1}
#'   \item{'Lecture2': }{Introduction to R - Part 2}
#'   \item{'Lecture3': }{Raster files and spatial data}
#'   \item{'Lecture4': }{Data processing}
#'   \item{'Lecture5': }{Spatial and temporal statistics}
#'   \item{'Lecture6': }{Automating downloading}
#'}
#'
#' @return this function directs the user to the selected lecture.
#' @export
#'
#' @examples
render_lectures <- function(lecture){
  
  # Setting the directory
  dir <- here::here("doc")
  
  # Setting the lecture names
  lectures <- paste0("Lecture", 1:6)
  
  # Checking if the name corresponds to the existing lectures
  if(!lecture %in% lectures)
    stop("Please provide the proper name of the lecture: 
          'Lecture1' : Introduction to R - Part 1
          'Lecture2' : Introduction to R - Part 2
          'Lecture3' : Raster files and spatial data
          'Lecture4' : Data processing
          'Lecture5' : Spatial and temporal statistics
          'Lecture6' : Automating downloading")
  
  if(lecture == "Lecture1"){
    browseURL(file.path(dir, "Lecture1_Introduction_to_R_I.html"))
  } else if (lecture == "Lecture2"){
    browseURL(file.path(dir, "Lecture2_Introduction_to_R_II.html"))
  } else if (lecture == "Lecture3"){
    browseURL(file.path(dir, "Lecture3_Rasters_and_spatial_data.html"))
  } else if (lecture == "Lecture4"){
    browseURL(file.path(dir, "Lecture4_Data_processing.html"))
  } else if (lecture == "Lecture5"){
    browseURL(file.path(dir, "Lecture5_Spatial_and_temporal_statistics.html"))
  } else if (lecture == "Lecture6"){
    browseURL(file.path(dir, "Lecture6_Automating_downloading.html"))
  }
    
} # end render_lectures


#' Deploy the exercises in HTML format
#'
#' @param exercise character object indicating which exercise to visualise:
#'   'Exercise1', 'Exercise2', or 'Exercise3'
#' @param solved logical argument. Should the solution be displayed? The default is FALSE
#'
#' @return this function directs the user to the selected exercise.
#' @export
#'
#' @examples
render_exercises <- function(exercise, solved = FALSE){
  
  # Setting the directory
  dir <- here::here("doc")
  
  # Setting the lecture names
  exercises <- paste0("Practical_exercise", 1:3)
  
  # Checking if the name corresponds to the existing lectures
  if(!exercise %in% exercises)
    stop("Please provide the proper name of the exercise:
          'Exercise1', 'Exercise2', or 'Exercise3'")
  
  # Checking if the parameter solved is logical
  if(!is.logical(solved))
    stop("The parameter 'solved' must be either TRUE or FALSE")
  
  # Extracting number
  nbr <- substr(exercise, 9, 9)
  
  if(solved){
    browseURL(file.path(dir, paste0("Exercise", nbr, "_solved.html")))
  } else {
    browseURL(file.path(dir, paste0("Exercise", nbr, ".html")))
  } 
  
} # end render_exercises
