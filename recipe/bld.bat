set "PATH=C:\Program Files\LLVM\bin;%PATH%"
set "INCLUDE=%$VC_INCLUDEPATH%"
clang --version
%PYTHON% -m pip install . --no-deps -vvv
