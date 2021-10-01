$1 ~ /[1-6]111/       {
  print "\\begin{multicols}{6}"
  print "\\small"
}
$1 ~ /[1-6]{3}[2-6]/  { print "\\noindent \\texttt{ \\ \\ \\ " substr($1, 4, 1) " } " $2 " \\par" }
$1 ~ /[1-6]{3}1/      { print "\\noindent \\texttt{ " $1 " } " $2 " \\par" }
$1 ~ /[1-6]{2}[1-5]6/ { print "\\groupsep" }
$1 ~ /[1-6]666/       { print "\\end{multicols}" }