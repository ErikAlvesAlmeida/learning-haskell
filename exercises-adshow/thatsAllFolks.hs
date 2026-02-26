thatsAllFolks :: Int -> [String] -> [String]
thatsAllFolks n = filter (\y -> length y < n)