#http://stackoverflow.com/questions/21224800/using-rs-get-function-while-qualifying-with-the-package

rm(list=ls(all=TRUE))
require(TabularManifest)
require(datasets)
require(scales)

#dsObserved <- beaver1
dsObserved <- InsectSprays
dsManifest <- TabularManifest::CreateManifestExploreUnivariate(ds, writeToDisk=FALSE)

# get_with_package <- function( qualifiedFunction ) {
#   #TODO: write regex so that it accommodates a period in the variable name.
# #   if( !grepl("^(\\w+)::(\\w+)$", qualifiedFunction, perl=TRUE) )
# #     stop("The function name should be qualified with it's package. For instance, pass `scales::comma` instead of simply `comma`.")
#   split_function <- strsplit(qualifiedFunction, split="::")[[1]]
#   fx <- getExportedValue(split_function[1], split_function[2])
#   return( fx )
# }
# get_with_package("scales::comma")
# 
# for( variable_index in seq_len(nrow(dsManifest)) ) {  
# # for( variable_index in 2 ) {  
#   variableName <- dsManifest[variable_index, "variableName"]
#   shouldGraph <- dsManifest[variable_index, "shouldGraph"]
#   remark <- dsManifest[variable_index, "remark"]
#   graphing_fx <- get(dsManifest[variable_index, "graphFunction"])
# #   x_label_string <- dsManifest[variable_index, "xLabelFormat"]
# #   x_label_split <- strsplit(x_label_string, split="::")[[1]]
# #   x_label_fx <- getExportedValue(x_label_split[1], x_label_split[2])
#   x_label_fx <- get_with_package(dsManifest[variable_index, "xLabelFormat"])
# 
#   
#   binWidth <- dsManifest[variable_index, "binWidth"]
#   if( shouldGraph ) {
#     graphing_fx(dsObserved=ds, variableName=variableName, binWidth=binWidth)
#   }
# }

# construct_graph <- function( variable_index ) {
#   variableName <- dsManifest[variable_index, "variableName"]
#   shouldGraph <- dsManifest[variable_index, "shouldGraph"]
#   remark <- dsManifest[variable_index, "remark"]
#   graphing_fx <- get(dsManifest[variable_index, "graphFunction"])
#   x_label_fx <- get_with_package(dsManifest[variable_index, "xLabelFormat"])
#   
#   binWidth <- dsManifest[variable_index, "binWidth"]
#   if( shouldGraph ) 
#     g <- graphing_fx(dsObserved=ds, variableName=variableName, binWidth=binWidth)
#   else
#     g <- NULL
#   
#   return(list(variableName=variableName, graph=g, remark=remark))
# }
# 
# graph_list <- lapply(X=seq_len(nrow(dsManifest)), construct_graph)
# 
# graph_list[[2]]$graph


# ConstructGraphUnivariate <- function( variableName, dsMetadata, dsObserved ) {
#   ds_for_variable <- dsMetadata[dsMetadata$variableName==variableName, ]
#   variableName <- ds_for_variable$variableName
#   shouldGraph <- ds_for_variable$shouldGraph
#   remark <- ds_for_variable$remark
#   graphing_fx <- get(ds_for_variable$graphFunction)
#   x_label_fx <- get_with_package(ds_for_variable$xLabelFormat)
#   
#   binWidth <- ds_for_variable$binWidth
#   if( shouldGraph ) 
#     g <- graphing_fx(dsObserved=dsObserved, variableName=variableName, binWidth=binWidth)
#   else
#     g <- NULL
#   
#   return(list(variableName=variableName, graph=g, remark=remark))
# }

# graph_list <- lapply(X=dsManifest$variableName, FUN=ConstructGraphUnivariate, dsMetadata=dsManifest, dsObserved=dsObserved)


rnorm(1)
set.seed(3)
rnorm(1)
rnorm(1)
set.seed(NULL)
rnorm(1)
rnorm(1)
set.seed(3)
rnorm(1)
rnorm(1)

# # round(1234.4578, -1)
# # -log10(scales:::precision(ds$day*1))+1
# sapply(ds, FUN=function(x){1-log10(scales:::precision(x))})
# # scales:::precision(ds$temp*100)
# # ds$temp
# 
# dynamicFunction1 <- get("alpha", envir=as.environment("package:scales"))
# dynamicFunction2 <- get("alpha", as.environment("package:psych"))
# 
# dynamicFunction1 <- `::`('scales', 'alpha')
# dynamicFunction2 <- `::`('psych', 'alpha')
# 
# dynamicFunction1 <-  getExportedValue('scales', 'alpha')
# dynamicFunction2 <-  getExportedValue('psych', 'alpha')
# 
# 
# gsub("^(\\w*)*(::)*(\\w+)$", replacement="\\3", c("comma", "scales::comma"), perl=T)
# 
# split_values <- strsplit("scales::comma", "::")
# split_values[[1]][1]
# strsplit("comma", "::")
