.eqv	BASE_ADDRESS            0x10008000
.eqv	KEYBOARD_EVENT_ADDRESS	0xffff0000
.eqv	SCR_WIDTH	128
.eqv	SCR_WIDTH_BYTE	512
.eqv	SCR_HEIGHT	64
.eqv	SCR_RESOLUTION	8192
.eqv	SCR_RESOLUTION_BYTE	32768

.eqv	MAX_ARRAY_LEN	64

.data
nlc:	.asciiz	"\n"
# Bitmap Data

# All bitmap are fixed to a size of 16*16
# Each non-#000000 pixel is stored in the form:
#
# 		0x[row][col][6 hex digits of color]
#
# All #000000 pixels are considered as transparent and are not stored.
# 
# Size -> # of non-#000000 pixels in the bitmap "bitmapname"
# hitbox: startY, startX, Height, Width
spaceship:    .word   0x04eeeeee, 0x05eeeeee, 0x15eeeeee, 0x16dddddd, 0x25dddddd, 0x26dddddd, 0x27dddddd, 0x34999999, 0x35dddddd, 0x36dddddd, 0x37dddddd, 0x38999999, 0x39ff0000, 0x46bbbbbb, 0x47bbbbbb, 0x52ffffff, 0x53ffffff, 0x56bbbbbb, 0x57bbbbbb, 0x63ffffff, 0x64cccccc, 0x65cccccc, 0x66cccccc, 0x67cccccc, 0x68cccccc, 0x69cccccc, 0x73ffffff, 0x74aaaaaa, 0x75aaaaaa, 0x7600ff00, 0x77326bff, 0x78326bff, 0x79326bff, 0x7adddddd, 0x7bdddddd, 0x7cdddddd, 0x7ddddddd, 0x7edddddd, 0x7fdddddd, 0x83ffffff, 0x84cccccc, 0x85cccccc, 0x86cccccc, 0x87cccccc, 0x88cccccc, 0x89cccccc, 0x92ffffff, 0x93ffffff, 0x96bbbbbb, 0x97bbbbbb, 0xa6bbbbbb, 0xa7bbbbbb, 0xb4999999, 0xb5dddddd, 0xb6dddddd, 0xb7dddddd, 0xb8999999, 0xb9ff0000, 0xc5dddddd, 0xc6dddddd, 0xc7dddddd, 0xd5eeeeee, 0xd6dddddd, 0xe4eeeeee, 0xe5eeeeee
.eqv 	spaceship_Size	65
.eqv    spaceship_W   		16
.eqv    spaceship_W_Byte	64
.eqv	spaceship_RowTail_Offset	64
.eqv    spaceship_H   		15
.eqv    spaceship_H_Byte	60
.eqv	spaceship_Tail_Offset	7680
spaceship_hitbox:	.word	6, 3, 3, 6

.eqv	rocketCD	0x00150000

test:    .word   0x00ff0000, 0x01ff0000, 0x02ff0000, 0x03ff0000, 0x0400ff00, 0x0500ff00, 0x0600ff00, 0x0700ff00, 0x0800ff00, 0x0900ff00, 0x0a00ff00, 0x0b00ff00, 0x0cff0000, 0x0dff0000, 0x0eff0000, 0x0fff0000, 0x10ff0000, 0x110000ff, 0x1e0000ff, 0x1fff0000, 0x20ff0000, 0x22ff0000, 0x2dff0000, 0x2fff0000, 0x30ff0000, 0x330000ff, 0x3c0000ff, 0x3fff0000, 0x4000ff00, 0x44ff0000, 0x4bff0000, 0x4f00ff00, 0x5000ff00, 0x550000ff, 0x5a0000ff, 0x5f00ff00, 0x6000ff00, 0x66ff0000, 0x69ff0000, 0x6f00ff00, 0x7000ff00, 0x7600ff00, 0x77ffffff, 0x78ffffff, 0x7900ff00, 0x7f00ff00, 0x8000ff00, 0x8600ff00, 0x87ffffff, 0x88ffffff, 0x8900ff00, 0x8f00ff00, 0x9000ff00, 0x96ff0000, 0x99ff0000, 0x9f00ff00, 0xa000ff00, 0xa50000ff, 0xaa0000ff, 0xaf00ff00, 0xb000ff00, 0xb4ff0000, 0xbbff0000, 0xbf00ff00, 0xc0ff0000, 0xc30000ff, 0xcc0000ff, 0xcfff0000, 0xd0ff0000, 0xd2ff0000, 0xddff0000, 0xdfff0000, 0xe0ff0000, 0xe10000ff, 0xee0000ff, 0xefff0000, 0xf0ff0000, 0xf1ff0000, 0xf2ff0000, 0xf3ff0000, 0xf400ff00, 0xf500ff00, 0xf600ff00, 0xf700ff00, 0xf800ff00, 0xf900ff00, 0xfa00ff00, 0xfb00ff00, 0xfcff0000, 0xfdff0000, 0xfeff0000, 0xffff0000
.eqv	test_Size 92

