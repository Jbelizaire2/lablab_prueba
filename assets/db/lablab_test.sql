/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 80025
Source Host           : 127.0.0.1:33060
Source Database       : lablab_test

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2022-12-14 19:01:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commune
-- ----------------------------
DROP TABLE IF EXISTS `commune`;
CREATE TABLE `commune` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `code` int NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E2E2D1EE98260155` (`region_id`),
  KEY `IDX_E2E2D1EEE946114A` (`province_id`),
  CONSTRAINT `FK_E2E2D1EE98260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `FK_E2E2D1EEE946114A` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16306 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of commune
-- ----------------------------
INSERT INTO `commune` VALUES ('1101', '1', 'Iquique', '-20.2355', '-70.13947', '1201', null, '11');
INSERT INTO `commune` VALUES ('1107', '1', 'Alto Hospicio', '-20.27121', '-70.10123', '1211', null, '11');
INSERT INTO `commune` VALUES ('1401', '1', 'Pozo Almonte', '-20.25153', '-69.78227', '1204', null, '14');
INSERT INTO `commune` VALUES ('1402', '1', 'Camina', '-19.27694', '-69.38691', '1208', null, '14');
INSERT INTO `commune` VALUES ('1403', '1', 'Colchane', '-19.49698', '-68.50828', '1210', null, '14');
INSERT INTO `commune` VALUES ('1404', '1', 'Huara', '-19.98934', '-69.77089', '1206', null, '14');
INSERT INTO `commune` VALUES ('1405', '1', 'Pica', '-20.4863', '-69.32109', '1203', null, '14');
INSERT INTO `commune` VALUES ('2101', '2', 'Antofagasta', '-23.64639', '-70.39796', '2201', null, '21');
INSERT INTO `commune` VALUES ('2102', '2', 'Mejillones', '-23.10145', '-70.4544', '2203', null, '21');
INSERT INTO `commune` VALUES ('2103', '2', 'Sierra Gorda', '-23.32142', '-69.80398', '2206', null, '21');
INSERT INTO `commune` VALUES ('2104', '2', 'Taltal', '-25.40293', '-70.47889', '2202', null, '21');
INSERT INTO `commune` VALUES ('2201', '2', 'Calama', '-22.45359', '-68.92944', '2301', null, '22');
INSERT INTO `commune` VALUES ('2202', '2', 'Ollague', '-21.22062', '-68.2519', '2302', null, '22');
INSERT INTO `commune` VALUES ('2203', '2', 'San Pedro de Atacama', '-22.90713', '-68.19864', '2303', null, '22');
INSERT INTO `commune` VALUES ('2301', '2', 'Tocopilla', '-22.08587', '-70.18901', '2101', null, '23');
INSERT INTO `commune` VALUES ('2302', '2', 'Maria Elena', '-22.33816', '-69.66166', '2103', null, '23');
INSERT INTO `commune` VALUES ('3101', '3', 'Copiapo', '-27.36648', '-70.33227', '3201', null, '31');
INSERT INTO `commune` VALUES ('3102', '3', 'Caldera', '-27.06309', '-70.82576', '3202', null, '31');
INSERT INTO `commune` VALUES ('3103', '3', 'Tierra Amarilla', '-27.46263', '-70.26132', '3203', null, '31');
INSERT INTO `commune` VALUES ('3201', '3', 'Chanaral', '-26.34349', '-70.6117', '3101', null, '32');
INSERT INTO `commune` VALUES ('3202', '3', 'Diego de Almagro', '-26.3942', '-70.03202', '3102', null, '32');
INSERT INTO `commune` VALUES ('3301', '3', 'Vallenar', '-28.57928', '-70.74533', '3301', null, '33');
INSERT INTO `commune` VALUES ('3302', '3', 'Alto del Carmen', '-28.75611', '-70.48677', '3304', null, '33');
INSERT INTO `commune` VALUES ('3303', '3', 'Freirina', '-28.50502', '-71.07496', '3302', null, '33');
INSERT INTO `commune` VALUES ('3304', '3', 'Huasco', '-28.46134', '-71.21431', '3303', null, '33');
INSERT INTO `commune` VALUES ('4101', '4', 'La Serena', '-29.90269', '-71.25198', '4101', null, '41');
INSERT INTO `commune` VALUES ('4102', '4', 'Coquimbo', '-29.95324', '-71.3378', '4103', null, '41');
INSERT INTO `commune` VALUES ('4103', '4', 'Andacollo', '-30.23138', '-71.08072', '4104', null, '41');
INSERT INTO `commune` VALUES ('4104', '4', 'La Higuera', '-29.50777', '-71.20988', '4102', null, '41');
INSERT INTO `commune` VALUES ('4105', '4', 'Paiguano', '-30.02748', '-70.51279', '4106', null, '41');
INSERT INTO `commune` VALUES ('4106', '4', 'Vicuña', '-30.03341', '-70.71114', '4105', null, '41');
INSERT INTO `commune` VALUES ('4201', '4', 'Illapel', '-31.62393', '-71.16162', '4301', null, '42');
INSERT INTO `commune` VALUES ('4202', '4', 'Canela', '-31.39914', '-71.45997', '4304', null, '42');
INSERT INTO `commune` VALUES ('4203', '4', 'Los Vilos', '-31.91238', '-71.50576', '4303', null, '42');
INSERT INTO `commune` VALUES ('4204', '4', 'Salamanca', '-31.77039', '-70.96561', '4302', null, '42');
INSERT INTO `commune` VALUES ('4301', '4', 'Ovalle', '-30.60317', '-71.20295', '4201', null, '43');
INSERT INTO `commune` VALUES ('4302', '4', 'Combarbala', '-31.17801', '-70.99979', '4205', null, '43');
INSERT INTO `commune` VALUES ('4303', '4', 'Monte Patria', '-30.68821', '-70.95382', '4203', null, '43');
INSERT INTO `commune` VALUES ('4304', '4', 'Punitaqui', '-30.82666', '-71.25998', '4204', null, '43');
INSERT INTO `commune` VALUES ('4305', '4', 'Rio Hurtado', '-30.41578', '-70.92425', '4206', null, '43');
INSERT INTO `commune` VALUES ('5101', '5', 'Valparaiso', '-33.04554', '-71.61949', '5301', null, '51');
INSERT INTO `commune` VALUES ('5102', '5', 'Casablanca', '-33.31362', '-71.40723', '5305', null, '51');
INSERT INTO `commune` VALUES ('5103', '5', 'Concon', '-32.93066', '-71.53448', '5309', null, '51');
INSERT INTO `commune` VALUES ('5104', '5', 'Juan Fernandez', '-26.3214', '-79.9722', '5308', null, '51');
INSERT INTO `commune` VALUES ('5105', '5', 'Puchuncavi', '-32.7233', '-71.41626', '5307', null, '51');
INSERT INTO `commune` VALUES ('5107', '5', 'Quintero', '-32.7842', '-71.53027', '5306', null, '51');
INSERT INTO `commune` VALUES ('5109', '5', 'Viña del Mar', '-33.00978', '-71.54811', '5302', null, '51');
INSERT INTO `commune` VALUES ('5201', '5', 'Isla de Pascua', '-27.0954', '-109.572', '5101', null, '52');
INSERT INTO `commune` VALUES ('5301', '5', 'Los Andes', '-32.83372', '-70.59817', '5701', null, '53');
INSERT INTO `commune` VALUES ('5302', '5', 'Calle Larga', '-32.9463', '-70.54194', '5702', null, '53');
INSERT INTO `commune` VALUES ('5303', '5', 'Rinconada', '-32.84268', '-70.6842', '5704', null, '53');
INSERT INTO `commune` VALUES ('5304', '5', 'San Esteban', '-32.80344', '-70.58617', '5703', null, '53');
INSERT INTO `commune` VALUES ('5401', '5', 'La Ligua', '-32.44606', '-71.22761', '5201', null, '54');
INSERT INTO `commune` VALUES ('5402', '5', 'Cabildo', '-32.42586', '-71.06789', '5203', null, '54');
INSERT INTO `commune` VALUES ('5403', '5', 'Papudo', '-32.50385', '-71.44223', '5205', null, '54');
INSERT INTO `commune` VALUES ('5404', '5', 'Petorca', '-32.24821', '-70.93661', '5202', null, '54');
INSERT INTO `commune` VALUES ('5405', '5', 'Zapallar', '-32.54938', '-71.45437', '5204', null, '54');
INSERT INTO `commune` VALUES ('5501', '5', 'Quillota', '-32.88555', '-71.24919', '5501', null, '55');
INSERT INTO `commune` VALUES ('5502', '5', 'Calera', '-32.78638', '-71.20301', '5504', null, '55');
INSERT INTO `commune` VALUES ('5503', '5', 'Hijuelas', '-32.85448', '-71.08609', '5503', null, '55');
INSERT INTO `commune` VALUES ('5504', '5', 'La Cruz', '-32.81961', '-71.23831', '5505', null, '55');
INSERT INTO `commune` VALUES ('5506', '5', 'Nogales', '-32.73489', '-71.20374', '5502', null, '55');
INSERT INTO `commune` VALUES ('5601', '5', 'San Antonio', '-33.5904', '-71.60409', '5401', null, '56');
INSERT INTO `commune` VALUES ('5602', '5', 'Algarrobo', '-33.36241', '-71.66857', '5406', null, '56');
INSERT INTO `commune` VALUES ('5603', '5', 'Cartagena', '-33.54575', '-71.59641', '5403', null, '56');
INSERT INTO `commune` VALUES ('5604', '5', 'El Quisco', '-33.39634', '-71.68864', '5405', null, '56');
INSERT INTO `commune` VALUES ('5605', '5', 'El Tabo', '-33.45065', '-71.66598', '5404', null, '56');
INSERT INTO `commune` VALUES ('5606', '5', 'Santo Domingo', '-33.63704', '-71.62531', '5402', null, '56');
INSERT INTO `commune` VALUES ('5701', '5', 'San Felipe', '-32.7507', '-70.72505', '5601', null, '57');
INSERT INTO `commune` VALUES ('5702', '5', 'Catemu', '-32.77348', '-70.96559', '5603', null, '57');
INSERT INTO `commune` VALUES ('5703', '5', 'Llaillay', '-32.83349', '-70.95859', '5606', null, '57');
INSERT INTO `commune` VALUES ('5704', '5', 'Panquehue', '-32.81306', '-70.92', '5602', null, '57');
INSERT INTO `commune` VALUES ('5705', '5', 'Putaendo', '-32.62183', '-70.71504', '5604', null, '57');
INSERT INTO `commune` VALUES ('5706', '5', 'Santa Maria', '-32.75652', '-70.65819', '5605', null, '57');
INSERT INTO `commune` VALUES ('5801', '5', 'Quilpue', '-33.04982', '-71.44154', '5304', null, '58');
INSERT INTO `commune` VALUES ('5802', '5', 'Limache', '-32.99515', '-71.26752', '5506', null, '58');
INSERT INTO `commune` VALUES ('5803', '5', 'Olmue', '-32.99202', '-71.17638', '5507', null, '58');
INSERT INTO `commune` VALUES ('5804', '5', 'Villa Alemana', '-33.04276', '-71.37583', '5303', null, '58');
INSERT INTO `commune` VALUES ('6101', '6', 'Rancagua', '-34.17026', '-70.74071', '6101', null, '61');
INSERT INTO `commune` VALUES ('6102', '6', 'Codegua', '-34.03342', '-70.66768', '6107', null, '61');
INSERT INTO `commune` VALUES ('6103', '6', 'Coinco', '-34.26597', '-70.9548', '6116', null, '61');
INSERT INTO `commune` VALUES ('6104', '6', 'Coltauco', '-34.28995', '-71.07781', '6106', null, '61');
INSERT INTO `commune` VALUES ('6105', '6', 'Donihue', '-34.2202', '-70.95991', '6105', null, '61');
INSERT INTO `commune` VALUES ('6106', '6', 'Graneros', '-34.0595', '-70.72671', '6103', null, '61');
INSERT INTO `commune` VALUES ('6107', '6', 'Las Cabras', '-34.29025', '-71.30948', '6109', null, '61');
INSERT INTO `commune` VALUES ('6108', '6', 'Machali', '-34.17967', '-70.64894', '6102', null, '61');
INSERT INTO `commune` VALUES ('6109', '6', 'Malloa', '-34.43961', '-70.94499', '6115', null, '61');
INSERT INTO `commune` VALUES ('6110', '6', 'San Francisco de Mostazal', '-33.95164', '-70.56753', '6104', null, '61');
INSERT INTO `commune` VALUES ('6111', '6', 'Olivar', '-34.20327', '-70.75564', '6114', null, '61');
INSERT INTO `commune` VALUES ('6112', '6', 'Peumo', '-34.3944', '-71.16373', '6108', null, '61');
INSERT INTO `commune` VALUES ('6113', '6', 'Pichidegua', '-34.35206', '-71.28272', '6111', null, '61');
INSERT INTO `commune` VALUES ('6114', '6', 'Quinta de Tilcoco', '-34.35202', '-70.9657', '6117', null, '61');
INSERT INTO `commune` VALUES ('6115', '6', 'Rengo', '-34.39939', '-70.85894', '6112', null, '61');
INSERT INTO `commune` VALUES ('6116', '6', 'Requinoa', '-34.27984', '-70.81328', '6113', null, '61');
INSERT INTO `commune` VALUES ('6117', '6', 'San Vicente', '-34.47384', '-71.12222', '6110', null, '61');
INSERT INTO `commune` VALUES ('6201', '6', 'Pichilemu', '-34.38437', '-72.01279', '6301', null, '62');
INSERT INTO `commune` VALUES ('6202', '6', 'La Estrella', '-34.20185', '-71.65138', '6304', null, '62');
INSERT INTO `commune` VALUES ('6203', '6', 'Litueche', '-34.11805', '-71.72424', '6303', null, '62');
INSERT INTO `commune` VALUES ('6204', '6', 'Marchihue', '-34.39277', '-71.61622', '6305', null, '62');
INSERT INTO `commune` VALUES ('6205', '6', 'Navidad', '-33.89221', '-71.79245', '6302', null, '62');
INSERT INTO `commune` VALUES ('6206', '6', 'Paredones', '-34.64502', '-71.89887', '6306', null, '62');
INSERT INTO `commune` VALUES ('6301', '6', 'San Fernando', '-34.58386', '-70.98905', '6201', null, '63');
INSERT INTO `commune` VALUES ('6302', '6', 'Chepica', '-34.72517', '-71.2733', '6209', null, '63');
INSERT INTO `commune` VALUES ('6303', '6', 'Chimbarongo', '-34.70131', '-71.03751', '6202', null, '63');
INSERT INTO `commune` VALUES ('6304', '6', 'Lolol', '-34.72296', '-71.64395', '6206', null, '63');
INSERT INTO `commune` VALUES ('6305', '6', 'Nancagua', '-34.64549', '-71.19968', '6203', null, '63');
INSERT INTO `commune` VALUES ('6306', '6', 'Palmilla', '-34.52944', '-71.3902', '6207', null, '63');
INSERT INTO `commune` VALUES ('6307', '6', 'Peralillo', '-34.47296', '-71.47758', '6208', null, '63');
INSERT INTO `commune` VALUES ('6308', '6', 'Placilla', '-34.61447', '-71.08541', '6204', null, '63');
INSERT INTO `commune` VALUES ('6309', '6', 'Pumanque', '-34.59056', '-71.6906', '6214', null, '63');
INSERT INTO `commune` VALUES ('6310', '6', 'Santa Cruz', '-34.63374', '-71.36418', '6205', null, '63');
INSERT INTO `commune` VALUES ('7101', '7', 'Talca', '-35.41772', '-71.65834', '7201', null, '71');
INSERT INTO `commune` VALUES ('7102', '7', 'Constitucion', '-35.32618', '-72.41761', '7208', null, '71');
INSERT INTO `commune` VALUES ('7103', '7', 'Curepto', '-35.09107', '-72.01712', '7207', null, '71');
INSERT INTO `commune` VALUES ('7104', '7', 'Empedrado', '-35.55937', '-72.29536', '7209', null, '71');
INSERT INTO `commune` VALUES ('7105', '7', 'Maule', '-35.4673', '-71.7343', '7206', null, '71');
INSERT INTO `commune` VALUES ('7106', '7', 'Pelarco', '-35.38026', '-71.44145', '7203', null, '71');
INSERT INTO `commune` VALUES ('7107', '7', 'Pencahue', '-35.39653', '-71.79459', '7205', null, '71');
INSERT INTO `commune` VALUES ('7108', '7', 'Rio Claro', '-35.21623', '-71.24688', '7204', null, '71');
INSERT INTO `commune` VALUES ('7109', '7', 'San Clemente', '-35.53636', '-71.48029', '7202', null, '71');
INSERT INTO `commune` VALUES ('7110', '7', 'San Rafael', '-35.30404', '-71.50603', '7210', null, '71');
INSERT INTO `commune` VALUES ('7201', '7', 'Cauquenes', '-35.96105', '-72.31934', '7401', null, '72');
INSERT INTO `commune` VALUES ('7202', '7', 'Chanco', '-35.7897', '-72.544', '7403', null, '72');
INSERT INTO `commune` VALUES ('7203', '7', 'Pelluhue', '-35.63581', '-72.52818', '7402', null, '72');
INSERT INTO `commune` VALUES ('7301', '7', 'Curico', '-34.98534', '-71.23933', '7101', null, '73');
INSERT INTO `commune` VALUES ('7302', '7', 'Hualane', '-34.974', '-71.79858', '7107', null, '73');
INSERT INTO `commune` VALUES ('7303', '7', 'Licanten', '-34.98569', '-71.98142', '7105', null, '73');
INSERT INTO `commune` VALUES ('7304', '7', 'Molina', '-35.1132', '-71.27852', '7108', null, '73');
INSERT INTO `commune` VALUES ('7305', '7', 'Rauco', '-34.93549', '-71.42417', '7104', null, '73');
INSERT INTO `commune` VALUES ('7306', '7', 'Romeral', '-34.95325', '-71.1255', '7103', null, '73');
INSERT INTO `commune` VALUES ('7307', '7', 'Sagrada Familia', '-35.03254', '-71.44776', '7109', null, '73');
INSERT INTO `commune` VALUES ('7308', '7', 'Teno', '-34.86518', '-71.1633', '7102', null, '73');
INSERT INTO `commune` VALUES ('7309', '7', 'Vichuquen', '-34.88323', '-71.99094', '7106', null, '73');
INSERT INTO `commune` VALUES ('7401', '7', 'Linares', '-35.84544', '-71.59788', '7301', null, '74');
INSERT INTO `commune` VALUES ('7402', '7', 'Colbun', '-36.07169', '-70.97959', '7303', null, '74');
INSERT INTO `commune` VALUES ('7403', '7', 'Longavi', '-35.96149', '-71.68126', '7304', null, '74');
INSERT INTO `commune` VALUES ('7404', '7', 'Parral', '-36.13649', '-71.82479', '7305', null, '74');
INSERT INTO `commune` VALUES ('7405', '7', 'Retiro', '-36.03217', '-71.74769', '7306', null, '74');
INSERT INTO `commune` VALUES ('7406', '7', 'San Javier', '-35.59832', '-71.73013', '7310', null, '74');
INSERT INTO `commune` VALUES ('7407', '7', 'Villa Alegre', '-35.67149', '-71.73895', '7309', null, '74');
INSERT INTO `commune` VALUES ('7408', '7', 'Yerbas Buenas', '-35.68667', '-71.57077', '7302', null, '74');
INSERT INTO `commune` VALUES ('8101', '8', 'Concepcion', '-36.82706', '-73.05014', '8201', null, '81');
INSERT INTO `commune` VALUES ('8102', '8', 'Coronel', '-36.99956', '-73.16807', '8207', null, '81');
INSERT INTO `commune` VALUES ('8103', '8', 'Chiguayante', '-36.917', '-73.02877', '8211', null, '81');
INSERT INTO `commune` VALUES ('8104', '8', 'Florida', '-36.81737', '-72.66429', '8204', null, '81');
INSERT INTO `commune` VALUES ('8105', '8', 'Hualqui', '-36.97044', '-72.93418', '8203', null, '81');
INSERT INTO `commune` VALUES ('8106', '8', 'Lota', '-37.08938', '-73.15351', '8208', null, '81');
INSERT INTO `commune` VALUES ('8107', '8', 'Penco', '-36.72726', '-72.98393', '8202', null, '81');
INSERT INTO `commune` VALUES ('8108', '8', 'San Pedro de la Paz', '-36.83867', '-73.11048', '8210', null, '81');
INSERT INTO `commune` VALUES ('8109', '8', 'Santa Juana', '-37.17141', '-72.93975', '8209', null, '81');
INSERT INTO `commune` VALUES ('8110', '8', 'Talcahuano', '-36.71447', '-73.11411', '8206', null, '81');
INSERT INTO `commune` VALUES ('8111', '8', 'Tome', '-36.61067', '-72.958', '8205', null, '81');
INSERT INTO `commune` VALUES ('8112', '8', 'Hualpen', '-36.78536', '-73.11054', '8212', null, '81');
INSERT INTO `commune` VALUES ('8201', '8', 'Lebu', '-37.61083', '-73.64817', '8303', null, '82');
INSERT INTO `commune` VALUES ('8202', '8', 'Arauco', '-37.24048', '-73.31409', '8301', null, '82');
INSERT INTO `commune` VALUES ('8203', '8', 'Canete', '-37.79777', '-73.39371', '8305', null, '82');
INSERT INTO `commune` VALUES ('8204', '8', 'Contulmo', '-38.00567', '-73.22983', '8306', null, '82');
INSERT INTO `commune` VALUES ('8205', '8', 'Curanilahue', '-37.47871', '-73.33896', '8302', null, '82');
INSERT INTO `commune` VALUES ('8206', '8', 'Los Alamos', '-37.62209', '-73.45914', '8304', null, '82');
INSERT INTO `commune` VALUES ('8207', '8', 'Tirua', '-38.24619', '-73.47808', '8307', null, '82');
INSERT INTO `commune` VALUES ('8301', '8', 'Los Angeles', '-37.47076', '-72.35166', '8401', null, '83');
INSERT INTO `commune` VALUES ('8302', '8', 'Antuco', '-37.35238', '-71.54468', '8413', null, '83');
INSERT INTO `commune` VALUES ('8303', '8', 'Cabrero', '-37.02804', '-72.40119', '8410', null, '83');
INSERT INTO `commune` VALUES ('8304', '8', 'Laja', '-37.27936', '-72.70492', '8403', null, '83');
INSERT INTO `commune` VALUES ('8305', '8', 'Mulchen', '-37.71775', '-72.23961', '8407', null, '83');
INSERT INTO `commune` VALUES ('8306', '8', 'Nacimiento', '-37.49844', '-72.66878', '8405', null, '83');
INSERT INTO `commune` VALUES ('8307', '8', 'Negrete', '-37.58449', '-72.53604', '8406', null, '83');
INSERT INTO `commune` VALUES ('8308', '8', 'Quilaco', '-37.67949', '-71.99956', '8408', null, '83');
INSERT INTO `commune` VALUES ('8309', '8', 'Quilleco', '-37.46801', '-71.98108', '8404', null, '83');
INSERT INTO `commune` VALUES ('8310', '8', 'San Rosendo', '-37.25745', '-72.71944', '8411', null, '83');
INSERT INTO `commune` VALUES ('8311', '8', 'Santa Barbara', '-37.66315', '-72.01885', '8402', null, '83');
INSERT INTO `commune` VALUES ('8312', '8', 'Tucapel', '-37.28649', '-71.94275', '8412', null, '83');
INSERT INTO `commune` VALUES ('8313', '8', 'Yumbel', '-37.09197', '-72.55926', '8409', null, '83');
INSERT INTO `commune` VALUES ('8314', '8', 'Alto Biobio', '-37.895', '-71.60626', '8414', null, '83');
INSERT INTO `commune` VALUES ('9101', '9', 'Temuco', '-38.73681', '-72.5975', '9201', null, '91');
INSERT INTO `commune` VALUES ('9102', '9', 'Carahue', '-38.71439', '-73.16262', '9209', null, '91');
INSERT INTO `commune` VALUES ('9103', '9', 'Cunco', '-38.9281', '-72.02704', '9204', null, '91');
INSERT INTO `commune` VALUES ('9104', '9', 'Curarrehue', '-39.34483', '-71.53936', '9218', null, '91');
INSERT INTO `commune` VALUES ('9105', '9', 'Freire', '-38.95202', '-72.62771', '9203', null, '91');
INSERT INTO `commune` VALUES ('9106', '9', 'Galvarino', '-38.40785', '-72.78139', '9207', null, '91');
INSERT INTO `commune` VALUES ('9107', '9', 'Gorbea', '-39.09276', '-72.67724', '9212', null, '91');
INSERT INTO `commune` VALUES ('9108', '9', 'Lautaro', '-38.53013', '-72.43815', '9205', null, '91');
INSERT INTO `commune` VALUES ('9109', '9', 'Loncoche', '-39.35621', '-72.6295', '9214', null, '91');
INSERT INTO `commune` VALUES ('9110', '9', 'Melipeuco', '-38.84783', '-71.68964', '9217', null, '91');
INSERT INTO `commune` VALUES ('9111', '9', 'Nueva Imperial', '-38.73883', '-72.95132', '9208', null, '91');
INSERT INTO `commune` VALUES ('9112', '9', 'Padre las Casas', '-38.75736', '-72.59152', '9220', null, '91');
INSERT INTO `commune` VALUES ('9113', '9', 'Perquenco', '-38.41629', '-72.37402', '9206', null, '91');
INSERT INTO `commune` VALUES ('9114', '9', 'Pitrufquen', '-38.98573', '-72.63916', '9211', null, '91');
INSERT INTO `commune` VALUES ('9115', '9', 'Pucon', '-39.28163', '-71.9604', '9216', null, '91');
INSERT INTO `commune` VALUES ('9116', '9', 'Puerto Saavedra', '-38.77176', '-73.4016', '9210', null, '91');
INSERT INTO `commune` VALUES ('9117', '9', 'Teodoro Schmidt', '-38.98968', '-73.09095', '9219', null, '91');
INSERT INTO `commune` VALUES ('9118', '9', 'Tolten', '-39.24825', '-73.21316', '9213', null, '91');
INSERT INTO `commune` VALUES ('9119', '9', 'Vilcun', '-38.66528', '-72.22244', '9202', null, '91');
INSERT INTO `commune` VALUES ('9120', '9', 'Villarrica', '-39.28924', '-72.22711', '9215', null, '91');
INSERT INTO `commune` VALUES ('9121', '9', 'Cholchol', '-38.59515', '-72.84315', '9221', null, '91');
INSERT INTO `commune` VALUES ('9201', '9', 'Angol', '-37.79782', '-72.70869', '9101', null, '92');
INSERT INTO `commune` VALUES ('9202', '9', 'Collipulli', '-37.95152', '-72.43342', '9105', null, '92');
INSERT INTO `commune` VALUES ('9203', '9', 'Curacautin', '-38.43718', '-71.88799', '9110', null, '92');
INSERT INTO `commune` VALUES ('9204', '9', 'Ercilla', '-38.06022', '-72.37208', '9106', null, '92');
INSERT INTO `commune` VALUES ('9205', '9', 'Lonquimay', '-38.47884', '-71.23602', '9111', null, '92');
INSERT INTO `commune` VALUES ('9206', '9', 'Los Sauces', '-37.97764', '-72.82945', '9103', null, '92');
INSERT INTO `commune` VALUES ('9207', '9', 'Lumaco', '-38.16213', '-72.90202', '9108', null, '92');
INSERT INTO `commune` VALUES ('9208', '9', 'Puren', '-38.02986', '-73.07082', '9102', null, '92');
INSERT INTO `commune` VALUES ('9209', '9', 'Renaico', '-37.66522', '-72.58617', '9104', null, '92');
INSERT INTO `commune` VALUES ('9210', '9', 'Traiguen', '-38.24512', '-72.66063', '9107', null, '92');
INSERT INTO `commune` VALUES ('9211', '9', 'Victoria', '-38.22792', '-72.33194', '9109', null, '92');
INSERT INTO `commune` VALUES ('10101', '10', 'Puerto Montt', '-41.47184', '-72.9396', '10301', null, '101');
INSERT INTO `commune` VALUES ('10102', '10', 'Calbuco', '-41.7621', '-73.13114', '10309', null, '101');
INSERT INTO `commune` VALUES ('10103', '10', 'Cochamo', '-41.48599', '-72.30383', '10302', null, '101');
INSERT INTO `commune` VALUES ('10104', '10', 'Fresia', '-41.14881', '-73.42002', '10304', null, '101');
INSERT INTO `commune` VALUES ('10105', '10', 'Frutillar', '-41.12683', '-73.02767', '10305', null, '101');
INSERT INTO `commune` VALUES ('10106', '10', 'Los Muermos', '-41.38837', '-73.45962', '10308', null, '101');
INSERT INTO `commune` VALUES ('10107', '10', 'Llanquihue', '-41.25254', '-73.00388', '10306', null, '101');
INSERT INTO `commune` VALUES ('10108', '10', 'Maullin', '-41.61527', '-73.59328', '10307', null, '101');
INSERT INTO `commune` VALUES ('10109', '10', 'Puerto Varas', '-41.31783', '-72.98271', '10303', null, '101');
INSERT INTO `commune` VALUES ('10201', '10', 'Castro', '-42.48242', '-73.76427', '10401', null, '102');
INSERT INTO `commune` VALUES ('10202', '10', 'Ancud', '-41.86275', '-73.82412', '10406', null, '102');
INSERT INTO `commune` VALUES ('10203', '10', 'Chonchi', '-42.61784', '-73.76438', '10402', null, '102');
INSERT INTO `commune` VALUES ('10204', '10', 'Curaco de Velez', '-42.43792', '-73.59573', '10410', null, '102');
INSERT INTO `commune` VALUES ('10205', '10', 'Dalcahue', '-42.37371', '-73.65251', '10408', null, '102');
INSERT INTO `commune` VALUES ('10206', '10', 'Puqueldon', '-42.64054', '-73.61116', '10405', null, '102');
INSERT INTO `commune` VALUES ('10207', '10', 'Queilen', '-42.94216', '-73.4615', '10403', null, '102');
INSERT INTO `commune` VALUES ('10208', '10', 'Quellon', '-43.11317', '-73.6142', '10404', null, '102');
INSERT INTO `commune` VALUES ('10209', '10', 'Quemchi', '-42.13624', '-73.47556', '10407', null, '102');
INSERT INTO `commune` VALUES ('10210', '10', 'Quinchao', '-42.5099', '-73.4337', '10415', null, '102');
INSERT INTO `commune` VALUES ('10301', '10', 'Osorno', '-40.57382', '-73.13587', '10201', null, '103');
INSERT INTO `commune` VALUES ('10302', '10', 'Puerto Octay', '-40.97015', '-72.88605', '10203', null, '103');
INSERT INTO `commune` VALUES ('10303', '10', 'Purranque', '-40.90742', '-73.15758', '10206', null, '103');
INSERT INTO `commune` VALUES ('10304', '10', 'Puyehue', '-40.66731', '-72.62975', '10204', null, '103');
INSERT INTO `commune` VALUES ('10305', '10', 'Rio Negro', '-40.79481', '-73.21384', '10205', null, '103');
INSERT INTO `commune` VALUES ('10306', '10', 'San Juan de la Costa', '-40.5868', '-73.5108', '10207', null, '103');
INSERT INTO `commune` VALUES ('10307', '10', 'San Pablo', '-40.40882', '-73.01018', '10202', null, '103');
INSERT INTO `commune` VALUES ('10401', '10', 'Chaiten', '-42.9353', '-72.6595', '10501', null, '104');
INSERT INTO `commune` VALUES ('10402', '10', 'Futaleufu', '-43.18953', '-71.85879', '10503', null, '104');
INSERT INTO `commune` VALUES ('10403', '10', 'Hualaihue', '-41.95511', '-72.44816', '10502', null, '104');
INSERT INTO `commune` VALUES ('10404', '10', 'Palena', '-43.61423', '-71.86866', '10504', null, '104');
INSERT INTO `commune` VALUES ('11101', '11', 'Coyhaique', '-45.57021', '-72.06755', '11401', null, '111');
INSERT INTO `commune` VALUES ('11102', '11', 'Lago Verde', '-44.64037', '-71.71536', '11402', null, '111');
INSERT INTO `commune` VALUES ('11201', '11', 'Aysen', '-45.39414', '-72.6919', '11101', null, '112');
INSERT INTO `commune` VALUES ('11202', '11', 'Cisnes', '-44.76314', '-72.6615', '11102', null, '112');
INSERT INTO `commune` VALUES ('11203', '11', 'Guaitecas', '-43.88517', '-73.76587', '11104', null, '112');
INSERT INTO `commune` VALUES ('11301', '11', 'Cochrane', '-47.26574', '-72.54608', '11301', null, '113');
INSERT INTO `commune` VALUES ('11302', '11', 'O?Higgins', '-48.44729', '-72.6084', '11302', null, '113');
INSERT INTO `commune` VALUES ('11303', '11', 'Tortel', '-48.03616', '-74.14659', '11303', null, '113');
INSERT INTO `commune` VALUES ('11401', '11', 'Chile Chico', '-46.5443', '-71.76697', '11201', null, '114');
INSERT INTO `commune` VALUES ('11402', '11', 'Rio Ibanez', '-46.2826', '-71.92529', '11203', null, '114');
INSERT INTO `commune` VALUES ('12101', '12', 'Punta Arenas', '-53.16258', '-70.9081', '12205', null, '121');
INSERT INTO `commune` VALUES ('12102', '12', 'Laguna Blanca', '-52.33617', '-71.23744', '12206', null, '121');
INSERT INTO `commune` VALUES ('12103', '12', 'Rio Verde', '-52.62507', '-71.45861', '12202', null, '121');
INSERT INTO `commune` VALUES ('12104', '12', 'San Gregorio', '-52.46547', '-69.91806', '12204', null, '121');
INSERT INTO `commune` VALUES ('12201', '12', 'Cabo de Hornos', '-54.8934', '-67.59211', '12401', null, '122');
INSERT INTO `commune` VALUES ('12202', '12', 'Antartica', '-53.26763', '-70.35163', '0', null, '122');
INSERT INTO `commune` VALUES ('12301', '12', 'Porvenir', '-53.26763', '-70.35163', '12301', null, '123');
INSERT INTO `commune` VALUES ('12302', '12', 'Primavera', '-52.80058', '-69.42884', '12302', null, '123');
INSERT INTO `commune` VALUES ('12303', '12', 'Timaukel', '-54.16', '-69.52991', '12304', null, '123');
INSERT INTO `commune` VALUES ('12401', '12', 'Natales', '-51.7307', '-72.4936', '12101', null, '124');
INSERT INTO `commune` VALUES ('12402', '12', 'Torres del Paine', '-51.07465', '-72.98753', '12103', null, '124');
INSERT INTO `commune` VALUES ('13101', '13', 'Santiago Centro', '-33.43788', '-70.65053', '13101', null, '131');
INSERT INTO `commune` VALUES ('13102', '13', 'Cerrillos', '-33.50547', '-70.72942', '14166', null, '131');
INSERT INTO `commune` VALUES ('13103', '13', 'Cerro Navia', '-33.43168', '-70.73047', '14156', null, '131');
INSERT INTO `commune` VALUES ('13104', '13', 'Conchali', '-33.3936', '-70.67289', '14127', null, '131');
INSERT INTO `commune` VALUES ('13105', '13', 'El Bosque', '-33.55521', '-70.66869', '16165', null, '131');
INSERT INTO `commune` VALUES ('13106', '13', 'Estacion Central', '-33.45659', '-70.70096', '14157', null, '131');
INSERT INTO `commune` VALUES ('13107', '13', 'Huechuraba', '-33.3915', '-70.61891', '14158', null, '131');
INSERT INTO `commune` VALUES ('13108', '13', 'Independencia', '-33.40691', '-70.66084', '13167', null, '131');
INSERT INTO `commune` VALUES ('13109', '13', 'La Cisterna', '-33.52625', '-70.66146', '16110', null, '131');
INSERT INTO `commune` VALUES ('13110', '13', 'La Florida', '-33.52272', '-70.59844', '15128', null, '131');
INSERT INTO `commune` VALUES ('13111', '13', 'La Granja', '-33.54589', '-70.63045', '16131', null, '131');
INSERT INTO `commune` VALUES ('13112', '13', 'La Pintana', '-33.58132', '-70.62915', '16154', null, '131');
INSERT INTO `commune` VALUES ('13113', '13', 'La Reina', '-33.44667', '-70.5461', '15132', null, '131');
INSERT INTO `commune` VALUES ('13114', '13', 'Las Condes', '-33.41566', '-70.59359', '15108', null, '131');
INSERT INTO `commune` VALUES ('13115', '13', 'Lo Barnechea', '-33.3609', '-70.50941', '15161', null, '131');
INSERT INTO `commune` VALUES ('13116', '13', 'Lo Espejo', '-33.52046', '-70.68967', '16164', null, '131');
INSERT INTO `commune` VALUES ('13117', '13', 'Lo Prado', '-33.44448', '-70.72033', '14155', null, '131');
INSERT INTO `commune` VALUES ('13118', '13', 'Macul', '-33.48533', '-70.5993', '15151', null, '131');
INSERT INTO `commune` VALUES ('13119', '13', 'Maipu', '-33.50979', '-70.75642', '14109', null, '131');
INSERT INTO `commune` VALUES ('13120', '13', 'Ñuñoa', '-33.4552', '-70.59374', '15105', null, '131');
INSERT INTO `commune` VALUES ('13121', '13', 'Pedro Aguirre Cerda', '-33.4913', '-70.67539', '16162', null, '131');
INSERT INTO `commune` VALUES ('13122', '13', 'Peñalolen', '-33.47938', '-70.5449', '15152', null, '131');
INSERT INTO `commune` VALUES ('13123', '13', 'Providencia', '-33.42778', '-70.61723', '15103', null, '131');
INSERT INTO `commune` VALUES ('13124', '13', 'Pudahuel', '-33.44561', '-70.75293', '14111', null, '131');
INSERT INTO `commune` VALUES ('13125', '13', 'Quilicura', '-33.36711', '-70.74246', '14114', null, '131');
INSERT INTO `commune` VALUES ('13126', '13', 'Quinta Normal', '-33.42189', '-70.69447', '14107', null, '131');
INSERT INTO `commune` VALUES ('13127', '13', 'Recoleta', '-33.42511', '-70.64532', '13159', null, '131');
INSERT INTO `commune` VALUES ('13128', '13', 'Renca', '-33.40474', '-70.70462', '14113', null, '131');
INSERT INTO `commune` VALUES ('13129', '13', 'San Joaquin', '-33.49603', '-70.6284', '16163', null, '131');
INSERT INTO `commune` VALUES ('13130', '13', 'San Miguel', '-33.48611', '-70.65026', '16106', null, '131');
INSERT INTO `commune` VALUES ('13131', '13', 'San Ramon', '-33.54148', '-70.6424', '16153', null, '131');
INSERT INTO `commune` VALUES ('13132', '13', 'Vitacura', '-33.40187', '-70.5962', '15160', null, '131');
INSERT INTO `commune` VALUES ('13201', '13', 'Puente Alto', '-33.60947', '-70.57537', '16301', null, '132');
INSERT INTO `commune` VALUES ('13202', '13', 'Pirque', '-33.63546', '-70.5727', '16302', null, '132');
INSERT INTO `commune` VALUES ('13203', '13', 'San Jose de Maipo', '-33.63503', '-70.35049', '16303', null, '132');
INSERT INTO `commune` VALUES ('13301', '13', 'Colina', '-33.19317', '-70.67089', '14201', null, '133');
INSERT INTO `commune` VALUES ('13302', '13', 'Lampa', '-33.23138', '-70.80988', '14202', null, '133');
INSERT INTO `commune` VALUES ('13303', '13', 'Tiltil', '-33.13606', '-70.80177', '14203', null, '133');
INSERT INTO `commune` VALUES ('13401', '13', 'San Bernardo', '-33.59234', '-70.70449', '16401', null, '134');
INSERT INTO `commune` VALUES ('13402', '13', 'Buin', '-33.72827', '-70.7405', '16403', null, '134');
INSERT INTO `commune` VALUES ('13403', '13', 'Calera de Tango', '-33.63318', '-70.76005', '16402', null, '134');
INSERT INTO `commune` VALUES ('13404', '13', 'Paine', '-33.80128', '-70.73753', '16404', null, '134');
INSERT INTO `commune` VALUES ('13501', '13', 'Melipilla', '-33.68631', '-71.21716', '14601', null, '135');
INSERT INTO `commune` VALUES ('13502', '13', 'Alhue', '-34.02797', '-71.09962', '14605', null, '135');
INSERT INTO `commune` VALUES ('13503', '13', 'Curacavi', '-33.40582', '-71.13014', '14603', null, '135');
INSERT INTO `commune` VALUES ('13504', '13', 'Maria Pinto', '-33.49371', '-71.2081', '14602', null, '135');
INSERT INTO `commune` VALUES ('13505', '13', 'San Pedro', '-33.8844', '-71.46319', '14604', null, '135');
INSERT INTO `commune` VALUES ('13601', '13', 'Talagante', '-33.66453', '-70.93028', '14501', null, '136');
INSERT INTO `commune` VALUES ('13602', '13', 'El Monte', '-33.67877', '-70.98703', '14503', null, '136');
INSERT INTO `commune` VALUES ('13603', '13', 'Isla de Maipo', '-33.74612', '-70.89955', '14502', null, '136');
INSERT INTO `commune` VALUES ('13604', '13', 'Padre Hurtado', '-33.56879', '-70.80618', '14505', null, '136');
INSERT INTO `commune` VALUES ('13605', '13', 'Penaflor', '-33.60376', '-70.87528', '14504', null, '136');
INSERT INTO `commune` VALUES ('14101', '14', 'Valdivia', '-39.81416', '-73.24589', '10101', null, '141');
INSERT INTO `commune` VALUES ('14102', '14', 'Corral', '-39.89298', '-73.41877', '10106', null, '141');
INSERT INTO `commune` VALUES ('14103', '14', 'Lanco', '-39.4501', '-72.77711', '10103', null, '141');
INSERT INTO `commune` VALUES ('14104', '14', 'Los Lagos', '-39.85891', '-72.81545', '10104', null, '141');
INSERT INTO `commune` VALUES ('14105', '14', 'Mafil', '-39.65993', '-72.94305', '10107', null, '141');
INSERT INTO `commune` VALUES ('14106', '14', 'Mariquina', '-39.53575', '-72.96317', '10102', null, '141');
INSERT INTO `commune` VALUES ('14107', '14', 'Paillaco', '-40.05969', '-72.86628', '10110', null, '141');
INSERT INTO `commune` VALUES ('14108', '14', 'Panguipulli', '-39.64111', '-72.33483', '10108', null, '141');
INSERT INTO `commune` VALUES ('14201', '14', 'La Union', '-40.28799', '-73.07964', '10109', null, '142');
INSERT INTO `commune` VALUES ('14202', '14', 'Futrono', '-40.13173', '-72.38135', '10105', null, '142');
INSERT INTO `commune` VALUES ('14203', '14', 'Lago Ranco', '-40.32095', '-72.48251', '10112', null, '142');
INSERT INTO `commune` VALUES ('14204', '14', 'Rio Bueno', '-40.33047', '-72.95565', '10111', null, '142');
INSERT INTO `commune` VALUES ('15101', '15', 'Arica', '-18.47512', '-70.31598', '1101', null, '151');
INSERT INTO `commune` VALUES ('15102', '15', 'Camarones', '-19.1973', '-70.26046', '1106', null, '151');
INSERT INTO `commune` VALUES ('15201', '15', 'Putre', '-18.19394', '-69.55622', '1301', null, '152');
INSERT INTO `commune` VALUES ('15202', '15', 'General Lagos', '-17.76843', '-69.71191', '1302', null, '152');
INSERT INTO `commune` VALUES ('16101', '16', 'Chillan', '-36.60666', '-72.10326', '8101', null, '161');
INSERT INTO `commune` VALUES ('16102', '16', 'Bulnes', '-36.7388', '-72.29721', '8113', null, '161');
INSERT INTO `commune` VALUES ('16103', '16', 'Chillan Viejo', '-36.62297', '-72.13174', '8121', null, '161');
INSERT INTO `commune` VALUES ('16104', '16', 'El Carmen', '-36.89493', '-72.02417', '8118', null, '161');
INSERT INTO `commune` VALUES ('16105', '16', 'Pemuco', '-36.97349', '-72.09197', '8117', null, '161');
INSERT INTO `commune` VALUES ('16106', '16', 'Pinto', '-36.70184', '-71.88839', '8102', null, '161');
INSERT INTO `commune` VALUES ('16107', '16', 'Quillon', '-36.73637', '-72.46089', '8115', null, '161');
INSERT INTO `commune` VALUES ('16108', '16', 'San Ignacio', '-36.79721', '-72.03297', '8114', null, '161');
INSERT INTO `commune` VALUES ('16109', '16', 'Yungay', '-37.1153', '-72.01595', '8116', null, '161');
INSERT INTO `commune` VALUES ('16201', '16', 'Quirihue', '-36.27555', '-72.53927', '8104', null, '162');
INSERT INTO `commune` VALUES ('16202', '16', 'Cobquecura', '-36.12684', '-72.79354', '8107', null, '162');
INSERT INTO `commune` VALUES ('16203', '16', 'Coelemu', '-36.48122', '-72.70259', '8120', null, '162');
INSERT INTO `commune` VALUES ('16204', '16', 'Ninhue', '-36.39151', '-72.39575', '8105', null, '162');
INSERT INTO `commune` VALUES ('16205', '16', 'Portezuelo', '-36.52553', '-72.42894', '8106', null, '162');
INSERT INTO `commune` VALUES ('16206', '16', 'Ranquil', '-36.62122', '-72.60264', '8119', null, '162');
INSERT INTO `commune` VALUES ('16207', '16', 'Treguaco', '-36.4232', '-72.66508', '8108', null, '162');
INSERT INTO `commune` VALUES ('16301', '16', 'San Carlos', '-36.42496', '-71.95689', '8109', null, '163');
INSERT INTO `commune` VALUES ('16302', '16', 'Coihueco', '-36.62259', '-71.83136', '8103', null, '163');
INSERT INTO `commune` VALUES ('16303', '16', 'Niquen', '-36.29757', '-71.89534', '8110', null, '163');
INSERT INTO `commune` VALUES ('16304', '16', 'San Fabian de Alico', '-36.57066', '-71.29414', '8111', null, '163');
INSERT INTO `commune` VALUES ('16305', '16', 'San Nicolas', '-36.50029', '-72.20242', '8112', null, '163');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4ADAD40B98260155` (`region_id`),
  CONSTRAINT `FK_4ADAD40B98260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('11', '1', 'Iquique', null);
