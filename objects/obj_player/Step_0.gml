 //User Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check_pressed(vk_up);
shift = keyboard_check(vk_shift);
key_space = keyboard_check_pressed(vk_space);

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
	case PLAYERSTATE.ATTACK_FINAL: PlayerState_Attack_Final(); break;
}                