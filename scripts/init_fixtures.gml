
global.fix1[0]=physics_fixture_create();//projectile0
physics_fixture_set_box_shape(global.fix1[0],global.projectile0_radius,global.projectile0_radius);
physics_fixture_set_friction(global.fix1[0],0);
physics_fixture_set_density(global.fix1[0],0.5);
physics_fixture_set_linear_damping(global.fix1[0],0);
physics_fixture_set_restitution(global.fix1[0],1);
physics_fixture_set_collision_group(global.fix1[0],0);

global.fix1[1]=physics_fixture_create();//minigun_balls1
physics_fixture_set_box_shape(global.fix1[1],global.minigun_balls1_radius,global.minigun_balls1_radius);
physics_fixture_set_friction(global.fix1[1],0);
physics_fixture_set_density(global.fix1[1],0.5);
physics_fixture_set_linear_damping(global.fix1[1],0);
physics_fixture_set_restitution(global.fix1[1],1);
physics_fixture_set_collision_group(global.fix1[1],0);

global.fix1[2]=physics_fixture_create();//rocket2
physics_fixture_set_box_shape(global.fix1[2],global.rocket2_radius,global.rocket2_radius);
physics_fixture_set_friction(global.fix1[2],0);
physics_fixture_set_density(global.fix1[2],0.5);
physics_fixture_set_linear_damping(global.fix1[2],0);
physics_fixture_set_restitution(global.fix1[2],1);
physics_fixture_set_collision_group(global.fix1[2],0);

global.fix1[3]=physics_fixture_create();//lazor3
physics_fixture_set_box_shape(global.fix1[3],global.lazor_radius*1.5,global.lazor_radius*1.5);
physics_fixture_set_friction(global.fix1[3],0);
physics_fixture_set_density(global.fix1[3],0.5);
physics_fixture_set_linear_damping(global.fix1[3],0);
physics_fixture_set_restitution(global.fix1[3],1);
physics_fixture_set_collision_group(global.fix1[3],0);

global.fix1[4]=physics_fixture_create();//bomb4
physics_fixture_set_box_shape(global.fix1[4],global.bomb4_radius,global.bomb4_radius);
physics_fixture_set_friction(global.fix1[4],0);
physics_fixture_set_density(global.fix1[4],0.5);
physics_fixture_set_linear_damping(global.fix1[4],0);
physics_fixture_set_restitution(global.fix1[4],1);
physics_fixture_set_collision_group(global.fix1[4],0);

global.fix1[5]=physics_fixture_create();//bomb4_shatter
physics_fixture_set_box_shape(global.fix1[5],global.bomb4_shatter_l,global.bomb4_shatter_l);
physics_fixture_set_friction(global.fix1[5],0);
physics_fixture_set_density(global.fix1[5],0.5);
physics_fixture_set_linear_damping(global.fix1[5],0);
physics_fixture_set_angular_damping(global.fix1[5],0);
physics_fixture_set_restitution(global.fix1[5],1);
physics_fixture_set_collision_group(global.fix1[5],0);
