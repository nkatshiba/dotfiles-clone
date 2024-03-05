function ror

  clear
  set DIR $PWD
  echo $PWD
  cargo build && cargo run
  echo $PWD

end
