functor
export
  meaningOfLife: MeaningOfLife
import
  System
  Application
define
  fun {MeaningOfLife} 42 end

  {System.printInfo "Main: The meaning of life is "#{Int.toString {MeaningOfLife}}#"\n"}
  {Application.exit 0}
end
