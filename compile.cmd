set JX_HOME=..\..
javac -d .\bin -cp .;%JX_HOME%\libs\jxclasses.jar;%JX_HOME%\external_libs\json-20160212.jar @sources.txt
