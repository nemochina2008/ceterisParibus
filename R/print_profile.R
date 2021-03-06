#' Print Ceteris Paribus Profiles
#'
#' @param x a ceteris paribus profile produced with the 'calculate_profiles' function
#' @param ... other arguments that will be passed to head()
#'
#' @export
#'
#' @examples
#' library("DALEX")
#'  \dontrun{
#' library("randomForest")
#' set.seed(59)
#' apartments_rf_model <- randomForest(m2.price ~ construction.year + surface + floor +
#'                                       no.rooms + district, data = apartments)
#' vars <- c("construction.year", "surface", "floor", "no.rooms", "district")
#' variable_splits <- calculate_variable_splits(apartments, vars)
#' new_apartment <- apartmentsTest[1:10, ]
#' profiles <- calculate_profiles(new_apartment, variable_splits,
#'                                apartments_rf_model)
#' profiles
#'
#' # only subset of observations
#' small_apartments <- select_sample(apartmentsTest, n = 10)
#' small_apartments
#' small_profiles <- calculate_profiles(small_apartments, variable_splits,
#'                                apartments_rf_model)
#' small_profiles
#'
#' # neighbors for a selected observation
#' new_apartment <- apartments[1, 2:6]
#' small_apartments <- select_neighbours(apartmentsTest, new_apartment, n = 10)
#' small_apartments
#' small_profiles <- calculate_profiles(small_apartments, variable_splits,
#'                                apartments_rf_model)
#' new_apartment
#' small_profiles
#' }
print.ceteris_paribus_profile <- function(x, ...) {
  class(x) <- "data.frame"
  print(head(x, ...))
}