horBarTest:    .word   0x60ff0000, 0x61ff0000, 0x62ff0000, 0x63ff0000, 0x64ff0000, 0x65ff0000, 0x66ff0000, 0x67ff0000, 0x68ff0000, 0x69ff0000, 0x6aff0000, 0x6bff0000, 0x6cff0000, 0x6dff0000, 0x6eff0000, 0x6fff0000, 0x7000ff00, 0x7100ff00, 0x7200ff00, 0x7300ff00, 0x7400ff00, 0x7500ff00, 0x7600ff00, 0x7700ff00, 0x7800ff00, 0x7900ff00, 0x7a00ff00, 0x7b00ff00, 0x7c00ff00, 0x7d00ff00, 0x7e00ff00, 0x7f00ff00, 0x8000ff00, 0x8100ff00, 0x8200ff00, 0x8300ff00, 0x8400ff00, 0x8500ff00, 0x8600ff00, 0x8700ff00, 0x8800ff00, 0x8900ff00, 0x8a00ff00, 0x8b00ff00, 0x8c00ff00, 0x8d00ff00, 0x8e00ff00, 0x8f00ff00, 0x900000ff, 0x910000ff, 0x920000ff, 0x930000ff, 0x940000ff, 0x950000ff, 0x960000ff, 0x970000ff, 0x980000ff, 0x990000ff, 0x9a0000ff, 0x9b0000ff, 0x9c0000ff, 0x9d0000ff, 0x9e0000ff, 0x9f0000ff
.eqv	horBarTest_Size	64

singlePixelTest:	.word	0x9066ccff
.eqv	singlePixelTest_Size 1

roundBullet:    .word   0x23ff0000, 0x24ff0000, 0x32ff0000, 0x33dddddd, 0x34aaaaaa, 0x35ff0000, 0x42ff0000, 0x43aaaaaa, 0x44aaaaaa, 0x45ff0000, 0x53ff0000, 0x54ff0000
.eqv    roundBullet_Size    12
.eqv    roundBullet_W   6
.eqv    roundBullet_H   6
roundBullet_hitbox:	.word	0, 0, 6, 6

rocket:    .word   0x00ff0000, 0x01ff0000, 0x02aaaaaa, 0x03aaaaaa, 0x0466ccff, 0x05aaaaaa, 0x06aaaaaa, 0x07ffffff
.eqv    rocket_Size    8
.eqv    rocket_W   8
.eqv    rocket_H   1
rocket_hitbox:	.word	0, 0, 1, 8

enemy:    .word   0x32ffffff, 0x33ffffff, 0x34ffffff, 0x45ffffff, 0x46ffffff, 0x47ffffff, 0x48ffffff, 0x49ffffff, 0x58ffffff, 0x59ffffff, 0x5affffff, 0x5bffffff, 0x5cff0000, 0x5dcc0000, 0x67ffffff, 0x68ffffff, 0x69ffffff, 0x6affffff, 0x6bffffff, 0x6cff0000, 0x6dcc0000, 0x73ffffff, 0x74ffffff, 0x75ffffff, 0x76ffffff, 0x77ffffff, 0x78ffffff, 0x79ffffff, 0x86ffffff, 0x87ffffff, 0x88ffffff, 0x89ffffff, 0x97ffffff, 0x98ffffff, 0x99ffffff, 0x9affffff, 0x9bffffff, 0x9cff0000, 0x9dcc0000, 0xa9ffffff, 0xaaffffff, 0xabffffff, 0xacff0000, 0xadcc0000, 0xb5ffffff, 0xb6ffffff, 0xb7ffffff, 0xb8ffffff, 0xb9ffffff, 0xc2ffffff, 0xc3ffffff, 0xc4ffffff
.eqv    enemy_Size    52
.eqv    enemy_W   14
.eqv    enemy_H   13


G:    .word   0x23ffffff, 0x24ffffff, 0x25ffffff, 0x26ffffff, 0x27ffffff, 0x28ffffff, 0x29ffffff, 0x2affffff, 0x32ffffff, 0x33ffffff, 0x41ffffff, 0x42ffffff, 0x51ffffff, 0x60ffffff, 0x61ffffff, 0x70ffffff, 0x71ffffff, 0x75ffffff, 0x76ffffff, 0x77ffffff, 0x78ffffff, 0x79ffffff, 0x7affffff, 0x7bffffff, 0x7cffffff, 0x81ffffff, 0x88ffffff, 0x89ffffff, 0x91ffffff, 0x98ffffff, 0x99ffffff, 0xa1ffffff, 0xa2ffffff, 0xa8ffffff, 0xa9ffffff, 0xb2ffffff, 0xb7ffffff, 0xb8ffffff, 0xb9ffffff, 0xc3ffffff, 0xc4ffffff, 0xc5ffffff, 0xc6ffffff, 0xc7ffffff, 0xc9ffffff, 0xd9ffffff, 0xe9ffffff
.eqv    G_Size    47
.eqv    G_W   13
.eqv    G_H   15

# Variables


# sprites: Each 8 byte contains information about a sprite's type, position, velocity in the form
# 			   0      1        2      3          4,5      6    7
#			0b PREV_Y YYYYYYYY PREV_X XXXXXXXX   ___      VY   VX
#
#		PREV_Y: 8 bits storing the sprite's y position on the last frame
#
#		Y:      8 bits storing the sprite's current y position (by pixel)
#
#		PREV_X: 8 bits storing the sprite's x position on the last frame
#
#		X:      8 bits storing the sprite's current x position (by pixel)
#
#		VY:     4 bits storing the change in the sprite's y value each frame
#		VX:     4 bits storing the change in the sprite's x value each frame 

