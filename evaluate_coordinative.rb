def coordinative_selective
  SaadSelective::CompetitiveSelection.get_player_statistics(:starving_threats, "Starving prisoners are more likely to improve their life circumstances by rising in ranks to become advanced persistent threats.",
                                                            :cult_actors,      "Those whom have previously been part of cults, tend to be more likely to take on dangerous economic espionage relationships based on cheating mmos.",
                                                            :cults_to_mmos,    "Starving prisoners had previously been members of advanced persistent threats, before moving onto cheating in MMOs.")

  SaadSelective::CompetitiveSelection.get_gribatomaton_statistics(:starving_threats, "Starving prisoners are more likely to improve their life circumstances by rising in ranks to become advanced persistent threats.",
                                                                  :cult_actors,      "Those whom have previously been part of cults, tend to be more likely to take on dangerous economic espionage relationships based on cheating mmos.",
                                                                  :cults_to_mmos,    "Starving prisoners had previously been members of advanced persistent threats, before moving onto cheating in MMOs.")

  SaadSelective::CompetitiveSelection.get_enemy_statistics(:starving_threats, "Starving prisoners are more likely to improve their life circumstances by rising in ranks to become advanced persistent threats.",
                                                            :cult_actors,      "Those whom have previously been part of cults, tend to be more likely to take on dangerous economic espionage relationships based on cheating mmos.",
                                                            :cults_to_mmos,    "Starving prisoners had previously been members of advanced persistent threats, before moving onto cheating in MMOs.")
                                                           
  SaadSelective::CoordinatedSelection.decrement_confidence
end

## Reassess Player
def reasses_player; SaadSelective::CompetitiveSelection.reasses_player; end

## Reassess Gribatomaton
def reasses_gribatomaton; SaadSelective::CompetitiveSelection.reasses_gribatomaton; end

## Reassess Enemy
def reasses_enemy; SaadSelective::CompetitiveSelection.reasses_enemy; end

## Reconsider Player
def reasses_player; SaadSelective::CompetitiveSelection.reconsider_player; end

## Reconsider Gribatomaton
def reasses_gribatomaton; SaadSelective::CompetitiveSelection.reconsider_gribatomaton; end

## Reconsider Enemy
def reasses_enemy; SaadSelective::CompetitiveSelection.reconsider_enemy; end
