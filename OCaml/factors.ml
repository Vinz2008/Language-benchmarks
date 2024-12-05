let get_current_timestamp () : float =
  Unix.time () ;;

let start = get_current_timestamp () in 
let num = 2000000000 in 
let rec factor_calc idx = 
  if idx = num + 1 then () else
  (
    if num mod idx = 0 then Printf.printf "%i is a factor of %i\n" idx num;
    factor_calc (idx + 1);
    ()
  )
in
  (
    factor_calc 1;
    let time = get_current_timestamp () -. start in 
    Printf.printf "Completed in: %.3fs" (time/.1000.)
  )
