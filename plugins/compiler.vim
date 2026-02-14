" Custom commands for compiling and running code for competitive programming

function! s:Compile()
  let file = expand('%')
  let extension = expand('%:e')
  if extension == 'cpp'
    execute '!' . 'g++' shellescape(file) '-o' shellescape(expand('%:r'))
  elseif extension == 'java'
    execute '!' . 'javac' shellescape(file)
  elseif extension == 'py'
    echo "Python is an interpreted language, no compilation needed."
  else
    echo "Unsupported filetype for compilation."
  endif
endfunction

function! s:Run()
  let file = expand('%')
  let extension = expand('%:e')
  if extension == 'cpp'
    execute 'term ./' . shellescape(expand('%:r'))
  elseif extension == 'java'
    execute 'term java' shellescape(expand('%:r'))
  elseif extension == 'py'
    execute 'term python3' shellescape(file)
  else
    echo "Unsupported filetype for running."
  endif
endfunction

function! s:CompileAndRun()
  let file = expand('%')
  let extension = expand('%:e')
  if extension == 'cpp'
    execute '!' . 'g++' shellescape(file) '-o' shellescape(expand('%:r')) '&& term ./' . shellescape(expand('%:r'))
  elseif extension == 'java'
    execute '!' . 'javac' shellescape(file) '&& term java' shellescape(expand('%:r'))
  elseif extension == 'py'
    execute 'term python3' shellescape(file)
  else
    echo "Unsupported filetype for compilation and running."
  endif
endfunction

" Custom commands for test case handling
function! s:CreateInputFile()
  edit input.txt
endfunction

function! s:CreateExpectedOutputFile()
  edit expected_output.txt
endfunction

function! s:RunAndDiff()
  let file = expand('%')
  let extension = expand('%:e')
  let output_file = 'output.txt'

  if extension == 'cpp'
    execute 'term ./' . shellescape(expand('%:r')) '< input.txt >' output_file
  elseif extension == 'java'
    execute 'term java' shellescape(expand('%:r')) '< input.txt >' output_file
  elseif extension == 'py'
    execute 'term python3' shellescape(file) '< input.txt >' output_file
  else
    echo "Unsupported filetype for running with input."
    return
  endif

  " Wait for the program to finish and output file to be written.
  " This is a simple wait, more robust solutions might be needed for very long running programs.
  sleep 100m " Wait for 100 milliseconds

  if filereadable('expected_output.txt')
    execute 'vert diffsplit ' . output_file
  else
    echo "expected_output.txt not found. Created " . output_file
    execute 'edit ' . output_file
  endif
endfunction

command! Compile call <SID>Compile()
command! Run call <SID>Run()
command! CompileAndRun call <SID>CompileAndRun()
command! CreateInputFile call <SID>CreateInputFile()
command! CreateExpectedOutputFile call <SID>CreateExpectedOutputFile()
command! RunAndDiff call <SID>RunAndDiff()
