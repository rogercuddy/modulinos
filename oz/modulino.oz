functor
export
    meaningOfLife: MeaningOfLife
import
    System
    Application
    Property
    Regex at 'x-oz://contrib/regex'
define
    fun {MeaningOfLife} 42 end

    local ScriptName = {Property.get 'application.url'} in
        if {Regex.search "modulino" ScriptName} \= false then
            {System.printInfo "Main: The meaning of life is "#{Int.toString {MeaningOfLife}}#"\n"}
            {Application.exit 0}
        end
    end
end
