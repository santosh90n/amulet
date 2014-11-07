#define AM_RESERVED_REFS_START 10

typedef enum {
    AM_PARAM_NAME_STRING_TABLE = AM_RESERVED_REFS_START,
    AM_WINDOW_TABLE,

    MT_am_window,
    MT_am_program,
    MT_am_scene_node,
    MT_am_action,
    MT_am_program_node,
    MT_am_bind_array_node,
    MT_am_bind_mat2_node,
    MT_am_bind_mat3_node,
    MT_am_bind_mat4_node,
    MT_am_bind_vec2_node,
    MT_am_bind_vec3_node,
    MT_am_bind_vec4_node,
    MT_am_translate_node,
    MT_am_scale_node,
    MT_am_draw_arrays_node,
    MT_am_buffer,
    MT_am_buffer_view,
    MT_am_vec2,
    MT_am_vec3,
    MT_am_vec4,
    MT_am_mat2,
    MT_am_mat3,
    MT_am_mat4,

    AM_TRACEBACK_FUNC,

    AM_RESERVED_REFS_END
} am_reserved_refs;