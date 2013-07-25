module ProjectsHelper

	def progress_bar(phase)
  	levels = {
  		"onboarding" => 9,
  		"creative" => 29,
  		"design" => 50,
  		"development" => 71,
  		"implementation" => 91
  	}
  	return levels[phase]
  end
  
end
