allowed_files = c("HW4.Rmd",
                  "HW4.pdf",
                  "README.md",
                  "HW4_whitelist.R",
                  "wercker.yml")

files = dir()
disallowed_files = files[!(files %in% allowed_files)]

if (length(disallowed_files != 0))
{
  cat("Disallowed files found:\n")
  cat("  (remove the following files from your repo)\n\n")

  for(file in disallowed_files)
    cat("*",file,"\n")

  quit("no",1,FALSE)
}
