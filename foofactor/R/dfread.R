#' @rdname df_read_write
#'
#' @export

dfread <- function(dffilename, lvfilename = NA) {
  # write data frame using read_csv()
  ret <- readr::read_csv(dffilename)
  # check filename for levels
  if (is.na(lvfilename)) {
    # use dirname() to get path of filename
    lvfilename <- paste0(dirname(dffilename), "/", "levels.txt")
  }
  # get levels from companion file
  lvs <- dget(lvfilename)
  # set levels of data frame
  for (i in seq_along(lvs)) {
    # first convert columns to factor
    ret[[names(lvs[i])]] <- as.factor(ret[[names(lvs[i])]])
    # set levels
    levels(ret[[names(lvs[i])]]) <- lvs[[i]]
  }
  # return data frame
  return(ret)
}
