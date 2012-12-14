ITEM.Name = 'Afro 2'
ITEM.Price = 200
ITEM.Model = 'models/gmod_tower/afro.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	--model:SetModelScale(1.6, 0)
	pos = pos + (ang:Up() * 2.5) + (ang:Forward() * -4.5)
	--ang:RotateAroundAxis(ang:Up(), -90)
	--ang:RotateAroundAxis(ang:Forward(), -180)
	
	return model, pos, ang
end
