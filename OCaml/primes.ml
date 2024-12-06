let get_current_timestamp () =
  Sys.time () ;;

let rec factors_nb_loop nb factor =
  if factor + 1 >= nb then 0 
  else (if nb mod factor = 0 then 1 else 0 ) + factors_nb_loop nb (factor + 1)

;;

let factors_nb nb = factors_nb_loop nb 1;;

let is_prime nb = factors_nb nb = 2;;

let rec get_primes_loop nb idx = 
    if idx = nb then []
    else if is_prime idx then idx::get_primes_loop nb (idx + 1)
      else
       get_primes_loop nb (idx + 1)
      ;;

let get_primes nb = get_primes_loop nb 0;;

let rec print_primes = function 
|[] -> ()
| e::l ->   (Printf.printf "%d " e;
      print_primes l
)
;;

let start = get_current_timestamp () in
  let primes = get_primes 15000 in
  (
    print_primes primes;
    let time = get_current_timestamp () -. start in
    Printf.printf "\nCompleted in: %.3fs" (time/.1000.)
  )