enemies:		.word	0:32
enemies_amount:		.byte	0

roundBullets:		.word	0:128
roundBullets_amount:	.byte	0

rockets:		.word	0:128
rockets_amount:		.byte	0


.text
.global main
main:
	# s0 <- prevIndx;  indx of the spaceship on the buffer on the *previous* frame  (4 * pixel)
	# s1 <- newIndx;   indx of the spaceship on the buffer on the *current* frame   (4 * pixel)
	# s2 <- timestamp of the beginning of a frame
	# s3 <- timestamp of the end of a frame
	# s4 <- frame #
	# s5 <- pixelY of spaceship
	# s6 <- pixelX of spaceship
	# s7 <- 0x 00 00 rocket CD, invincible frames, HP (out of 10)
	# 
	
	li	$s0, 0
	li	$s1, 4
	li	$s4, 0
	li	$s5, 0
	li	$s6, 0
	li	$s7, 0x00000a0a
	
	sb	$zero, enemies_amount
	sb	$zero, rockets_amount
	sb	$zero, roundBullets_amount
	
	# clear the screen
	li	$a0, 0
	li	$a1, SCR_WIDTH
	li	$a2, SCR_HEIGHT
	li	$a3, 0
	jal	fillRect
	
	# TEST: generate a rocket at (0x30, 0x30)
	#la	$a0, rockets
	#la	$a1, rockets_amount
	#li	$a2, 0x30
	#li	$a3, 0x30
	#li	$v0, 0
	#li	$v1, 1
	#jal	insertSprite
	
mainloop:
	
	# Record frame beginning timestamp
	li	$v0, 30
	syscall
	move	$s2, $a1	# s2 <- frame beginning timestamp
	
	andi	$t0, $s7, 0x000000ff	# t0 <- HP
	beq	$t0, 0, gameover	# if hp == 0, gameover. 
	li	$v0, 1
	
	srl	$t0, $s7, 8	# t0 <- invincible frames left
	#bne	$t0, 0, eraseSpaceship
	beq	$s0, $s1, handleKeyboardEvent
	
	
	
eraseSpaceship:
	la	$a0, spaceship
	li	$a1, spaceship_Size
	move	$a2, $s0
	 
	jal	eraseBitmap
	
	# Make it flicker if invincible
	#beq	$t0, 0, drawSpaceship
	#li	$t1, 8
	#div	$s4, $t1
	#mfhi	$t1
	#bne	$t1, 0, handleKeyboardEvent
	

drawSpaceship:

	la	$a0, spaceship
	li	$a1, spaceship_Size
	move	$a2, $s1
	
	jal	drawBitmap
	
	move	$s0, $s1
	
handleKeyboardEvent:
	move	$s1, $s0	# newIndx = prevIndx
	# If nothing was pressed, jump to the end.
	li	$t0, KEYBOARD_EVENT_ADDRESS	# t0 <- KEYBOARD_EVENT_ADDRESS
	lw	$t1, 0($t0)			# t1 <- *(KEYBOARD_EVENT_ADDRESS)
	bne	$t1, 1, handleKeyboardEvent_end
	
	lw	$t1, 4($t0)	# t1 <- keyPressed_ASCII
	
	beq	$t1, 112, P_Pressed
	beq	$t1, 32, SPACEBAR_Pressed
	beq	$t1, 97, A_Pressed
	beq	$t1, 119, W_Pressed
	beq	$t1, 115, S_Pressed
	beq	$t1, 100, D_Pressed
	
	j	handleKeyboardEvent_end

P_Pressed:
	j	main

SPACEBAR_Pressed:
	bge	$s7, 0x00010000, moveAllSprites
	# shoot rockets
	addi	$a2, $s5, 3
	addi	$a3, $s6, 13
	
	la	$a0, rockets
	la	$a1, rockets_amount
	li	$v0, 0
	li	$v1, 3
	jal	insertSprite
	
	addi	$a2, $a2, 8
	jal	insertSprite
	
	addi	$s7, $s7, rocketCD
	j	moveAllSprites

A_Pressed:	# If A was pressed
	addi	$s1, $s1, -16
	j	verifyNewIndx
	
W_Pressed:	# If W was pressed
	li	$t1, SCR_WIDTH_BYTE
	mul	$t0, $t1, 4
	sub	$s1, $s1, $t0
	j	verifyNewIndx
	
S_Pressed:	# If S was pressed
	li	$t1, SCR_WIDTH_BYTE
	mul	$t0, $t1, 4
	add	$s1, $s1, $t0
	j	verifyNewIndx
	
D_Pressed: 	# If D was pressed
	addi	$s1, $s1, 16
	j	verifyNewIndx
	
