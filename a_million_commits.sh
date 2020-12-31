# a million commits
# year range
for Y in {2020..2020}
do
  mkdir $Y
  cd $Y
  # months
  for M in {09..12}
  do
    mkdir $M
    cd $M
	  # days
    for D in {01..31}
    do
      mkdir $D
      cd $D
	  # time randomly between 1 and 25
	  RANDOM_NUMBER=$((RANDOM%25+1))
    for (( i=01; i<=$RANDOM_NUMBER; i++ ))
      do
        echo "$i on $M/$D/$Y" > commit.md
        export GIT_COMMITTER_DATE="$Y-$M-$D 12:$i:00"
        export GIT_AUTHOR_DATE="$Y-$M-$D 12:$i:00"
        git add commit.md -f
        git commit --date="$Y-$M-$D 12:0$i:00" -m "$i on $M $D $Y"
      done
      cd ../
	  git push origin master
    done
    cd ../
  done
  cd ../
done
git rm -rf 20**
git rm -rf 19**
git commit -am "cleanup"
git push origin master
