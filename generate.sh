./script/generate scaffold fincas descripcion:string  agua_id:integer  area_tot:integer  area_cafe:integer  area_agric:integer  area_bosque:integer  area_potrero:integer  area_guat:integer  adqui_id:integer  altura:integer  lat:integer  lon:integer  municipio_id:integer  acceso_id:integer  invier_acceso_id:integer  verano_acceso_id:integer  tipo_suelo_id:integer  color_suelo_id:integer  profun_suelo_id:integer  topogra_id:integer  fertiliza_id:integer  comunidad_id:integer
./script/generate scaffold personas finca_id:integer nombre1:string  nombre2:string  apellido1:string  apellido2:string  fecha_nac:date  genero_id:integer  alfabe_id:integer  naciona_id:integer  direccion:string  profesion_id:integer  parentesco_id:integer  cabeza_familia:boolean
./script/generate scaffold generos descripcion:string
./script/generate scaffold alfabes descripcion:string
./script/generate scaffold nacionas descripcion:string
./script/generate scaffold profesions descripcion:string
./script/generate scaffold parentescos descripcion:string
./script/generate scaffold aguas descripcion:string
./script/generate scaffold adquis descripcion:string
./script/generate scaffold alfabes descripcion:string
./script/generate scaffold accesos descripcion:string
./script/generate scaffold invier_accesos descripcion:string
./script/generate scaffold verano_accesos descripcion:string
./script/generate scaffold tipo_suelos descripcion:string
./script/generate scaffold color_suelos descripcion:string



./script/generate scaffold profun_suelos descripcion:string
./script/generate scaffold topogras descripcion:string
./script/generate scaffold fertilizas descripcion:string
./script/generate scaffold municipios nombre:string
./script/generate scaffold comunidades nombre:string