verifyNewIndx:
	# Invalid if newIndx < 0
	blt	$s1, 0, newIndxInvalid
	
	# Invalid if newIndx + tail_offset >= SCR_RESOLUTION_BYTE
	addi	$t2, $s1, spaceship_Tail_Offset	# t2 <- newIndx + tail_offset
	bge	$t2, SCR_RESOLUTION_BYTE, newIndxInvalid
	
	# Invalid if prevCol != newCol && prevRow != newRow
	li	$t0, SCR_WIDTH_BYTE	# t0 <- SCR_WIDTH_BYTE
	
	div	$s1, $t0
	mfhi	$t2	# t2 <- newCol
	mflo	$t3	# t3 <- newRow
	
	div	$s0, $t0
	mfhi	$t4	# t4 <- prevCol
	mflo	$t5	# t5 <- prevRow
	
	beq	$t2, $t4, checkRightoverflow
	beq	$t3, $t5, checkRightoverflow

checkRightoverflow:

	# Invalid if overflows to the right (rightend and leftend are not on the same row)
	addi	$t6, $s1, spaceship_RowTail_Offset	# t4 <- indx of the right end of spaceship
	div	$t6, $t0
	mflo	$t7	# t5 <- row# of the right end of spaceship
	
	beq	$t7, $t3, handleKeyboardEvent_end
	
newIndxInvalid: 
	move	$s1, $s0	# newIndx = prevIndx	
	
handleKeyboardEvent_end:
	li	$t0, SCR_WIDTH_BYTE	# t0 <- SCR_WIDTH_BYTE
	
	div	$s1, $t0
	mfhi	$s6	# t6 <- newCol
	mflo	$s5	# t5 <- newRow
	div	$s6, $s6, 4
	
	bgt	$s4, 2000, generateEnemy_level4
	bgt	$s4, 1500, generateEnemy_level3
	bgt	$s4, 1000, generateEnemy_level2
	j	generateEnemy_level1

generateEnemy_level4:
	li	$t1, 30
	j	generateOrNot
generateEnemy_level3: 
	li	$t1, 40
	j	generateOrNot
generateEnemy_level2:
	li	$t1, 60
	j	generateOrNot
generateEnemy_level1:
	li	$t1, 80

generateOrNot:
	div	$s4, $t1
	mfhi	$t0
	beq	$t0, 0, generateRandomBullets
	
	j	moveAllSprites
generateRandomBullets:
	li	$v0, 42
	li	$a0, 1768
	li	$a1, 64
	syscall
	move	$t0, $a0
	
	li	$v0, 42
	li	$a0, 4
	li	$a1, 32
	syscall
	move	$t1, $a0

	la	$a0, roundBullets
	la	$a1, roundBullets_amount
	move	$a2, $t0
	#li	$a2, 30
	li	$a3, 120
	li	$v0, 0
	li	$v1, -2
	jal	insertSprite

moveAllSprites:
	# Move Rockets
	la	$a0, rockets
	la	$a1, rockets_amount
	lbu	$a1, 0($a1)
	li	$a2, 0
	li	$v0, rocket_W
	li	$v1, rocket_H
	jal	moveSprites
	
	# Move Bullets
	la	$a0, roundBullets
	la	$a1, roundBullets_amount
	lbu	$a1, 0($a1)
	li	$a2, 0
	li	$v0, roundBullet_W
	li	$v1, roundBullet_H
	jal	moveSprites
	
	
calculateCollision:
	andi	$t0, $s7, 0x0000ff00	# t0 <- invincible frames
	bne	$t0, 0, calculateCollision_end

	
	move	$a0, $s5
	move	$a1, $s6
	la	$a2, spaceship_hitbox
	la	$a3, roundBullets
	la	$v0, roundBullets_amount
	la	$v1, roundBullet_hitbox
	jal	detectCollision
	
	beq	$a0, $zero, calculateCollision_end	# If no collision
	
	# If collision
	lw	$t0, 0($a0)
	ori	$t0, $t0, 0x00ff00ff
	sw	$t0, 0($a0)
	addi	$s7, $s7, 0x00000ffe	# HP --, invincible frames <- 0x10
calculateCollision_end:

	# Print Rockets
	la	$a0, rocket
	li	$a1, rocket_Size
	la	$a3, rockets
	la	$v0, rockets_amount
	lbu	$v0, 0($v0)
	jal 	processSprites
	
	# Print Bullets
	la	$a0, roundBullet
	li	$a1, roundBullet_Size
	la	$a3, roundBullets
	la	$v0, roundBullets_amount
	lbu	$v0, 0($v0)
	jal 	processSprites
	


removeAllDeletedSprites:
	la	$a0, enemies
	la	$a1, enemies_amount
	jal	removeDeletedSprites
	
	la	$a0, rockets
	la	$a1, rockets_amount
	jal	removeDeletedSprites
	
	
	la	$a0, roundBullets
	la	$a1, roundBullets_amount
	jal	removeDeletedSprites



	andi	$t0, $s7, 0x0000ff00
	beq	$t0, 0, GreenHPBar
	j	RedHPBar
GreenHPBar:
	li	$a3, 0x0000ff00
	j	drawHPBar
RedHPBar:
	li	$a3, 0x00ff0000
