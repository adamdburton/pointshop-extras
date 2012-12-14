ITEM.Name = 'Sombrero'
ITEM.Price = 200
ITEM.Model = 'models/gmod_tower/sombrero.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	ang:RotateAroundAxis(ang:Right(), 15)
	pos = pos + (ang:Forward() * -3) + (ang:Up() * 3)
	--
	
	return model, pos, ang
end
