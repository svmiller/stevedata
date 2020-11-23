context("Data Have Descriptions")

getdescript <- function(package){
  db <- tools::Rd_db(package)
  descript <- lapply(db,function(x) {
    tags <- tools:::RdTags(x)
    if("\\description" %in% tags){
      out <- paste(unlist(x[which(tags=="\\description")]),collapse="")
    }
    else
      out <- NULL
    invisible(out)
  })
  gsub("\n","",unlist(descript))
}
descripts <- getdescript("stevedata")

expect_equal(length(data(package = "stevedata")$results[, "Item"]), length(descripts))
