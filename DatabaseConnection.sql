CREATE DATABASE `class` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `workmode` varchar(10) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `logtype` varchar(20) DEFAULT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 

using a subplot command  plot the function z=e^-0.5 co



plot y=sinhx+& y=0.5e^x
on the same plot for 0<=x<=2
use a solid line type for each gtext command to for sinhx and a text command to label the plot axis appropriately




t = 0:8;
z = (exp(1).^(-0.5*t)) .* cos(20*t -6 );
v = -8:8;
u = 6*log(v.^2 + 20)
plot(t,z);
line(v,u);