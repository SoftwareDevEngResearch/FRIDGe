from FRIDGe.fridge.Constituent import Constituent
import FRIDGe.fridge.utilities.mcnpCreatorFunctions as mcnpCF


class InnerDuct(Constituent.Constituent):
    def __init__(self, ductInfo):
        super().__init__(ductInfo)
        self.assemblyUniverse = 0
        self.latticeUniverse = 0
        self.flat2flat = 0
        self.height = 0
        self.makeComponent(ductInfo[1])

    def makeComponent(self, ductInfo):
        self.assemblyUniverse = ductInfo[0]
        self.latticeUniverse = ductInfo[1]
        self.flat2flat = ductInfo[2]
        self.height = ductInfo[3] * 1.01
        surfaceComment = "$Assembly: Duct Inner Surface"
        cellComment = "$Assembly: Inner Portion of Assembly"
        self.surfaceCard = mcnpCF.getRHP(self.flat2flat, self.height, self.position, self.surfaceNum, surfaceComment)
        self.cellCard = mcnpCF.getFuelLatticeCell(self.cellNum, self.surfaceNum, self.assemblyUniverse,
                                                  self.latticeUniverse, cellComment)