drawHPBar:
	# Green part
	andi	$t0, $s7, 0x000000ff	# t0 <- HP
	li	$a0, 30740		# a0 <- HP bar start indx
	mul	$a1, $t0, 12		# t2 <- HP bar length
	li	$a2, 2
	jal	fillRect
	
	# Empty part
	andi	$t0, $s7, 0x000000ff	# t0 <- HP
	mul	$t1, $a1, 4
	add	$a0, $t1, 30740
	li	$t1, 10
	sub	$t0, $t1, $t0
	mul	$a1, $t0, 12
	li	$a3, 0x00000000
	jal	fillRect
	

	addi	$s4, $s4, 1	# frame # ++ 
	
	bge	$s7, 0x00010000, subtract_rocketCD
	j	subtract_invincibleFrame
subtract_rocketCD:
	sub	$s7, $s7, 0x00010000
subtract_invincibleFrame:
	andi	$t0, $s7, 0x0000ff00
	beq	$t0, 0, calculate_sleep_time
	
	sub	$s7, $s7, 0x00000100
	
	
	j	calculate_sleep_time
gameover:
	la	$a0, G
	li	$a1, G_Size
	li	$a2, 15520
	jal	drawBitmap
	
	li	$a2, 15600
	jal	drawBitmap
checkP:
	# If P is pressed, restart
	la	$t1, KEYBOARD_EVENT_ADDRESS
	lw	$t0, 0($t1)
	bne	$t0, 1, calculate_sleep_time
	lw	$t0, 4($t1)
	beq	$t0, 112, main
	
calculate_sleep_time:
	# Record frame ending timestamp
	li	$v0, 30
	syscall
	move	$s3, $a1	# s3 <- frame ending timestamp
	
	sub	$s3, $s3, $s2	# s3 <- frame time cost (ms)
	
	# Sleep max(17 - frame time cost,  0) ms
	li	$s2, 17		# s3 <- 17
	sub	$s3, $s2, $s3	# s3 <- 17 - frame time cost (ms)
	blt	$s3, 1, mainloop_continue
	
	li	$v0, 32
	move	$a0, $s3
	syscall

mainloop_continue:
	j	mainloop
	
mainEnd:	
	li	$v0, 10
	syscall

# sprite *detectCollision(y, x, *hitbox, array, *arraylen, arraySpriteHitbox)
	# params:
	# a0 -> y
	# a1 -> x
	# a2 -> *hitbox
	# a3 -> array
	# v0 -> *arrylen
	# v1 -> *arraySpriteHitbox
# => set a0 to 0 if no collision
#    set a0 to the address of the sprite in the array that collides with y, x

detectCollision:
	lbu	$v0, 0($v0)	# v0 <- arrayLen
	beq	$v0, 0, detectCollision_end
	
	lw	$t0, 0($a2)	# 
	add	$a0, $a0, $t0	# a0 <- y start of the hitbox
	lw	$t0, 4($a2)	
	add	$a1, $a1, $t0	# a1 <- x start of the hitbox
	
	lw	$t4, 8($a2)	# t4 <- hitboxH
	lw	$t5, 12($a2)	# t5 <- hitboxW
	lw	$t6, 8($v1)	# t6 <- arraySprite.hitboxH
	lw	$t7, 12($v1)	# t7 <- arraySprite.hitboxW
	lw	$t8, 0($v1)	# t8 <- arraySprite.hitboxY
	lw	$t9, 4($v1)	# t9 <- arraySprite.hitboxX
	
	move	$t0, $zero	# t0 <- i
	
detectCollision_loop:
	beq	$t0, $v0, detectCollision_end
	
	lbu	$t1, 2($a3)	# t1 < - thisSprite.y
	add	$t1, $t1, $t8	# t1 <- thisSprite.hitbox start y
	
	lbu	$t2, 0($a3)	# t2 <- thisSprite.x
	add	$t2, $t2, $t9	# t2 <- thisSprite.hitbox start x
	
	sub	$t3, $t1, $a0	# t3 <- y0 - yi
	blt	$t3, 0, detectCollision_invertY
	
	j	detectCollision_compareY
detectCollision_invertY:
	mul	$t3, $t3, -1	# t3 <- |y0 - yi|
detectCollision_compareY:
	ble	$t3, $t4, detectCollision_calculateX
	ble	$t3, $t6, detectCollision_calculateX
	
	j	detectCollision_continue
	
detectCollision_calculateX:
	sub	$t3, $t2, $a1	# t3 <- x0 - xi
	blt	$t3, 0, detectCollision_invertX
	
	j	detectCollision_compareX
detectCollision_invertX:
	mul	$t3, $t3, -1	# t3 <- |x0 - xi|
detectCollision_compareX:
	ble	$t3, $t5, detectCollision_collision
	ble	$t3, $t7, detectCollision_collision
	
	j	detectCollision_continue
detectCollision_collision:

	move	$a0, $a3
	jr	$ra


detectCollision_continue:
	addi	$a3, $a3, 8	# thisSprite += 8
	addi	$t0, $t0, 1	# i++
	j	detectCollision_loop
detectCollision_end:
	#li	$v0, 1
	#move	$a0, $t1
	#syscall
	
	#li	$v0, 4
	#la	$a0, nlc
	#syscall
	
	move	$a0, $zero
	jr	$ra


# void removeDeletedSprites(*spriteArray, *arrayLen)
	# params:
	# a0 -> spriteArray
	# a1 -> &arrayLen
