#' Save dataframe
#'
#' @param object dataframe
#' @param filepath output
#' @param archive.overwrite if TRUE will overwrite and archive to an archive folder
#' @param ... additional arguments to pass to write.table if you so wish
#'
#' @return saved df
#' @export
#'
#' @examples
#' savetab(datasets::mtcars,"./mtcars.csv")
savetab <- function(object,filepath,archive.overwrite=T,...){

  sep = "\t"

  if(length(grep("\\.csv$",filepath))>0){
    sep = ","
  }

  if(archive.overwrite==T){

    if(file.exists(filepath)){

      originaltime <- format((file.info(filepath)$mtime),"%Y%m%d_%H%M%S")

      file_path_parts <- strsplit(filepath, "/")[[1]]

      file_name <- file_path_parts[length(file_path_parts)]
      file_name_parts <- strsplit(file_name, "\\.")[[1]]
      file_ext <- file_name_parts[length(file_name_parts)]
      file_name_parts <- file_name_parts[1:(length(file_name_parts)-1)]
      file_name <- paste(file_name_parts,collapse="")
      file_path_parts <- file_path_parts[1:(length(file_path_parts)-1)]

      parent_folder <- paste(file_path_parts, collapse = "/")

      archive_folder <- paste0(parent_folder,"/",file_name,"-archive/")

      dir.create(archive_folder,showWarnings = F)

      file.copy(filepath,paste0(archive_folder,originaltime,"_",file_name,".",file_ext),copy.mode = T,copy.date = T,overwrite = T)

    }

  }

  write.table(object,filepath,sep=sep,row.names=F,quote=F,...)

}
