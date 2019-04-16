import FRIDGe.fridge.Constituent.Constituent as Constituent
import FRIDGe.fridge.utilities.mcnpCreatorFunctions as mcnpCF
import copy


class LowerSodium(Constituent.Constituent):
    """Creates a region of sodium to compensate for any excess height specified in the assembly file.
    This is in addition to the upper coolant region. The sum of the upper and lower coolant region is the
    excess height from the assembly file."""
    def __init__(self, unitInfo):
        super().__init__(unitInfo)
        self.getMaterialCard(unitInfo[0][3])
        self.makeComponent(unitInfo[1])

    def makeComponent(self, lowerCoolantInfo):
        lowerCoolantPosition = lowerCoolantInfo[0]
        excessCoolantHeight = lowerCoolantInfo[1]
        flatToFlat = lowerCoolantInfo[2]
        surfaceComment = "$Assembly: Lower Coolant"
        cellComment = "$Assembly: Lower Coolant"
        lowerCoolantPosition[2] -= 0.1
        lowerNaHeight = excessCoolantHeight + 0.1
        self.surfaceCard = mcnpCF.getRHP(flatToFlat, lowerNaHeight, lowerCoolantPosition, self.surfaceNum, surfaceComment)
        self.cellCard = mcnpCF.getSingleCell(self.cellNum, self.materialNum, self.material.atomDensity, self.surfaceNum,
                                             self.universe, cellComment)
