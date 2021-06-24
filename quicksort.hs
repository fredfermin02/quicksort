main::IO ()
main = undefined

quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort list = quickSort lower_sublist
              ++ concat_list
              ++ upper_sublist
      where
        concat :: Int
        concat = head list

        lower_sublist :: [Int]
        lower_sublist = filter (<concat) list

        concat_list :: [Int]
        concat_list = filter (==concat) list

        upper_sublist :: [Int]
        upper_sublist = filter (>concat) list