removeDeletedSprites:
	move	$t0, $zero	# t0 <- i 
	lbu	$t1, 0($a1)	# t1 <- len
	move	$t2, $a0	# t2 <- beginning of the array
	
removeDeletedSprites_loop:
	bge	$t0, $t1, removeDeletedSprites_end	# while i != len
	
	lw	$t3, 0($t2)	# t3 <- thisSprite
	beq	$t3, 0xffffffff, removeDeletedSprites_remove	# if thisSprite is marked as to be deleted.

	j	removeDeletedSprites_continue
removeDeletedSprites_remove:
	addi	$t1, $t1, -1	# len --
	beq	$t1, $t0, removeDeletedSprites_end	# if this is the last item
	mul	$t5, $t1, 8	# t5 <- bytes offset of the last sprite
	add	$t5, $t5, $a0	# t5 <- actual loaction of the last sprite
	
	lw	$t6, 0($t5)	# t6 <- first word of the last sprite
	sw	$t6, 0($t2)	# save to the first word of thisSprite
	lw	$t6, 4($t5)	# t6 <- second word of the last sprite
	sw	$t6, 4($t2)	# save to the second word of thisSprite
	
	
	
removeDeletedSprites_continue:
	addi	$t0, $t0, 1	# i++
	addi	$t2, $t2, 8	# *thisSprite += 4
	j	removeDeletedSprites_loop
removeDeletedSprites_end:
	sb	$t1, 0($a1)	# save the new array len
	jr	$ra

# void moveSprites(*spriteArray, arrayLen, <function pointer>)
	# params:
	# a0 -> spriteArray
	# a1 -> arrayLen
	# a2 -> function pointer: cannot use t1-4
		# a0 -> address of a sprite in the array
	# v0 -> sprite_W
	# v1 -> sprite_H
moveSprites:
	# if arrayLen == 0, do nothing and return
	beq	$a1, 0, moveSprites_end
	
	li	$t0, 0	# t0 <- i, i = 0
	# if function pointer == NULL, do not save ra to the stack
	beq	$a2, 0, moveSprites_loop
	
moveSprites_savera:
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)

moveSprites_loop:
	# while i != arrayLen
	beq	$t0, $a1, moveSprites_end
	
moveSprites_standardMove:
	# lbu	$t1, 0($a0)	# t1 <- thisSprite.prevY
	lbu	$t2, 2($a0)	# t2 <- thisSprite.y
	
	beq	$t2, 0x000000ff, moveSprites_loop_continue
	
	# lbu	$t3, 2($a0)	# t3 <- thisSprite.prevX
	lbu	$t4, 0($a0)	# t4 <- thisSprite.x
	lb	$t5, 5($a0)	# t5 <- 0x vyvx   WHY??????????????????
	lb	$t6, 4($a0)
	
	#sll	$t6, $t5, 4	
	#sra	$t6, $t6, 4	# t6 <- vx
	#sra	$t5, $t5, 4	# t5 <- 0x 0 vy
	
	move	$t1, $t2
	move	$t3, $t4
	
	add	$t2, $t2, $t5	# y += vy
	add	$t4, $t4, $t6	# x += vx
	
	# if function pointer == NULL, do not call it
	beq	$a2, 0, moveSprites_verifyNewPos
	
moveSprites_augmentedMove:
	
moveSprites_verifyNewPos:
	# invalid if new y < 0
	blt	$t2, 0, moveSprites_newPosInvalid
	# invalid if new x < 0
	blt	$t4, 0, moveSprites_newPosInvalid
	# invalid if new y + sprite_H >= SCR_HEIGHT
	add	$t5, $t2, $v1
	bge	$t5, SCR_HEIGHT, moveSprites_newPosInvalid
	# invalid if new x + sprite_W >= SCR_WIDTH
	add	$t5, $t4, $v0
	bge	$t5, SCR_WIDTH, moveSprites_newPosInvalid
	
	j	moveSprites_saveUpdatedSpriteData
moveSprites_newPosInvalid:
	# mark the sprite in the array as "to be deleted"
	sll	$t1, $t1, 8	# t1 <- 0x 00 00 prevY 00
	add	$t1, $t1, 0xff	# t1 <- 0x 00 00 prevY ff
	sll	$t1, $t1, 8	# t1 <- 0x 00 prevY ff 00
	add	$t1, $t1, $t3	# t1 <- 0x 00 prevY ff prevX
	sll	$t1, $t1, 8	# t1 <- 0x prevY ff prevX 00
	add	$t1, $t1, 0xff	# t1 <- 0x prevY ff prevX ff
	
	sw	$t1, 0($a0)
	sw	$zero, 4($a0)
	j	moveSprites_loop_continue
moveSprites_saveUpdatedSpriteData:
	

	sll	$t1, $t1, 8	# t1 <- 0x 00 00 prevY 00
	add	$t1, $t1, $t2	# t1 <- 0x 00 00 prevY yy
	sll	$t1, $t1, 8	# t1 <- 0x 00 prevY yy 00
	add	$t1, $t1, $t3	# t1 <- 0x 00 prevY yy prevX
	sll	$t1, $t1, 8	# t1 <- 0x prevY yy prevX 00
	add	$t1, $t1, $t4	# t1 <- 0x prevY yy prevX xx
	# Mark its y and x value to ff so that it won't be drawn on the next frame, and will be deleted the frame after.
	
	sw	$t1, 0($a0)
	