INSERT INTO `province` VALUES ('14', '1', 'Tamarugal', null);
INSERT INTO `province` VALUES ('21', '2', 'Antofagasta', null);
INSERT INTO `province` VALUES ('22', '2', 'El Loa', null);
INSERT INTO `province` VALUES ('23', '2', 'Tocopilla', null);
INSERT INTO `province` VALUES ('31', '3', 'Copiapó', null);
INSERT INTO `province` VALUES ('32', '3', 'Chañaral', null);
INSERT INTO `province` VALUES ('33', '3', 'Huasco', null);
INSERT INTO `province` VALUES ('41', '4', 'Elqui', null);
INSERT INTO `province` VALUES ('42', '4', 'Choapa', null);
INSERT INTO `province` VALUES ('43', '4', 'Limarí', null);
INSERT INTO `province` VALUES ('51', '5', 'Valparaíso', null);
INSERT INTO `province` VALUES ('52', '5', 'Isla de Pascua', null);
INSERT INTO `province` VALUES ('53', '5', 'Los Andes', null);
INSERT INTO `province` VALUES ('54', '5', 'Petorca', null);
INSERT INTO `province` VALUES ('55', '5', 'Quillota', null);
INSERT INTO `province` VALUES ('56', '5', 'San Antonio', null);
INSERT INTO `province` VALUES ('57', '5', 'San Felipe de Aconcagua', null);
INSERT INTO `province` VALUES ('58', '5', 'Marga Marga', null);
INSERT INTO `province` VALUES ('61', '6', 'Cachapoal', null);
INSERT INTO `province` VALUES ('62', '6', 'Cardenal Caro', null);
INSERT INTO `province` VALUES ('63', '6', 'Colchagua', null);
INSERT INTO `province` VALUES ('71', '7', 'Talca', null);
INSERT INTO `province` VALUES ('72', '7', 'Cauquenes', null);
INSERT INTO `province` VALUES ('73', '7', 'Curicó', null);
INSERT INTO `province` VALUES ('74', '7', 'Linares', null);
INSERT INTO `province` VALUES ('81', '8', 'Concepción', null);
INSERT INTO `province` VALUES ('82', '8', 'Arauco', null);
INSERT INTO `province` VALUES ('83', '8', 'Biobío', null);
INSERT INTO `province` VALUES ('84', '8', 'Ñuble', null);
INSERT INTO `province` VALUES ('91', '9', 'Cautín', null);
INSERT INTO `province` VALUES ('92', '9', 'Malleco', null);
INSERT INTO `province` VALUES ('101', '10', 'Llanquihue', null);
INSERT INTO `province` VALUES ('102', '10', 'Chiloé', null);
INSERT INTO `province` VALUES ('103', '10', 'Osorno', null);
INSERT INTO `province` VALUES ('104', '10', 'Palena', null);
INSERT INTO `province` VALUES ('111', '11', 'Coyhaique', null);
INSERT INTO `province` VALUES ('112', '11', 'Aysén', null);
INSERT INTO `province` VALUES ('113', '11', 'Capitán Prat', null);
INSERT INTO `province` VALUES ('114', '11', 'General Carrera', null);
INSERT INTO `province` VALUES ('121', '12', 'Magallanes', null);
INSERT INTO `province` VALUES ('122', '12', 'Antártica Chilena', null);
INSERT INTO `province` VALUES ('123', '12', 'Tierra del Fuego', null);
INSERT INTO `province` VALUES ('124', '12', 'Última Esperanza', null);
INSERT INTO `province` VALUES ('131', '13', 'Santiago de Chile', null);
INSERT INTO `province` VALUES ('132', '13', 'Cordillera', null);
INSERT INTO `province` VALUES ('133', '13', 'Chacabuco', null);
INSERT INTO `province` VALUES ('134', '13', 'Maipo', null);
INSERT INTO `province` VALUES ('135', '13', 'Melipilla', null);
INSERT INTO `province` VALUES ('136', '13', 'Talagante', null);
INSERT INTO `province` VALUES ('141', '14', 'Valdivia', null);
INSERT INTO `province` VALUES ('142', '14', 'Ranco', null);
INSERT INTO `province` VALUES ('151', '15', 'Arica', null);
INSERT INTO `province` VALUES ('152', '15', 'Parinacota', null);
INSERT INTO `province` VALUES ('161', '16', 'Diguillín', null);
INSERT INTO `province` VALUES ('162', '16', 'Itata', null);
INSERT INTO `province` VALUES ('163', '16', 'Punilla', null);

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', 'Tarapacá', null);
INSERT INTO `region` VALUES ('2', 'Antofagasta', null);
INSERT INTO `region` VALUES ('3', 'Atacama', null);
INSERT INTO `region` VALUES ('4', 'Coquimbo', null);
INSERT INTO `region` VALUES ('5', 'Valparaíso', null);
INSERT INTO `region` VALUES ('6', 'Libertador Gral. Bernardo O’Higgins', null);
INSERT INTO `region` VALUES ('7', 'Maule', null);
INSERT INTO `region` VALUES ('8', 'Bío-Bío', null);
INSERT INTO `region` VALUES ('9', 'La Araucanía', null);
INSERT INTO `region` VALUES ('10', 'Los Lagos', null);
INSERT INTO `region` VALUES ('11', 'Aysén del Gral. Carlos Ibáñez del Campo', null);
INSERT INTO `region` VALUES ('12', 'Magallanes y La Antártica Chilena', null);
INSERT INTO `region` VALUES ('13', 'Metropolitana de Santiago', null);
INSERT INTO `region` VALUES ('14', 'Los Ríos', null);
INSERT INTO `region` VALUES ('15', 'Arica y Parinacota', null);
INSERT INTO `region` VALUES ('16', 'Ñuble', null);
