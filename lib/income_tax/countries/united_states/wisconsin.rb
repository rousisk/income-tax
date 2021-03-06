module IncomeTax
  module Countries
    class UnitedStates
      class Wisconsin < State
        register "Wisconsin", "WI"

        levels :single do
          standard_deduction = 700
          level standard_deduction + 0,         "0.00%"
          level standard_deduction + 10910,     "4.00%"
          level standard_deduction + 21820,     "5.84%"
          level standard_deduction + 240190,    "6.27%"
          remainder                             "7.65%"
        end

        levels :couple do
          standard_deduction = 700
          level standard_deduction + 0,         "7.65%"
          level standard_deduction + 14540,     "4.00%"
          level standard_deduction + 29090,     "5.84%"
          level standard_deduction + 320250,    "6.27%"
          remainder                             "7.65%"
        end
      end
    end
  end
end
