-- generate random "blades of grass" within an area defined by 
-- length and width argument centred at the origin

function drawGrass len wid numBlades= (
	for i = 1 to numBlades do(
		x = random -(len/2) (len/2)
		y = random -(wid/2) (wid/2)
		h = random 20 30
		direction = random -30 30
		ang = random 35 45
		c = cone pos:[x,y,0] radius1:5 wirecolor:green height:h
		addmodifier c (bend())
		c.bend.bendangle = ang
		c.bend.benddir=direction
	)
)
function main =(
	delete objects
	drawGrass 100 100 200
)

main()