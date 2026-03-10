extends RigidBody2D

const MAX_SPD = 500

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void: 
	if state.linear_velocity.length() > MAX_SPD:
		state.linear_velocity = state.linear_velocity.normalized() * MAX_SPD
	if abs(state.angular_velocity) > 10.0:
		state.angular_velocity = sign(state.angular_velocity) * 10.0
