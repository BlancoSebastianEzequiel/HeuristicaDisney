/* Declaración de variables */
var vip >= 0;
var general >= 0;
var sonido_general >= 0;
var sonido_vip >= 0;
/* Definicion del funcional */
maximize z: 1500 * vip + 800 * general - 100 * 1500 - 700* (sonido_general + sonido_vip);

/* Restricciones */
s.t. espacio: vip + 0.5 * general <= 8000;
s.t. son_vip: 20 * sonido_vip >= vip ;
s.t. son_general: 8 * sonido_general >= general;
s.t. son_total: sonido_general + sonido_vip <= 800;
s.t. min_general: general >= 500;
s.t. min_vip: vip >= 100;
end;
