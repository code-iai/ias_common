uint64 MANIPULATION_POSE_UNREACHABLE = 64
uint64 GRASP_FAILED = 128
uint64 OBJECT_NOT_FOUND = 256
uint64 VISION_PRIMITIVE_FAILED = 512
uint64 CONTRADICTING_TACTILE_FEEDBACK = 1024

uint64  error_id                # One of the error constants defined above
string  node_name               # The node causing this error
string  error_description       # Further information about the error
