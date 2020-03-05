//
//  Text.swift
//  physics
//
//  Created by Артем Климкин on 04/03/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//Practice

import Foundation

enum MechanicsTheory: String{
    case ArchimedeanForce = "Архимедова сила - это сила, выталкивающая тело из жидкости или газа. \n\nЕсли тело погружено в жидкость или газ, то оно теряет в своем весе столько, сколько весит вытесненная им жидкость или газ. \n\nFa = g * Pж * Vт \n\ng - ускорение свободного падения, равное 9,8 H/кг. \nPж -  плотность жидкости. \nVт - объем тела.",
    AirWeight = "При температуре 0 цел. и нормальном атмосферном давлении масса воздуха объемом 1 м3 равна 1,29 кг. \n\nСледовательно, вез воздуха: \nP = g * m = 9,8 H/кг * 1,29 кг \u{2248} 13 H",
    BodyWeight = "Вес тела - это векторная физическая величина и обозначается буквой Р. Вес тела равен силе тяжести Fтяж: \n\nP = Fтяж = gm"
}

enum MechanicsPractice: String{
    case ArchimedeanForcePractice = "1. Мраморный шар объемом 20 см3 уронили в реку. С какой силой он выталкивается из воды? \n\n2. С какой силой выталкивается керосином кусок стекла объемом 10 см3? \n\n3. Каков объем погруженного тела, если оно выталкивается водой с силой в 50 Н? \n\n4. Какой объем воды вытесняет корабль, если на него действует выталкивающая сила 200000 кН? \n\n5. С какой силой человек будет выталкиваться из морской воды, если в пресной воде на него действует выталкивающая сила, равная 686 Н? \n\n6. Определите вес в пресной воде 1 см3 меди. \n\n7. Каков вес железа объемом 1 см3 в чистой воде? \n\n8. Определите, сколько весит в воде стеклянный кубик объемом 1 см3. \n\n9. Пустой металлический шар весом 3 Н в воздухе и объемом 1200 см3 удерживают под водой. Останется ли шар под водой, если его отпустить? Какой величины требуется сила, чтобы удержать его под водой? \n\n10. Кусок гранита объемом 5,5 дм3 и массой 15 кг целиком погружен в пруд. Какую силу необходимо приложить, чтобы держать его в воде? \n\n11. Глыба мрамора объемом 1 м3 лежит на дне реки. Какую силу необходимо приложить, чтобы приподнять ее в воде? Каков ее вес в воздухе? \n\n12. Каков вес в речной воде мраморной плиты, вес который в воздухе 260 Н? \n\n13. Какое натяжение испытывает трос при подъеме со дна озера гранитной плиты объемом 2 м3? \n\n14. Колодезное железное ведро массой 1,56 кг и объемом 12 л опускают в колодец. Какую силу нужно приложить, чтобы поднять полное ведро в воде? Над водой? Трение не учитывать. \n\n15. Какова плотность предмета, если его вес в воздухе 100 Н, а в пресной воде 60 Н? \n\n16. Стеклянная пробка весит в воздухе 0,5 Н, в воде 0,32 Н, в спирте 0,35 Н. Какова плотность стекла. Какова плотность спирта? \n\n17. Вес мраморной фигурки в воздухе 0,686 Н, а в пресной воде 0,372 Н. Определите плотность фигурки. \n\n18. Гирька массой 100 г в пресной воде весит 0,588 Н, а в неизвестной жидкости 0,666 Н. Какова плотность неизвестной жидкости? Что это за жидкость? \n\n19. Стеклянная пластина при погружении в чистую воду стала легче на 49 мН, а при погружении в керосин - на 39 мН. Какова плотность керосина? \n\n20. К куску парафиновой свечки массой 4,9 г привязали металлическую шайбу, которая весит в воде 98 мН. Общий вес полностью погруженной в воду системы 78,4 мН. Найдите плотность парафина.",
    AirWeightPractice = " 1. Вычислите с какой силой давит воздух а поверхность стола, имеющего длину 1 м, а ширину 60 см. \n\n2. Ртутный барометр показывает давление 700 мм рт. ст. С какой силой давит при этом воздух на каждый квадратный сантиметр? \n\n3. С какой силой давит воздух на поверхность крышки ящика площадью 1,5 м2? \n\n4. Плотность воздуха 1,3 кг/м3. Самолет поднялся на высоту 2 км. Как изменилось показание барометра? \n\n5. Как изменяется объем пузырька воздуха, когда этот пузырек поднимается со дна водоема на поверхность? \n\n6. В погруженном в воду водолазном колоколе уровень воды на 1033 см ниже поверхности воды. Найти плотность воздуха в колоколе, если плотность воздуха над поверхностью воды 1,29 кг/м3. \n\n7. В автомобильную шину объемом 0,025 м3 накачали воздух до давления 8 * 10 ^ -5 Па. Найдите плотность воздуха внутри шины, если плотность воздуха при давлении 8 * 10 ^ -3 Па равна 1,29 кг/м3\n\n8. 100 м3 водорода, находящегося при нормальном давлении, нагнетают в стальной баллон объемом 5 м3. Найдите давление в баллоне.",
    BodyWeightPractice = "1. Банка объемом 5 дм3 заполнена водой. Какой вес имеет вода? \n\n2. Под действием груза в 200 Н Пружина динамометра удлинилась на 0,5 см. Каково удлинение пружины под действием груза в 700 Н?"
}

