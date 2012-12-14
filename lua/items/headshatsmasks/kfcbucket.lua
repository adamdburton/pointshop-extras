ITEM.Name = 'KFC Bucket'
ITEM.Price = 200
ITEM.Model = 'models/gmod_tower/kfcbucket.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	--model:SetModelScale(1.6, 0)
	ang:RotateAroundAxis(ang:Right(), 20)
	pos = pos + (ang:Forward() * -3) + (ang:Up() * 1.5)
	
	return model, pos, ang
end
