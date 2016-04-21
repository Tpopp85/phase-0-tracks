great_lakes = {
  Superior: {
      lake_name: "Lake Superior",
      max_depth: "1,333 ft",
      max_length: "350 mi",
      volume: "2,935 cubic miles",
      "major metropolitan areas" => 
          ["Duluth",
          "Thunder Bay"] 
    },
   Michigan: {
      lake_name: "Lake Michigan",
      max_depth: "923 ft",
      max_length: "307 mi",
      volume: "4,918 cubic miles",
      "major metropolitan areas" => 
          ["Milwaukee",
          "Chicago",
          "Green Bay"]
  }, 
    Huron: {
      lake_name: "Lake Huron",
      max_depth: "750 ft",
      max_length: "206 mi",
      volume: "849 cubic miles",
      "major metropolitan areas" => 
          []
  },
    Erie: {
      lake_name: "Lake Erie",
      max_depth: "210 ft",
      max_length: "241 mi",
      volume: "116 cubic miles",
      "major metropolitan areas" => 
          ["Detroit",
          "Toledo",
          "Cleveland",
          "Erie",
          "Buffalo"]
  },
    Ontario: {
      lake_name: "Lake Ontario",
      max_depth: "802 ft",
      max_length: "193 mi",
      volume: "393 cubic miles",
      "major metropolitan areas" => 
          ["Toronto"]

  }
}


puts great_lakes[:Erie]["major metropolitan areas"]



