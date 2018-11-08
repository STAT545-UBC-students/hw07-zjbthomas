#' @title Write and data frame
#'
#' @description Write and read data frame to/from plain text delimited files
#' while retaining factor levels.
#'
#' @usage dfwrite(df, dffilename, lvfilename = "levels.txt")
#'
#' @param df a data frame. An error is raised if it is not a data frame.
#'
#' @param dffilename path to store the file of the data frame.
#'
#' @param lvfilename (optional) path to store the companion file.
#' If it is not set, a "levels.txt" is used under the same folder of the file for data frame.
#'
#' @return
#' \code{dfwrite()} returns nothing. \code{dfread()} returns a data frame read from files.
#' An error is raised if the input is not a dataframe, or files not found.
#' Two files are generated: one text file for data frame, one companion file for factor levels.
#'
#' @rdname df_read_write
#'
#' @export

dfwrite <- function(df, dffilename, lvfilename = NA) {
  # check if the input is a factor or not
  dfcheck(df)
  # write data frame using write_csv()
  readr::write_csv(df, dffilename)
  # get names of columns of factors
  factor_cols <- names(Filter(is.factor, df))
  # check filename for levels
  if (is.na(lvfilename)) {
    # use dirname() to get path of filename
    lvfilename <- paste0(dirname(dffilename), "/", "levels.txt")
  }
  # write levels to companion file
  # use lapply() and levels() to get levels of factor columns
  dput(lapply(df[factor_cols], levels), lvfilename)
}

#' @usage dfread(dffilename, lvfilename = "levels.txt")
#'
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