moveSprites_loop_continue:
	
	addi	$t0, $t0, 1	# i++
	addi	$a0, $a0, 8	# *thisSprite +=  8
	j	moveSprites_loop
	
	# if function pointer == 0, do not load ra from the stack
	beq	$a2, 0, moveSprites_end
moveSprites_loadra:
	lw	$ra, 0($sp)
	addi	$sp, $sp, 4

moveSprites_end:
	jr	$ra


# sprite *insertSprite(*spriteArray, *arrayLen, y, x, vy, vx)
# => set a0 to the address of the newly inserted sprite
	# params: 
	# a0 -> spriteArray
	# a1 -> &arrayLen
	# a2 -> y
	# a3 -> x
	# v0 -> vy
	# v1 -> vx
insertSprite:
	lbu	$t0, 0($a1)	# t0 <- arrayLen
	
	# If the array has reached max length, do nothing and return.
	beq	$t0, MAX_ARRAY_LEN, insertSprite_end
	move	$t2, $a0
	
	sll	$t1, $t0, 3	# t1 <- 8 * arrayLen
	add	$t2, $t2, $t1	# a0 <- *newSprite
	
	move	$t1, $a2	# t1 <- 0x00 00 00 yy
	addi	$t1, $t1, 1	# t1 <- 0x00 00 00 yy+1  (To make sure it is drew on the frame it was added)

	
	sll	$t1, $t1, 8	# t1 <- 0x00 00 yy+1 00
	add	$t1, $t1, $a2	# t1 <- 0x00 00 yy+1 yy
	sll	$t1, $t1, 8	# t1 <- 0x00 yy+1 yy 00
	add	$t1, $t1, $a3	# t1 <- 0x00 yy+1 yy xx
	sll	$t1, $t1, 8	# t1 <- 0xyy+1 yy xx 00
	add	$t1, $t1, $a3	# t2 <- 0xyy+1 yy xx xx
	sw	$t1, 0($t2)	
	
	#move	$t2, $v0	# t2 <- 0x00 00 00 0vy
	#sll	$t2, $t2, 4	# t2 <- 0x00 00 00 vy0
	sb	$v0, 5($t2)
	sb	$v1, 4($t2)
	
	addi	$t0, $t0, 1	# arrayLen ++
	sb	$t0, 0($a1)

insertSprite_end:
	jr	$ra

# USES t2

# void processSprites(*bitmapData, bitmapSize, *spriteArray, arrayLen)
	# params:
	# a0 -> bitmapData
	# a1 -> bitmapSize
	# a3 -> spriteArray
	# v0 -> arrayLen
processSprites:
	beq	$v0, 0, processSprites_end
	
	# push ra onto the stack
	addi	$sp, $sp, -4
	sw	$ra, 0($sp)
	
	li	$t1, 0	# t1 <- i, i = 0
processSprites_loop:
	
	# while i != arrayLen
	beq	$t1, $v0, processSprites_loadra
	
	lbu	$a2, 3($a3)	# a2 <- thisSprite.prevY
	lbu	$t2, 2($a3)	# t2 <- thisSprite.y
	lbu	$v1, 1($a3)	# v1 <- thisSprite.prevX
	lbu	$t7, 0($a3)	# t7 <- thisSprite.x
	
	# if prevY != y or prevX != x, calculate offset and erase the sprite
	# else, do nothing and process the next sprite
	bne	$t2, $a2, processSprites_calculateOffset
	bne	$v1, $t7, processSprites_calculateOffset
	
	j	processSprites_loop_continue
processSprites_calculateOffset:
	# Calculate offset (in BYTES) of the sprite on the previous frame and store in a2
	mul	$a2, $a2, SCR_WIDTH	# a2 <- prevY * SCR_WIDTH
	add	$a2, $a2, $v1		# a2 <- prevY * SCR_WIDTH + prevX
	mul	$a2, $a2, 4		# a2 <- (prevY * SCR_WIDTH + prevX) * 4
	
	# Call eraseBitmap()
	jal	eraseBitmap
	
	# Calculate offset (in BYTES) of the sprite on the current frame and store in a2
	# If x == 0xff, do not draw it, mark it as to be deleted. 
	beq	$t7, 0xff, processSprites_markAsDeleted
	
	mul	$a2, $t2, SCR_WIDTH	# a2 <- y * SCR_WIDTH
	add	$a2, $a2, $t7		# a2 <- y * SCR_WIDTH + x
	mul	$a2, $a2, 4		# a2 <- (y * SCR_WIDTH + x) * 4
	
	
	
	# Call drawBitmap()
	jal	drawBitmap
	j	processSprites_loop_continue
processSprites_markAsDeleted:
	li	$t7, 0xffffffff
	sw	$t7, 0($a3)	
	
processSprites_loop_continue: 

	addi	$t1, $t1, 1	# i++
	addi	$a3, $a3, 8	# *thisSprite += 8
	j	processSprites_loop

processSprites_loadra:
	# pop ra from the stack
	lw	$ra, 0($sp)
	addi	$sp, $sp, 4
	
