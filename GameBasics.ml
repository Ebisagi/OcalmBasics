let random_choice () =
  let choices = ["Rock"; "Paper"; "Scissors"] in
  List.nth choices (Random.int 3)

let compare_choices player_choice computer_choice =
  match (player_choice, computer_choice) with
  | ("Rock", "Scissors") | ("Scissors", "Paper") | ("Paper", "Rock") ->
      "You win!"
  | ("Rock", "Paper") | ("Scissors", "Rock") | ("Paper", "Scissors") ->
      "Computer wins!"
  | _ -> "It's a tie!"

let () =
  Random.self_init ();
  print_endline "Welcome to Rock, Paper, Scissors!";
  print_endline "Enter your choice (Rock, Paper, or Scissors): ";
  let player_choice = String.lowercase_ascii (read_line ()) in
  let computer_choice = random_choice () in
  Printf.printf "Computer chose: %s\n" computer_choice;
  let result = compare_choices player_choice computer_choice in
  Printf.printf "%s\n" result
