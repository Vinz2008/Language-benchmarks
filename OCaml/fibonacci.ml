let get_current_timestamp () : float =
  Unix.time () ;;

let rec fib n = if n <= 1 then n else fib n-1 + fib n-2;;

let rec calc_loop idx = if idx = 51 then () else (
  Printf.printf "%d %i\n" idx (fib idx);
  calc_loop (idx + 1);
  ()
  ) ;;

let start = get_current_timestamp () in
    (calc_loop 1;
    let time = get_current_timestamp () -. start in
    Printf.printf "Completed in %.3fs" (time/.1000.);
    ()
    )