processSprites_end:
	
	jr	$ra
	

# USES t0, t3, t4, t5, t6

# void drawBitmap(*bitmapData, bitmapSize, *bufferOffset)
	# params:
	# t0 -> bitmapData
	# a1 -> bitmapSize
	# a2 -> bufferOffset (in bytes)
drawBitmap:
	addi	$a2, $a2, BASE_ADDRESS	# a2 <- bufferOffset + base_address
	move	$t0, $a0	# t0 <- bitmapData
	addi	$t3, $zero, 0	# t3 <- i, i = 0

drawBitmap_loop:
	# while i != bitmapSize
	beq	$t3, $a1, drawBitmap_end
	
	lw	$t4, 0($t0)	# t4 <- currentPixelData	e.g. 0x2466ccff
	
	andi	$t5, $t4, 0xff000000	# t5 <- 0byyyyxxxx000...
	sra	$t5, $t5, 24		# t5 <- 0b(111)yyyyxxxx
	andi	$t5, $t5, 0x000000ff	# t5 <- 0byyyyxxxx
	andi	$t6, $t5, 0xf0		# t6 <- 0byyyy0000
	sub	$t5, $t5, $t6		# t5 <- 0bxxxx
	sra	$t6, $t6, 4		# t6 <- 0byyyy
	
	mul	$t6, $t6, SCR_WIDTH	# t6 <- SCR_WIDTH * y
	add	$t6, $t6, $t5		# t6 <- SCR_WIDTH * y + x
	mul	$t6, $t6, 4		# t6 <- 4 * (SCR_WIDTH * y + x)
	add	$t6, $t6, $a2		# t6 <- 4 * (SCR_WIDTH * y + x) + bufferOffset
	
	andi	$t4, $t4, 0x00ffffff	# t4 <- 0x00cccccc
	
	sw	$t4, 0($t6)
	
	
	addi	$t0, $t0, 4	# t0 += 4
	addi	$t3, $t3, 1	# i++
	j	drawBitmap_loop
	
drawBitmap_end:
	jr	$ra	# return
	
# USES t0, t3, t4, t5, t6

# void eraseBitmap(*bitmapData, bitmapSize, *bufferOffset)
# Same with drawBitmap except it fills every pixel of the bitmap to black (#000000)
eraseBitmap:
	# Load params
	move	$t0, $a0	# t0 <- bitmapData
	# a1 <- bitmapSize
	addi	$a2, $a2, BASE_ADDRESS# a2 <- bufferOffset
	
	addi	$t3, $zero, 0	# t3 <- i, i = 0

eraseBitmap_loop:
	# while i != bitmapSize
	beq	$t3, $a1, eraseBitmap_end
	
	lw	$t4, 0($t0)	# t4 <- currentPixelData	e.g. 0x2466ccff
	
	andi	$t5, $t4, 0xff000000	# t5 <- 0byyyyxxxx000...
	sra	$t5, $t5, 24		# t5 <- 0b(111)yyyyxxxx
	andi	$t5, $t5, 0x000000ff	# t5 <- 0byyyyxxxx
	andi	$t6, $t5, 0xf0		# t6 <- 0byyyy0000
	sub	$t5, $t5, $t6		# t5 <- 0bxxxx
	sra	$t6, $t6, 4		# t6 <- 0byyyy
	
	mul	$t6, $t6, SCR_WIDTH	# t6 <- SCR_WIDTH * y
	add	$t6, $t6, $t5		# t6 <- SCR_WIDTH * y + x
	mul	$t6, $t6, 4		# t6 <- 4 * (SCR_WIDTH * y + x)
	add	$t6, $t6, $a2		# t6 <- 4 * (SCR_WIDTH * y + x) + bufferOffset
	
	li	$t4, 0x00000000		# t4 <- 0x00000000
	sw	$t4, 0($t6)
	
	
	addi	$t0, $t0, 4	# t0 += 4
	addi	$t3, $t3, 1	# i++
	j	eraseBitmap_loop
	
eraseBitmap_end:
	jr	$ra	# return

# void fillRect(startOffset, width, height, color)
# Fill every pixel in the rectangle to color
fillRect:
	move	$t0, $zero	# t0 <- i, i = 0
	mul	$t1, $a1, $a2	# t1 <- width * height
	addi	$a0, $a0, BASE_ADDRESS	# a0 <- offset + baseAddress
fillRectLoop:
	beq	$t0, $t1, fillRectEnd	# while i != width * height
	sw	$a3, 0($a0)	# *a0 <- color
	
	addi	$a0, $a0, 4	# nextPixelAddr += 4
	addi	$t0, $t0, 1	# i ++
	
	div	$t0, $a1	# t1 <- i % width
	mfhi	$t2
	bne	$t2, 0, fillRect_IfEndOfRowEndif	# If i % width == 0
fillRect_IfEndOfRow:
	addi	$a0, $a0, SCR_WIDTH_BYTE	# a0 += SCR_WIDTH_BYTE
	sub	$a0, $a0, $a1			# a0 -= 4 * width
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
	sub	$a0, $a0, $a1
fillRect_IfEndOfRowEndif:
	j	fillRectLoop

fillRectEnd:
	jr	$ra
