*{dependencies.select{|dep| dep.groups.include?('runtime')} as dep}{require +{dep.name}}{!{"\n"}}
