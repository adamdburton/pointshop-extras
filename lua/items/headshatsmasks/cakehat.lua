ITEM.Name = 'Cake Hat'
ITEM.Price = 200
ITEM.Model = 'models/cakehat/cakehat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	--model:SetModelScale(1.6, 0)
	pos = pos + (ang:Up() * 1.5)
	--ang:RotateAroundAxis(ang:Right(), 90)
	
	return model, pos, ang
end
