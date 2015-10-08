This is the first time that I used git command line to push files from my local system, because png files were involved.

To view the remote location set
git remote -v

git remote set-url origin https://github.com/agcode/ExData_Plotting1.git

git clone https://github.com/agcode/ExData_Plotting1.git

cd ExData_Plotting1

git remote add origin

git add plot1.png

git commit -m 'add png file'

git push -u origin master

