# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    for candidate in @candidates do
      if candidate[id] == id
        return candidate
    return nil
      end
    end
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[years_of_experience] >= 2
      return true
    else
      return false
    end
  end
  
  def qualified_candidates(candidates)
    if experienced?(candidate) && github_points?(candidate) && candidate_languages?(candidate) && over_17?(candidate) && application_date?(candidate)
      pp candidate
    end
  end
  
  # More methods will go below
  def github_points?(candidate)
    if candidate[:github_points] >= 100
      return true
    else false
  end
end

  def candidate_languages?(candidate)
    if candidate[:languages].include?("Javascript") || candidate[:languages].include?("Ruby")
      return true
    else
      return false
    end
  end

  def application_date?(candidate)
    if (candidate[:date_applied][0].to_i <= 15)
      return true
    else
      return false
    end
  end

  def over_17?(candidate)
    if candidate[:age] > 17
      return true
    else
      return false
    end
  end

  def ordered_by_qualifications(candidates)
    pp candidates.sort_by{|candidate| [candidate[:years_of_experience], candidate[:github_points]]}.reverse
  end