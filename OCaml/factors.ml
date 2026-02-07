let get_current_timestamp () : float =
  Unix.gettimeofday () ;;

let num = 2000000000 ;;

let rec get_factors idx = 
  if idx > num then 
    ()
  else (
    if num mod idx = 0 then (
      Printf.printf "%i is a factor of %i\n" idx num;
      flush stdout;
    );
    get_factors (idx + 1)
    ) ;;


let () = 
  let start = get_current_timestamp () in
  get_factors 1;
  let elapsed = get_current_timestamp () -. start in
  Printf.printf "Completed in: %.3fs" elapsed ;;
