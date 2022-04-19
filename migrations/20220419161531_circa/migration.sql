-- CreateTable
CREATE TABLE "LevelItem" (
    "id" SERIAL NOT NULL,
    "parentId" INTEGER,
    "choiceText" TEXT,
    "answerText" TEXT,
    "nextLevelQues" INTEGER,

    CONSTRAINT "LevelItem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Version" (
    "versionNum" INTEGER,
    "id" SERIAL NOT NULL,

    CONSTRAINT "Version_pkey" PRIMARY KEY ("id")
);

INSERT INTO "LevelItem" ("id", "parentId", "choiceText", "answerText", "nextLevelQues")
VALUES  (1, 0, 'Farmer Advice System', '', 0),
        (2, 1, 'Grains', '', 0),
        (3, 2, 'Maize', '', 0),
        (4, 3, 'Land preparation', '', 1),
        (5, 3, 'Varieties', '', 1),
        (6, 3, 'Sowing / planting', '', 1),
        (7, 6, 'How many times a year can I grow maize on the same piece of land?', 'You can conveniently grow and harvest a maize crop three times a year with good irrigation.', 1),
        (8, 6, 'What is the best time to sow my maize if I am cultivating for grains?', 'Second week of June', 1),
        (9, 6, 'What is the best depth for sowing maize?', 'Sow maize 3 to 5 cm deep.', 1),
        (10, 6, 'What variety of maize should I sow to get the best yield?', 'Summaz 14,32 and other Summaz varieties.', 1),
        (11, 6, 'What is the best spacing to get a high yield when using high yielding maize varieties as recommended?', '2 seeds at 40cm x 60cm (intra x inter).', 1),
        (12, 3, 'Fertilizer application', '', 1),
        (13, 12, 'What fertilizer type would be best for my maize and at what rate do I apply it?', 'Basic application of NPK 15:15:15 at 300kg per hectare.', 1),
        (14, 12, 'When and how do I top dress with Urea?', '2 to 3 weeks after crop emergence (first dose), subsequently apply at an interval of 10 days', 1),
        (15, 3, 'Weeding', '', 1),
        (16, 15, 'I have serious problems with weeds on my maize farm. How do I reduce the weed problem?', 'Spray the farm with any good systemic herbicide before tillage. Make sure the soil is properly tilled to destroy weed and expose their roots.  Ploughing during the dry season might also reduce the weeds significantly.', 1),
        (17, 3, 'Field pests and diseases', '', 1),
        (18, 17, 'How do I avoid army worms on my farm?', 'Spray Dimethoate round the farm to prevent worms from creeping into your farm.', 1),
        (19, 17, 'I experienced wilting of the maize leaves on my maize farm last season. How do I prevent that disease or control it?', 'Use resistant varieties (hybrids). Spray foliar fungicides against blight e.g Dithane M 45.  Sow early to prevent leaf blight fungus.', 1),
        (20, 17, 'Termites are endemic in my area. How do I prevent their attack on my maize farm?', 'Dig out all termites hills around your farm, and apply Chloprifos to destroy the termites.', 1),
        (21, 17, 'What is the preventative treatment against stalk borers', 'Apply Endosulfan 2litres per hectare 10 days after germination.', 1),
        (22, 17, 'What is the curative treatment against stalk borers', 'Spray Chlorpain at 2.5 litres per hectare as soon as the problem becomes apparent.', 1),
        (23, 17, 'The internodes at the base of my maize stems become soft. What causes it and how can I control it?', 'It is caused by bacteria stalk rot. Use bleaching powder along rows at 20-25kg/ha for treatment.', 1),
        (24, 17, 'Some pest is eating up my maize leaves, leaving the stem and ribs. What is it and how do I control it?', 'They are army worms or grasshoppers. Spray 2% methyl parathion at 2kg/ha for eggs. For nymphs and adult spray 0.04% carboxyl at 500-800 (diluted) litres/hectare.', 1),
        (25, 17, 'What pre-emergence herbicide is best for my maize farm and what is the rate of application?', 'Attraxin – 5 litre per archter or 5 kg /ha; Paraquate – 2l/ha; Spray before crop emergence.', 1),
        (26, 17, 'I observed stunted growth of my maize at the later stage of development with the leaves turning yellow and drying of the whole plant in some cases.', 'Possibly caused by infestation of farm by striga. It can be solved by crop rotation that is planting some other variety of crop (like legumes) for some time and then rotating with cereals.', 1),
        (27, 17, 'I sometimes notice whitish/yellowish powdery substance accompanied on my maize plants which leads to leaf damage which can eventually lead to the breakage of stem.', 'This this can be caused by Chilo spp. also called stem borers. They can be controlled either using insecticides or planting resistant varieties.', 1),
        (28, 17, 'My maize is not doing well, even with adequate fertilizer. In some cases the plants appear as if no ferlizer was applied at all.', 'This can be caused by bad soil (acidic/Sodic soil). You would need a soil test. It is also possible that the fertilizer is being leached (washed away) by rains. Try Liming the soil and also apply fertilizers before the rains become intense.', 1),
        (29, 17, 'The stalk of my maize breaks before and sometimes during the harvest. Affected plants show wilted appearance followed by brownish discoloration.', 'It can be caused by Diplodia Stalk rot. Use resistant hybrid varieties and also practice crop rotation.', 1),
        (30, 17, 'I observed that my maize cobs rot, especially when rainfall is high and intensive. Ear completely rotted. The kernels appear greyish-brown, usually with black fungus bodies on the grain husk, or cobs. Such infected cobs show white mould.', 'It can be caused by Diplodia Stalk rot. Use resistant hybrid varieties and also practice crop rotation.', 1),
        (31, 17, 'I sometimes observe rot  of stalk confined to the crown and lower internodes. The decayed pith is reddened and the stalk often breaks as the plant mature.', ' It is possibly caused by Gibberela Stalk rot. Use resistant hybrid varieties and also practice crop rotation. ', 1),
        (32, 17, 'I planted Maize but much of the seeds did not germinate and those that germinated are stunted. What could have caused this?', 'This could have been caused by Embryo rot which prevents germination or it can also be as a result of the rot of the secondary rootlets which stunts the seedling. Use resistant varieties and also practice crop rotation.', 1),
        (33, 17, 'Ear rot, characterized by infection of the husk and kernel, which is covered with pink mycelial growth which later becomes dull gray.', 'This might be Rhizoctonia rot. There is no known control for this problem. Allow the farm to fallow.', 1),
        (34, 17, 'I observed light green or yellow lines appearing on the leaves of my maize plants, which later turn brown, die and dry out. Infected plants eventually die or refuse to grow.', 'This condition might be caused by bacterial wilt. Grow resistant varieties. Sweet corn is not very resistant to this condition. ', 1),
        (35, 17, 'During warm weather, followed by heavy rainfall and dew, I observe that grayish green spots appear as dark grayish tan. The spots become larger and may range up to 15 – 20 cm', 'This can be caused by Helminthosporium Leaf disease. It can be controlled using a chemical known as Dithane M 45 at silking stage, at least 6 times at weekly intervals', 1),
        (36, 17, 'I sometimes observe small galls appearing on leaves, tassels, ears or stalks of maize and they range in size from 2 cm or more in diameter.', 'This might be Common Smut. It can be controlled using smut resistant varieties and crop rotation. Also destroy the small galls and increase plant population. ', 1),
        (37, 17, 'Tassels and ears completely or partially covered into small galls.', 'This could be Head smut. This can be controlled by treating seed with Fungicides such as Apron Star or Aldrex T. You can also carry out crop rotation. ', 1),
        (38, 17, 'Small yellowish or brownish worms about 1 inch long. Adult chick beetles are brown, sometimes black. The worms generally feed on the seeds or roots of emerging plants.', 'Those could be Wire worms. They are controlled using crop rotation. The farm should also be properly drained. Ensure that there is clean cultivation, summer ploughing and treat with Lindane dust (25 percent wp) or Aldrin/', 1),
        (39, 17, 'Dark brown or black larvae with light brown to pink body which often tunnels with the stalk, ears, tassel, leaf midrib as well as brace roots, causing extensive stalk breakage and ear dropping.', 'Those might be stalk borers. They can be controlled through early land preparation, farm sanitation, spraying with Endosulfan at 2l/hectre 10 days after crop emergence.', 1),
        (40, 17, 'Reddish brown beetles, about 2 mm long, with four or more reddish or yellowish spots. The larvae which feeds on the grains are white legless grubs.', 'These might be Maize weevils. They can be controlled by storing grains in tight containers. All carry over grains from the previous harvest should be disposed of. Fumigate your store regularly with a mixture of Carbon tetrachloride and Carbon disulfide at the ration of 4:1 at the rate of 1 litre per ton.', 1),
        (41, 3, 'Harvesting', '', 1),
        (42, 41, 'When do I harvest my maize and how?', 'Harvest when moisture content is between 17-19%. Cut the stalk and allow the cob on it to cure for 72 hours before removal.', 1),
        (43, 3, 'After-harvest management', '', 1),
        (44, 3, 'Processing / storage', '', 1),
        (45, 44, 'How do I store maize?', 'Add 1 part ash / chili mixture to 4 parts dried maize grain. The method keeps away the Larger Grain Borer (LGB). Common red soil can be used to protect the maize from weevils - crush the soil into fine powder, and dust in the stored maize and beans.', 1),
        (46, 44, 'After fumigating or treating my stored maize against pests, how long will it take before I can use it, or what else do I need to do?', 'Safety period after fumigation is 60 days.', 1),
        (47, 44, 'At what moisture content do I store maize?', 'Ideal storage is at 13% or below - you can tell by the cracking or rattling noise.', 1),
        (48, 3, 'Marketing', '', 1),
        (49, 2, 'Rice', '', 0),
        (50, 49, 'Land preparation', '', 1),
        (51, 49, 'Varieties', '', 1),
        (52, 49, 'Sowing / planting', '', 1),
        (53, 52, 'What other options do I have for planting rice apart from using a nursery?', 'You can use Dibbling (using a dibber i.e a small pointed stick); Broadcasting or drilling rows 30 cm apart.
', 0),
        (54, 52, 'When is best for me to transplant rice from the nursery to the field?', 'You can transplant after 21 days.
', 0),
        (55, 49, 'Fertilizer application', '', 1),
        (56, 55, 'What type of fertilizer is recommended for rice production and the rate of application ?', 'Compound fertilizer such as NPK is ideal in Northern Nigeria. It should be applied at planting and later supplemented by urea at 8 weeks after sowing. Rate of application in rice is 300-400kg/ha.
Remarks: rice is a cereal crop and their fertiliser requirement are similar to other cereal crops. Fertiliser in rice production will depend on the fertility of the soil as at the time of production. Since the economic part of the rice is the grain, compound fertilizers with nitrogen are more ideal.', 1),
        (57, 55, 'Which fertilizer is best?', 'Apply 200 kg/ha (4 bags) of NPK 15:15:15 prior to transplanting. Then after transplanting, apply another 100kg (2 bags) of Urea per hectare broadcast at 30 days. Avoid the use of acidic fertilizers like Phosphate of Ammonia, especially for acidic soils.
', 0),
        (58, 49, 'Weeding', '', 1),
        (59, 58, 'I have serious problems with weeds on my maize farm. How do I reduce the weed problem?', 'Spray the farm with any good systemic herbicide before tillage. Make sure the soil is properly tilled to destroy weed and expose their roots.  Ploughing during the dry season might also reduce the weeds significantly.
', 0),
        (60, 58, 'How often and how many times should I weed?', 'Weed the farm after 3 weeks of planting; followed by another weeding after 6 to 7 weeks. If the weed situation is serious, you may need to weed a third time.
', 0),
        (61, 49, 'Field pests and diseases', '', 1),
        (62, 61, 'During moist warm weather, the seedlings become discolored.; apparently seedlings produce abundant growth of white substances over the soil surface as well as lower part of the seedling.', 'This might be seedling blight. Treat with Avasan SEX, Ceresan M, Spergon XL. It is a preventable condition. ', 1),
        (63, 61, 'Brownish discoloration appearing on the shealth between the germinated seed and the soil surface or on the roots, which will lead to subsequent death of affected seedlings.', ' This might be brown leaf spot. You can treat with perennial disinfectant and use resistant varieties.', 1),
        (64, 61, 'Narrow reddish to brown linear spots on the leaves.', 'This might be Narrow brown leaf spot. Try to plant early and plant resistant varieties.', 1),
        (65, 61, 'Long leaf spots which tend to be long and narrow on young leaves but more or less circular in outline on old leaves. The spots become brown with age and in severe cases the leaves die.', ' This is rice blast. Avoid excessive use of Nitrogen fertilizers on infected land. Use resistant varieties. Treat infected farm with organic mecury fungicides.', 1),
        (66, 61, 'Close to maturity but before flowering, small black discolored areas appear on leaf sheaths above water line. As the spots enlarge, linear sheaths are discolored. Dark masses of fungus threads develop on the stem followed by brown to black streaks', 'This might be stem rot. It can be controlled by draining the infected fields, removing infected plants and spraying with Bondeaux mixture.', 1),
        (67, 61, 'Vigorously growing and greenish plant that fail to set seeds. The head remains erect instead of bending over as should be the case when filled with grains.', 'This is called Straight head physiological disorder. Use resistant variety and drain out fields likely to have the diseases shortly before planting begins.', 1),
        (68, 61, 'Straw colored, shield shaped insect which sucks the content of the kernel during the milking stage. This insect causes serious losses that can result in zero harvest.', 'It is called Rice stink bug. It can be controlled by spraying with kerosene.', 1),
        (69, 61, 'I observed that the rice variety I planted did not mature uniformly, what is the possible cause?', 'Use improved certified seeds from a credible source. Also have the soil tested at various points on the farm. Adjust the contour of the land if you notice variations in soil moisture content.
Remarks: 
varieties used as seed not true to type (admixture) and the seed used were not fully matured as at the time of harvest. It could also be due to the non-uniformity in soil moisture and fertility gradient of the farm.', 1),
        (70, 49, 'Harvesting', '', 1),
        (71, 49, 'After-harvest management', '', 1),
        (72, 71, 'I am not happy with the yield of my rice (between 2.5 - 4.5 ton/ha of paddy) when elsewhere yields as high as 12ton/ha of paddy are obtained. How can I raise my yield?', 'Provision of improved varieties, consult your extension worker for correct agronomic practices.
Remarks: possible causes of the low yielding are use of degenerate seed, suboptimal utilization of inputs, weeds, pests and diseases incidences. Wrong timing of planting.', 1),
        (73, 71, 'Rice production to me as a farmer is tedious, laborious and full of drudgery right from land preparation to processing, what can be done to minimize this stress associated with rice production?', 'Work with other farmers to form a cooperative to enable you acquire some farm implements to reduce some of the stressful activities.
Remarks: the farmers involved in rice production are aging and weak. The use of crude implements and lack of mechanization of operations right from land preparations unto processing etc.', 1),
        (74, 71, 'My land holding is small and cannot expand my rice production. What is your suggestion?', 'Farmers whose farms are adjacent to each other and close should be encouraged to merge such farms after the size of each is determined and recorded. This now can give room for field mechanization and the proceeds shared based on a ration as each size of land contributed. Better still, small motorized implements should be provided in the case of small land holdings.
Remarks: system of land holding among the farmers in the study area does not encourage large scale production due to land fragmentation. Most farmers land holdings range from 0.1-1.5ha. This has seriously affected mechanization in the field.', 1),
        (75, 71, 'I am becoming discouraged from rice production due to low patronage and low prices compared to imported foreign rice. How can I address this issue?', 'Adopt cleaner processing techniques. Contact your extension agent for available options.
Remarks: poor processing quality on the part of the farmers where there are a lot of impurities such as stones, fecal material, dust, broken grains chaff  and the non-coating of grains etc. lack of standard packing and labeling', 1),
        (76, 71, 'My major worry in the production of rice is the issue of unstable weather conditions e.g. abrupt termination of rain fall before maturity of the rice. What is the way out if this predicament when if happens?', 'It is adviced that the farmer should plant varieties suitable to the prevailing weather in their location eg drought tolerant or early maturing varieties etc. another solution is to get to the field early enough to maximize the conditions for optimum yield.
Remarks: unstable weather conditions are affecting crop production generally and not peculiar to rice production. In a situation like this, it affects rice as it leads to seed abortion or grains not properly formed or not forming at all.', 1),
        (77, 71, 'Weeding has been a serious challenge to me in rice production. Are there recommended herbicides in the production of rice?', 'Before land preparations (ploughing and harrowing) it is adviced that glyphosate be applied prior to land preparations. After the land has been prepared and rice broadcasted and covered, you can use either the herbicide propanil, 2,4-D  or ‘Orizo’ plus. Herbicides should be applied at their recommended rates.', 1),
        (78, 49, 'Processing / storage', '', 1),
        (79, 49, 'Marketing', '', 1),
        (80, 1, 'Tubers', '', 0),
        (81, 80, 'Cassava', '', 0),
        (82, 81, 'Land preparation', '', 1),
        (83, 81, 'Varieties', '', 1),
        (84, 81, 'Sowing / planting', '', 1),
        (85, 84, 'How do I plant cassava?', 'Plant stem cuttings', 1),
        (86, 81, 'Fertilizer application', '', 1),
        (87, 86, 'What fertilizer can I use to improve yield on my Cassava farm?', 'Cassava produces on a wide variety of soils. Fertilizer use can however improve yield. NPK 15:15:15 has been found to be good. Discuss the rate of application with your extension agent.
', 0),
        (88, 81, 'Weeding', '', 1),
        (89, 88, 'How do I reduce the problem of weeds on my farm?', 'Apply any Glyphosate herbicide to destroy weeds on the farm before tilling the land. Apply Diuron + Paraquat after emergence of the crop. Contact your Extension worker for rates of application and other precautions.
', 0),
        (90, 81, 'Field pests and diseases', '', 1),
        (91, 90, 'Cassava plants are discoloured with coiled. Some plants are wilting and drying up from the top', 'Likely to be Cassava blight. Uproot and destroy affected plants and maintain farm sanitation.  You can control this disease by planting resistant varieties.
', 0),
        (92, 81, 'Harvesting', '', 1),
        (93, 92, 'My cassava is ready for harvesting but I am not prepared to process it. How much longer can it stay on the farm without much loss?', 'There is nothing to worry about as Cassava can stay much longer on the farm without any problems.
', 0),
        (94, 81, 'After-harvest management', '', 1),
        (95, 94, 'How do I ensure that my harvested cassava retain it quality before processing?', 'Make sure tubers are carefully removed from the soil, without any damages. Also, avoid any scratches or damages to the harvested tubers.
', 0),
        (96, 81, 'Processing / storage', '', 1),
        (97, 96, 'How do I store my harvested cassava without it losing quality?', 'It does not retain its quality for long. It is recommended that you process within 24 hours of harvest.
', 0),
        (98, 96, 'Can I attempt storing for a few days?', 'Yes, you can re-bury the tubers in trenches covered with plant material and soil.
', 0),
        (99, 81, 'Marketing', '', 1),
        (100, 99, 'There is too much Cassava in the market and prices are low. What do I do?', 'Do not be in a hurry to harvest your crop. It can stay much longer in the ground without any lose. Note however that too much delay can make the tubers fibrous and affect their quality.', 0),
        (101, 80, 'Irish Potato', '', 0),
        (102, 101, 'Land preparation', '', 1),
        (103, 102, 'What soil type is most suitable for growing Irish potatoes?', 'Soil suitable for growing potato is fertile sandy loamy, well drained, slightly acidic (pH 5.6) and free from clods.', 1),
        (104, 102, 'What time of the year or season should I start land preparations for Irish Potato production?', 'Land preparation for potato production should start before the onset of rain. Site selection, soil testing and land clearing are among the first steps to be carried out. Ridges or beds should be 30 – 45cm high and space 1m (100cm) apart. Perfect soil tilt condition for rooting and tuberization is necessary. Ideally in this part  of Nigeria (Jos plateau) land preparation starts by March to April of each year.', 1),
        (105, 102, 'What are the various land preparation activities required for Irish potato production?', 'Land preparation activities are; site selection, land clearing, soil testing, plouging harrowing and ridging', 1),
        (106, 102, 'My farm is in a water logged area. Is it a suitable land for Irish Potato production?', 'Water logged lands are not suitable for potato production. It creates an anaerobic condition which is not suitable for potato production. However, it can be improved upon by proper drainage during land preparation, incorporation of calcium based fertilizers, wood ash and organic matter etc.  ', 1),
        (107, 101, 'Varieties', '', 1),
        (108, 107, 'Where can I find improved varieties of Irish Potato?', 'Improved varieties can be gotten from the National Root Crops Research Institute, Umudike, Asia State and designated out growers.', 1),
        (109, 107, 'Suggest some Irish Potato varieties available in Jos Plateau?', 'Nicola, Marabel, Diamant, Rumba, Caruso, Connect, Bertita, Jelly, Nicola (yellow leaf), Queen Anne, Lady Chrstyl and Roslin Rauka etc. You can find out about others from the National Root Crops Research Institute, Umudike, AbIa State.', 1),
        (110, 101, 'Sowing / planting', '', 1),
        (111, 110, 'Is it ok for me to slice Irish potato tubers in order to increase the quantity of my planting material?', 'There is no problem with slicing of potato tubers before planting however, there are certain considerations. You must ensure that the cut surface is well treated or healed before planting. Also ensure that each half has sufficient buds (eye).', 1),
        (112, 110, 'Is there any other way of planting Potato apart from the use of seedlings?', 'From whole tuber, tuber cuttings, stem cuttings, tissue culture, leaf bud cuttings, sprout cuttings and through potato seeds (the botanical seeds obtained from potato berries).Tubers are however the most common planting material.', 1),
        (113, 110, 'What is the suggested planting depth for Irish potato?', 'Planting depth for potato is 8-10cm.', 1),
        (114, 110, 'What is the ideal planting distance for planting Irish Potato?', 'Planting distance also known as spacing  for Irish potato is 30cm inter row and 100cm intra row for ware potato (table size) and 15cm inter row and 75cm intra row for seed (planting material).', 1),
        (115, 110, 'I have some planting materials that have not sprouted. Can I still plant them?', 'It is not recommended to plant unsprouted tubers. Tubers that have not sprouted are a sign that they are still in the dormant stage. It shows that such tubers are physiological too young to reproduce.', 1),
        (116, 110, 'My Irish potato seedlings are showing signs of rotting. Would they still be good for planting?', 'Potato tubers showing signs of rotting should never be used as planting material. This is a clear sign of viral, fungal or bacterial infection. Plants from such seed do not live to reach their maturity.', 1),
        (117, 101, 'Fertilizer application', '', 1),
        (118, 117, 'Do I need to apply fertilizer before planting my potato tubers?', 'Application of fertilizer before planting after land preparation is still okay. However, it is recommended that fertilizer be applied 3 weeks after planting for maximum utilization by the plant.', 1),
        (119, 101, 'Weeding', '', 1),
        (120, 119, 'How many times should I weed my farm before harvest?', 'At planting, it is advisable to apply herbicides (both pre and post emergence). This should be followed by two manual weeding at 6 weeks after planting and earthen up at 8 – 10 weeks after planting depending on the potato variety.', 1),
        (121, 119, 'Are there other ways of controlling weeds on an Irish potatoes farm apart from hoeing?', 'There are herbicides that are selective, these can be used to control weeds in potato fields. Once the canopy is covered, the potato plant suppresses the weeds.', 1),
        (122, 119, 'What chemicals can I use to control weeds on my Irish potato farm?', 'The following herbicides are some of the recommended; pre plant (eg Paraquat, Gramazone, glyphosate and EPTC), pre emergence (eg Primextra, Galex, Atrazine and simazine), post emergence (eg 2, 4-DB and bromoxynil) and selective herbicides (eg 2, 4-D, Galex and Diuron).', 1),
        (123, 101, 'Field pests and diseases', '', 1),
        (124, 101, 'Harvesting', '', 1),
        (125, 124, 'What are the signs that my Irish Potatoes are ready for harvesting?', 'Potato plants that are due for harvest senesced (i.e leaves turn yellow and older leaves begins to fall off). You can also confirm maturity of tubers by applying pressure on tuber skin with your fingers. Matured tubers do not peel off easily.', 1),
        (126, 124, 'What measures do I take if it rains during harvesting to prevent rotting of my Irish potatoes tubers?', 'Programme yourself to avoid rain. This can be achieved by covering harvested tubers with tarpaulin or moving harvested tubers to a shed immediately harvested. In the event that rain still drenched the tubers, allow them to dry and sort before storage.', 1),
        (127, 124, 'Is there any machine for harvesting Irish Potatoes?', 'There are different types of potato harvesters and these are; potato digger plough, potato digger spinner and potato elevator digger. There is also a complete harvester. Garden fork can also be used manually. In this part of the world, the potato plants are pulled and ridges scooped with hands.', 1),
        (128, 101, 'After-harvest management', '', 1),
        (129, 101, 'Processing / storage', '', 1),
        (130, 129, 'What is the best form of storage for Irish Potatoes?', 'Factors governing storage of potato are; purpose of the tubers been stored (consumption, seed or industrial raw material), how long is the storage (duration), outside temperature and RH during storage and volume (quantity) of tubers to be stored etc. for large quantity ware potato (table), a dry well aerated and cool (15 – 20oC) place is recommended devoid of light. For seed potato, dry, an illuminated (light) place, slightly humid with a temperature range of 25-30oC will suffice.', 1),
        (131, 129, 'For how long can Irish Potatoes keep in store?', 'For farmers local storage, tubers can store for 2-3months. Local improved storage systems such as diffused light store (DLS) can keep tubers for 4-6months, while cool storage system can keep the tubers beyond 6 months.', 1),
        (132, 129, 'How do I control rodents attacking my stored Irish potatoes?', 'Rodent control can be achieved by prevention by putting in place a parameter fence of wire mesh around the storage facility, making the environment unfavorable such as places of hide out (shelter), breeding sites and food sources. Rodents can be control by the use of poison and non poison baits (mouse gum). There are wide range of chemicals that can be used.', 1),
        (133, 129, 'Is it safe to apply chemicals to stored Irish Potatoes?', 'It depends on what the tubers are stored for. In the case of seed, use of chemicals is ideal and recommended as there is a wide range of pests attacking potato in storage. For ware potato, caution is the watch word as chemicals have expiry dates.', 1),
        (134, 129, 'Are there ways of processing Irish Potatoes to make them store for long?', 'A wide range of processed product from potato includes potato chips (french fries), potato flour, canned potatoes, crisps, potato flakes, potato powder and granules, riced potato, papa seca, potato strips and dice. Potatoes are important raw materials in production of goods such as alcohol (spirits), dextrin (adhesives), meat pies and starch amongst others.', 1),
        (135, 101, 'Marketing', '', 1),
        (136, 135, 'There is usually a glut of Potatoes during the harvesting period, leading to poor prices. What can I do to sell at a good price?', 'Store tubers in one of the recommended storage methods. There are cool storage facilities that you can take your potatoes for storage eg ‘transgas storage’ and cool rooms where temperature is regulated or store using Diffused Light Storage (DLS) method which relatively cheap. There should be periodic sorting pending when it will be sold.', 1),
        (137, 135, 'Middlemen usually come to our community to purchase Irish potatoes. How do we ensure that we sell at a good price?', 'To check the activities of middlemen or local assemblers, farmers should form cooperatives. By so doing they will have strong bargaining power and minimal price fluctuation.  Another way to sell at period of high price is to synchronize planting so that harvest is at the period of attractive price (this in know as changing planting date).', 1),
        (138, 80, 'Sweet Potato', '', 0),
        (139, 138, 'Land preparation', '', 1),
        (140, 139, 'Why do I have to raise the ridges when cultivating sweet potatoes?', 'Ridges are raised for sweet potato basically for; (i) creation of a conductive environment for root growth and expansion (ii) ease of nutrient and water uptake, (iii) proper tuber bulking (iv) prevent Cylas infestation and damage.', 1),
        (141, 139, 'What soil type is best for sweet potatoes?', 'Clay loamy rich in iron.', 1),
        (142, 139, 'Can I plant sweet potatoes on my water logged farm?', 'It is not advisable to plant sweet potato in water logged soils as it creates an anaerobic condition.', 1),
        (143, 138, 'Varieties', '', 1),
        (144, 143, 'Are there any differences between the red colored and cream colored sweet potato varieties?', 'There are differences in the two varieties especially in there nutrient composition.', 1),
        (145, 143, 'I noticed that there are large leaf and small leaf varieties of sweet potatoes. Are there any differences between these two?', 'Yes there are differences among these varieties which are genetic.', 1),
        (146, 138, 'Sowing / planting', '', 1),
        (147, 146, 'What is the most effective way to prepare sweet potato cuttings to have very good performance?', 'Vine cuttings should have at least 3 nodes as these are point of root initiation and tuber formation. The more nodes are buried, the more tubers are produced.', 1),
        (148, 146, 'Can I plant sweet potato using the tubers as in Irish potato?', 'Sweet potato is a root crop and not a tuber. Propagation from “tuber” (root) is not ideal. Shoot and roots will emerge but not a strong plant especially the yield compared from production from vines.', 1),
        (149, 146, 'What period of the year is best for planting sweet potato?', 'Period for planting sweet potato is when rain has stabilised. Here on the Plateau it is late May to early July of each year.', 1),
        (150, 146, 'For how long can I store my sweet potato cuttings and have them remain viable?', 'Best storage of vine is by burying the node zone of vines in a moist soil. In the dry season such vines should be watered periodically. If the storage is not going to be for a long time, they can store for 15-25 days under the shade of tree without appreciable loss. Vines meant for proceeding year can be raised in a nursery in the dry season and watered.', 1),
        (151, 138, 'Fertilizer application', '', 1),
        (152, 138, 'Weeding', '', 1),
        (153, 152, 'Since the broad leaves of sweet potatoes have a way of suppressing weeds. Is there any need for applying herbicides?', 'At the initial stage when full canopy has not yet formed, it is recommended that herbicides be used to suppress weeds. However, selective herbicides are recommended. This should be followed by one or two manual weeding depending on the density of the weeds.', 1),
        (154, 138, 'Field pests and diseases', '', 1),
        (155, 154, 'Some insects usually destroy sweet potato leaves on the farm. What can be done to control them?', '(a) Cultural practices eg crop rotation, earthen up of ridges, planting dates and field sanitation etc (b) Use of insecticides (c) Planting of resistant or tolerant varieties.', 1),
        (156, 154, 'Some pests sometimes damage stored dry sweet potato flakes. How do I control them?', '(a) Ensure flakes are properly dry before storage (b) Store flakes in hermetic (air tight) containers eg used of polythene bags (c) Fumigation of store before, during and after storage.', 1),
        (157, 138, 'Harvesting', '', 1),
        (158, 157, 'When is the best time to harvest sweet potatoes?', 'When the plant has exhibited signs of senescing such as leaves turning yellow and older leaves shading (falling) off.', 1),
        (159, 157, 'The soil is usually hard when harvesting sweet potatoes during the dry season. What can I do to make harvesting faster?', 'Ensure that soil is properly pulverized during land preparation, incorporate organic matter and earthen up during growth stage of the sweet potato will address the issue of soil hardness.', 1),
        (160, 138, 'After-harvest management', '', 1),
        (161, 138, 'Processing / storage', '', 1),
        (162, 161, 'I notice that sweet potato does not stay long when stored fresh. What is the best form of storage?', 'Burying of fresh healthy tubers in a pit sprinkled with wood ash before covering with soil. A local store known as diffused light store where temperatures are low for tuber can be used. Also fresh tubers can be kept for 3-4 months in an open well aerated, shaded and dry place (eg under a tree) covered with hay.', 1),
        (163, 161, 'What processing can be done to potatoes to make it keep long, since it gets bad quickly?', 'Value addition through processing. There are products in which sweet potato is the major raw material eg chips, flakes, cakes, flour, dextrin (gum) and starch etc. These products are more stable than fresh tubers.', 1),
        (164, 138, 'Marketing', '', 1),
        (165, 164, 'Do the leaves of sweet potatoes have any economic value?', 'The leaves are used as vegetables by some people. They are used as animal feed. Once they fall on the farm they decompose and serve as organic manure in the soil.', 1),
        (166, 164, 'The market for sweet potato is not very available. What can I do to avoid spoilage and waste of the harvested tubers?', 'Value addition through processing. There are products in which sweet potato is the major raw material eg chips, flakes, cakes, flour, dextrin (gum) and starch etc. These products are more stable than fresh tubers.', 1),
        (167, 80, 'Yam', '', 0),
        (168, 167, 'Land preparation', '', 1),
        (169, 167, 'Varieties', '', 1),
        (170, 167, 'Sowing / planting', '', 1),
        (171, 170, 'During land preparations for yam production, which will you recommend between heaps and ridges for high yield per given area', 'Ridges tend to maximise land more than heaps and can easily be manoeuvred.', 1),
        (172, 167, 'Fertilizer application', '', 1),
        (173, 172, 'What type of fertilizer can be recommended for my Yam farm?', 'Yam takes Nitrogen, Phosphorus and Potassium form the soil. Most NPK fertilizers would do. The appropriate type and suitable application rate would depend on a soil test.
', 0),
        (174, 172, 'Can I use organic fertilizer on Yam?', 'Yam responds well to compost fertilizer. It is best to mix it into the soil during land preparation.
', 0),
        (175, 167, 'Weeding', '', 1),
        (176, 175, 'I spend so much on weed control on my yam farm. How do I reduce this cost?', 'Try to use pre-sprouted setts and be sure to mulch the yam mounds. This should reduce the number of times you would need to weed the farm before the Yam plant forms canopies and depresses the weeds.
', 0),
        (177, 175, 'Are there alternatives to the use of human labour for weeding the farm?', 'Hand tools are best used. Most mechanized alternatives damage the Yam vines. Discuss the possibility of using some selective herbicides with your extension agent.
', 0),
        (178, 167, 'Field pests and diseases', '', 1),
        (179, 178, 'I have observed that insects and worms eat yam tubers once planted in the field and when new tubers are formed. How can I manage this situation?', 'Practice crop rotation, use of resistant varieties and chemical control also helps', 1),
        (180, 178, 'Dieback disease in yam production is becoming a serious issue here how can I manage it?', 'This is anthracnose and should be managed through integrated approach by planting healthy certified seed, avoid areas with history of the disease (crop rotation), seed dressing with chemical, and avoid planting infected seed and proper stalking of yams.', 1),
        (181, 167, 'Harvesting', '', 1),
        (182, 181, 'How do I know the Yam farm is ready for harvest?', 'Watch out for yellowing and drying of the leaves and the vines. You may also dig around some sampled plants on the farm before yellowing of the leaves. Setts for planting are however the last to be harvested.
', 0),
        (183, 167, 'After-harvest management', '', 1),
        (184, 183, 'How do I reduce spoilage of yam tubers?', 'Be careful to avoid bruising the tubers during harvest. Also separate damaged and diseased tubers from healthy ones.
', 0),
        (185, 167, 'Processing / storage', '', 1),
        (186, 185, 'How can I control rot affecting of my yams in the store', 'Store only healthy non bruised tubers that are properly dried. Store in a well-ventilated and shed area. Periodic checking and sorting of the tubers.', 1),
        (187, 167, 'Marketing', '', 1),
        (188, 1, 'Vegetables', '', 0),
        (189, 188, 'Melon (Egusi)', '', 0),
        (190, 189, 'Land preparation', '', 1),
        (191, 189, 'Varieties', '', 1),
        (192, 189, 'Sowing / planting', '', 1),
        (193, 192, ' I seem to be experiencing poor germination of melon seeds on my farm. How many days does it take viable seeds to germinate?', 'Germination should occur after 5 days of planting.', 1),
        (194, 192, 'What planting depth is recommended for good germination?', 'A depth of about 2cm (or a third of your index finger should be good enough).', 1),
        (195, 192, 'What planting distance is recommended within a ridge?', 'You can use 1 meter (an approximate full stride)  .', 1),
        (196, 192, 'When is the ideal planting time for melon in Plateau state.', 'This would depend on the rainfall pattern in the year. It is better to plant at the onset of the rains since it matures from 4 to 5 months. Note that melon tolerates dry conditions, which gives you wider options on timing.', 1),
        (197, 189, 'Fertilizer application', '', 1),
        (198, 197, 'Is it necessary to add fertilizer?', 'Not really but adding fertilizer will boost growth and yield. This would however depend on the quality of  your soil.  ', 1),
        (199, 189, 'Weeding', '', 1),
        (200, 199, 'How do I do I reduce weed competition on my melon farm?', 'Proper land preparation, followed by immediate planting will place the melon at an advantage, such that the melon plants form a cover and depress the weeds. Other weeds can be removed using small hoes and hand picking. Avoid heavy tools to prevent damages to the plants.
', 0),
        (201, 189, 'Field pests and diseases', '', 1),
        (202, 201, 'I seem to be experiencing poor germination of melon seeds on my farm. How many days does it take viable seeds to germinate?', 'Germination should occur after 5 days of planting.', 1),
        (203, 189, 'Harvesting', '', 1),
        (204, 203, 'How do I know my melon farm is ready for harvest?', 'When you notice the gourds turning from green to white or yellowish white.
', 0),
        (205, 189, 'After-harvest management', '', 1),
        (206, 205, 'How do I avoid damaging the melon seeds while processing. It affects the value of the crop.', 'Avoid the use of machetes in breaking the fruit. Use a stick instead.', 1),
        (207, 205, 'How do I extract the seeds?', 'Break the gourds and allow to decompose for 7 – 14 days. This can produce very offensive smell so it should be done away from the house (possibly still on the farm). After the decomposition, the seeds are removed, washed and dried.', 1),
        (208, 189, 'Processing / storage', '', 1),
        (209, 208, 'I notice beetles that sometimes damage my stored melon seeds. What do I do about it?', 'This damage is caused by beetles (Tribolium Casteneum) and (Lasioderma serrricone). They can be controlled by storing in well sealed containers.', 1),
        (210, 189, 'Marketing', '', 1),
        (211, 188, 'Lettuce', '', 0),
        (212, 211, 'Land preparation', '', 1),
        (213, 211, 'Varieties', '', 1),
        (214, 211, 'Sowing / planting', '', 1),
        (215, 214, 'What is the best way to plant my lettuce seeds?', 'Seedlings for transplanting may be raised in seed trays or seedbeds and transplanted about five weeks after sowing.', 1),
        (216, 211, 'Fertilizer application', '', 1),
        (217, 216, 'What type of fertilizer should I apply to my lettuce?', 'Nitrogen based fertilizers are good but fertilizer application should be based on soil analysis. Overfertilisation with nitrogen may result in increased susceptibility of the crop to various diseases.', 1),
        (218, 211, 'Weeding', '', 1),
        (219, 218, 'I am faced with serious weed problems. Can I use chemicals for weed control on my lettuce farm?', 'Weeds should be removed by hand howing or pulling between plants in the rows.', 1),
        (220, 211, 'Field pests and diseases', '', 1),
        (221, 220, 'I have serious a serious challenge of crickets and grasshoppers affecting my lettuce nursery beds. What can I do?', 'At this early stage you can use any common pesticide from your farm chemical dealer to control them. You may also employ mechanical control, which is by hand picking.', 1),
        (222, 220, 'I have had a problem of some Light green or yellow patterns on the upper surface of the leaves which are noticed on older leaves. I also noticed a white mouldy appearance on the lower leaf surface.', 'This might be downy mildew which occurs frequently during cool, moist weather. Control is by planting resistant cultivars. Use disease-free seeds. Always practice crop rotation.', 1),
        (223, 211, 'Harvesting', '', 1),
        (224, 223, 'At what time and how is the best way to harvest my lettuce?', 'Harvesting should be done very early in the morning because lettuce wilts rapidly. It is harvested by cutting off the plant just above the soil surface to keep most of the outer leaves around the head. You may also uproot the whole plant and slice off the root area.', 1),
        (225, 211, 'After-harvest management', '', 1),
        (226, 225, 'How many days or weeks does it take for lettuce to germinate?', 'It takes one week before it fully germinates from the soil.', 1),
        (227, 225, 'At what stage does lettuce require much water?', 'Water should be applied throughout the growing period but reduced when the heads become full.', 1),
        (228, 225, ' It rains a lot in my community and I am afraid it might affect the performance of my lettuce, especially now that I want to increase my production. What is the required rainfall for the growth of lettuce?', 'The rainfall required is 60 – 80mm per annum.', 1),
        (229, 211, 'Processing / storage', '', 1),
        (230, 229, 'Are there any ways of prolonging the freshness of lettuce harvest as I sell?', 'The first thing is to avoid damages in the course of harvesting; sort any bad crops and discard; do not wash in water; keep in a well aerated place with slight but frequent moistening. Even with all these, note that Lettuce does not last long in storage. Harvesting should be done in batches.
', 0),
        (231, 211, 'Marketing', '', 1),
        (232, 188, 'Spinach', '', 0),
        (233, 232, 'Land preparation', '', 1),
        (234, 232, 'Varieties', '', 1),
        (235, 232, 'Sowing / planting', '', 1),
        (236, 235, 'I always experience poor germination, even when the same seeds germinate well on other farmers farms. What might be the cause?', 'You may need to be sure your garden is suitable for spinach production. Find  a planting site with well-drained soil and full sun to light shade.', 1),
        (237, 235, 'I have been experiencing poor performance from transplanted spinach seedlings. What can I do about?', 'Spinach seedlings are difficult to transplant. It is recommended that you broadcast the seeds directly.', 1),
        (238, 235, 'How do I get good-sized produce during harvest?', 'Be sure to thin out the garden after emergence. Keeping a few inches between plants provides space for individual plants to grow well vegetative. Using a slightly shaded garden also stimulates fast vegetative growth.
', 0),
        (239, 235, 'What form of planting is best. Seeding directly or transplanting?', 'Using both methods increases the yield. The seeds are first planted in a nursery and later transplanted to the garden. Where this is not possible, the plated seeds can be properly thinned to create room for proper growth.
', 0),
        (240, 232, 'Fertilizer application', '', 1),
        (241, 240, 'Is it necessary to apply fertilizer to spinach?', '​​Yes, if the soil is poor of nutrient. Use manure (preferably compost).', 1),
        (242, 240, 'Which fertilizer can I use to improve yield on my farm?', 'Organic manure is best for spinach production. This can be plant compost or animal droppings. You can mix it with the soil at the point of land preparation. Where organic fertilizer is not available, inorganic fertilizer can be used.
', 0),
        (243, 232, 'Weeding', '', 1),
        (244, 232, 'Field pests and diseases', '', 1),
        (245, 244, 'I have had problems with insects feeding on the spinach leaves and making them lose value. What can I do? What are the methods of pest control in spinach?', 'Pesticides are not very good for spinach because of the danger of residues on the leaves. It would be better to handpick and destroy the insects. Affected plants can also be uprooted.  ', 1),
        (246, 232, 'Harvesting', '', 1),
        (247, 246, 'When is the best time to harvest spinach?', 'There is no best time to harvest spinach for home use. Produce meant for market might be good enough after between 40 – 50 days, when the leaves are broad and mature.', 1),
        (248, 246, 'Some farmers harvest parts of the plant while some harvest the whole farm. What is best for market purposes?', 'Harvesting whole plants thins out the farm and allows other plants to grow out thereby increasing yield at the end.', 0),
        (249, 232, 'After-harvest management', '', 1),
        (250, 232, 'Processing / storage', '', 1),
        (251, 232, 'Marketing', '', 1),
        (252, 188, 'Strawberry', '', 0),
        (253, 252, 'Land preparation', '', 1),
        (254, 252, 'Varieties', '', 1),
        (255, 252, 'Sowing / planting', '', 1),
        (256, 255, 'Is it possible for me to get strawberry seeds for planting?', 'For now production of Strawberry is mainly vegetatively by transplanting stocks from older plants.', 1),
        (257, 252, 'Fertilizer application', '', 1),
        (258, 257, 'Many farmers in my community tried growing strawberry due to its profitability but have had very poor yield. What is the likely reason?', 'It would be necessary to take some of your soil to the laboratory for testing. The use of organic fertilizers like Poultry manure, cow dung etc. would help considerably in improving the productivity of your farm.', 1),
        (259, 252, 'Weeding', '', 1),
        (260, 252, 'Field pests and diseases', '', 1),
        (261, 260, 'There are insects and other pests that feed on the strawberry fruits once they are ripe. How do I control them?', 'The best way to reduce damages from pests is by frequent harvesting. It is not recommended that you use chemicals to control insects and other pests as these may pose a danger to consumers.', 1),
        (262, 260, 'Some of my Strawberry  plants suddenly change colour, become wilted and die. What is the cause of this?', 'This can be caused by quite a number of fungal diseases. When watering strawberries, advice has been given to water only the roots and not the leaves, as moisture on the leaves encourages growth of fungus.', 1),
        (263, 252, 'Harvesting', '', 1),
        (264, 252, 'After-harvest management', '', 1),
        (265, 264, 'This is my third year of production and I noticed that my yield is reducing. What is the problem?', 'Strawberry plants begin to decline in production after one or two years of production. You can improve your yield by replacing the old plants with new ones.', 1),
        (266, 264, 'I have an unreliable supply of water for off-season farming. Can I grow Strawberries?', 'Strawberries do well when supplied adequate water. You may wish to find a way of supplementing the water.', 1),
        (267, 252, 'Processing / storage', '', 1),
        (268, 252, 'Marketing', '', 1),
        (269, 1, 'Animals', '', 0),
        (270, 269, 'Poultry', '', 0),
        (271, 270, 'Housing', '', 1),
        (272, 270, 'Breeding', '', 1),
        (273, 270, 'Feed and water', '', 1),
        (274, 273, 'When should I change from grower mash to layer mash? ', 'Between 0-9 weeks you should feed chick mash, above 9 weeks feed them grower mash until they reach point of lay and start laying up to 5% then change to layer mash.', 1),
        (275, 273, 'My birds sometimes do not finish the feed and water I put for them. How do I know the quantity of feed and water they are supposed to take in a day?', 'Birds consume much during cold weather and less during hot weather. More so, they tend to eat less when they are sick. It is better to feed just enough that they can consume. 200 birds can consume 1 bag i.e. 25kg of feed a day', 1),
        (276, 273, 'My birds just stopped feeding and taking water?', 'Your bird may be sick. However, sometimes birds may stop feeding or drinking water because of change of weather or change of feed.', 1),
        (277, 273, 'Can I give my broiler chicken the same type of feed I give my layer chickens?', 'No! The nutrient requirement for broiler and layer chickens are not the same. Give broiler starter between 0-4 weeks and broiler finisher 5-8weeks', 1),
        (278, 270, 'Vaccination', '', 1),
        (279, 278, 'At what age should I start vaccinating my poultry /birds?', 'Consult with the nearest veterinary clinic or the hatchery for a vaccination schedule to follow. If you bought the birds at day old depending on your locality, your veterinary doctor will have a schedule that will show the age you are going to vaccinate for each disease. There are vaccines that are given right from hatchery. The first vaccine aside the one from the hatchery is given in the first week.', 1),
        (280, 278, ' If I skip a vaccination for my birds how do I start again?', 'Make every effort to give the vaccines at the appropriate time. Usually there is a gap between one vaccination and the next. So if it has not yet reached the next one, you can give the one you missed. However consult with your veterinary doctor in the event you missed any.', 1),
        (282, 270, 'Routine practices', '', 1),
        (283, 282, 'My birds are 21 weeks old and are yet to start laying.', 'Your layer birds should start laying eggs as from 18-20 weeks depending on the source and breed. If your birds had previous infection at early age, it may delay time of laying eggs. Infection such as intestinal worms, lice, mites, fowl typhoid, coccidiosis, mareks, newcastle diseases could affect production for all the birds’ life. You must feed them well at early age for them to lay eggs at the appropriate time. Deficiencies in calcium, phosphorus in feed affects production. If they are not fed quality feed in the right quantity, you may have delay in production.', 1),
        (284, 282, 'Where can I get a quality chickens for egg or for meat?', 'Look for a reputable hatchery. You can ask those successful in the business for where they obtained their stock', 1),
        (285, 282, 'I am expecting a batch of day old chicks in a few days what should I do?', 'Ensure that the house is ready before their arrival. You need to have enough feeders and drinkers. Give vitamins and/or glucose. Observe to see those that are weak and isolate.', 1),
        (286, 282, 'I observe my chicks crowding around the source of light.', 'Your birds may be cold. It suggests lack of adequate source of light. When the light is too much birds move away from source and when not enough they crowd around it to get warm. When the light is adequate they will be evenly distributed', 1),
        (287, 282, 'What could be the cause of a sudden drop in egg production in my layer flock?', 'Anything that constitutes stress to your birds such as sudden change of weather, feed, and change of litter and or infections can lead to sudden drop of egg production. If you have the record of activity and the level of production in the farm, then it’s easier to trace the cause. For example; was it when you changed their feed? Was there change of weather recently, was it after giving a particular drug? etc', 1),
        (288, 282, 'How often should I deworm laying birds?', 'You can deworm after every 3 months.', 1),
        (289, 282, 'What makes birds to peck each other?', 'Pecking in poultry is often referred to as cannibalism. Pecking in poultry occurs due to overcrowding, mineral deficiency, overgrown beak etc.', 1),
        (290, 282, 'Can I keep, raise birds of different ages in the same house', 'It is always better to practice all in all out where you sell all birds of the same ages and bring in another batch of the same age.', 1),
        (291, 282, 'I sometimes pick whitish or small sized eggs in my layer farm?', 'There are many causes of whitish or small sized eggs. Your birds may be under stress, may be getting old, may be on certain drugs or having viral diseases such as Newcastle disease and Infectious bronchitis. In some cases calcium deficiency may lead to whitish egg or even small size.  ', 1),
        (292, 282, 'How many cocks should I have for my hens?', 'You can have one cock to 10 hens.', 1),
        (293, 282, 'I have broken eggs in my poultry house and I think my birds eating up their eggs; what should I do?', 'Check if the beak of the chickens have re-grown. You may have to debeak them again if it has re-grown. Try and identify the egg eating birds and remove them. Ensure sufficient nesting boxes. Collect eggs 2-3 times a day.', 1),
        (294, 282, 'How do I collect eggs and prevent dirty eggs?', 'Collect/pick eggs twice a day so as to avoid breakage and dirty eggs. Provide soft, clean litter in the nest and change it from time to time to keep eggs clean. Market or sell the eggs at least twice in a week to give your customers fresh eggs. Store the eggs with small end down on the egg tray so that the air space is upward. Also you can wipe eggs that are dirty with damp sponge.', 1),
        (295, 270, 'Diseases', '', 1),
        (296, 295, 'I have recorded low production and several mortalities in my last batch of layer flock due to some disease tumors on the comb. What could be the problem and what preventive measure(s) should I take now that I am bringing a new batch?', 'It could be Newcastle disease tumor. There are no available drugs for the treatment of poultry viral diseases. There are vaccines available which are for the prevention of the diseases. Ensure that you buy your birds from a reputable source. Before restocking, clean the poultry house and wash thoroughly. Fumigate the poultry house and allow for not less than three months. Ensure that you give the birds the recommended vaccines and observe strict biosecurity.', 1),
        (297, 295, 'Some birds in the flock show signs twisting of neck and unable to walk while some show respiratory signs.', 'The birds may have Newcastle disease. Isolate the sick ones then treat based on the signs, since there is no drug for the treatment of poultry viral diseases.  Give multivitamins, antibiotics for secondary bacterial infection.', 1),
        (298, 295, 'How do I prevent my birds from blood tinged watery stool?', 'Ensure that the birds are not overcrowded and the house is well ventilated. Ensure that the litter is always dry (water should not be poured on the litter)', 1),
        (299, 295, 'My birds are passing out whitish and greenish stool?', 'Depending on the age; change in color of feces may be due to infection which may be bacteria or viral; whitish diarrhea in younger birds may be due to bacterial infection such as Pullorum disease while greenish diarrhea could be fowl typhoid or Newcastle disease', 1),
        (300, 295, 'My birds curdle and are sleepy, what is the cause and what  should I do', 'Your birds may be sick. Depending on other signs such as presence of blood tinged or whitish feces, they may be having coccidiosis-Give amprolium in water.  They may be having Gumboro disease. In Gumboro disease however, the birds may be dying much more than in coccidiosis and no treatment for Gumboro disease. Give them multivitamins. ', 1),
        (301, 295, ' I observed signs of difficulty to stand and walk in my layer birds; what is the cause?', 'Infection such as mareks disease affects the sciatic nerve leading to paralysis of the limbs. If you have mortality, take one or two for postmortem for diagnosis. In calcium deficiency the limbs become demineralized and are weak leading to difficulty of the birds to walk. Isolate those showing signs and give all calcium supplements.', 1),
        (302, 295, ' I observed a small raised dried firm lesions on beak, shark, wattle and comb of my bird; how do I treat them?', 'Your birds may be having fowl pox. The fowl pox is a viral disease and does not have treatment. It’s recommended that you scrape the lesion and apply tincture iodine or  gentian violet (GV).', 1),
        (303, 295, 'My chickens are passing greenish-yellowish diarrhea. They are not eating as before, not breathing well. The comb of some has swollen and few dead; what should I do?', 'Your birds may be having fowl cholera or Fowl typhoid.  If there is a vet close to you take some birds that died to them and they will open them to see what caused the dead and give you medicine for your birds.', 1),
        (304, 295, 'I have observed a drop in feed consumption in my flock with few dying (picking 1- 2 daily) in the past three days. I have also noticed blood tinged in their droppings and wondering what is the cause', 'Your birds may be having coccidiosis. Lack of adequate ventilation, damp or wet litter favors the build up of the organism that causes coccidiosis. It spreads when infected birds contaminate water/feed with their dropping. Therefore ensure their house is well ventilated (not humid/stuffy). Ensure that water does not pour on the litter. Amprolium is a good drug of choice. You may consult with your vet.', 1),
        (305, 295, 'My birds were diagnosed with a disease and I was told there is no medication available only vaccine; What should I do?', 'Most or all viral diseases of poultry do not have drug for their treatment. There are vaccines (to protect the birds) available but they are given before the birds have the disease. Consult your vet in the future to know which one to give your birds.', 1),
        (306, 270, 'Marketing', '', 1),
        (307, 306, 'What are the advantages of rearing chicken as a business?', 'The advantages of rearing chicken include the following: Chicken can be reared in a small place compared to other types of livestock. The stocks needed to start rearing chicken are readily available. Chicken manure can be used to generate biogas and fertilizer. You can use biogas for cooking and lighting while the fertilizer can be used for growing crops and improving conditions in fish ponds. Chicken can be reared throughout the year during rainy and dry seasons. The returns on investment take a shorter time to realize. Many people prefer to eat chicken compared to other sources of protein. Chicken is normally fed on byproducts such as maize germ, maize bran, cotton seed cake , sunflower seed cake, rice germ, wheat bran, wheat pollard. ', 1),
        (308, 306, 'Are there disadvantages of rearing chicken as a business?', 'Yes! There are some disadvantages which include the following: Some chicken diseases such as Avian Flu can affect human beings. Normally chickens can die of preventable diseases such as Newcastle, Gumboro, Fowl typhoid, Fowl Pox and Fowl Cholera. Other animals like mongoose, snakes, eagles, cats and even dogs like eating chicken. Some items used for rearing chicken can be expensive thereby reducing the profit margin.', 1),
        (309, 306, 'How many types of products can a farmer generate from poultry rearing business?', 'There are a number of products depending on the market the farmer is focusing on. Poultry products include the following items: Table eggs, hatching eggs, mature birds for meat, Chicks, Ex-layers, Table birds, Broilers, Birds for breeding. By-products include: Used feed bags, Manure, Feathers.', 1),
        (310, 306, 'What do I need to start rearing chicken and make a profit?', 'You need the following to rear chicken profitably: Cash in hand for running costs until you make sales, Feed, Drugs, Poultry House, Equipment, Market, Vaccines , Training programs etc', 1),
        (311, 306, 'Do flocks do better confined or on range?', 'Breeding flocks generally do better on range and commercial egg flocks do better confined. It is difficult to use the same flock for both purposes.', 1),
        (312, 306, 'How may the number of dirty eggs be reduced?', 'Clean nests (do not allow hens to roost in nests), plenty of nests, (1 nest to 5 hens), clean, dry houses, clean graveled yards. Gather the eggs often.', 1),
        (313, 306, 'Can I keep more than one type of poultry in my farm?', 'It is not advisable to keep more than one type of poultry in the farm. For example you can keep broilers, layers and indigenous chicken in your farm depending on the size of the land you have and the management system. Mixing chicken with emerging poultry particularly geese, ducks and turkeys is not recommended. Even in the case of indigenous chicken, select one variety for example necked neck and specialize on that. It makes it easy to monitor production parameters than if you have a variety of different chicken on the farm.', 1),
        (314, 306, 'Are quails, guinea fowl and even ostriches classified as chickens?', 'Quails, guniea fowls and even ostrich are classified as emerging poultry but are still considered as wild animals​.', 1),
        (315, 306, 'What can I do to prevent my birds from pecking each other?', 'Pecking among birds usually occurs when there is overcrowding, lack of well-balanced diet among others. Therefore ensure sufficient space and give enough space between feed and water containers. If you are feeding them with commercial feed then it is believed that it should contain all the necessary nutrients. If you prepare the feed yourself ensure well balanced diet (contain 0.2% of salt in diet). Also ensure house is well ventilated (cool) or heat may excite the birds and result in cannibalism. There should not be too much of light at nesting boxes. Make sure the birds do not have parasites on their body. Always check the upper part of the beak and debeak if overgrown to avoid pecking.', 1),
        (316, 306, 'My birds are about to start laying and I want to know how many laying areas I should provide?', 'You will need one nesting box for every 5 laying birds (that is 20 for a 100 birds). The box should have minimum light /dark to prevent egg eating.', 1),
        (317, 269, 'Sheep', '', 0),
        (318, 317, 'Housing', '', 1),
        (319, 318, 'What should I consider in sitting a sheep / goat farm?', 'A land suitable for pasture or near where you can get pasture source of clean or fresh water. Provide a pen that is free from damp, clean and not air tight
', 0),
        (320, 317, 'Breeding', '', 1),
        (321, 320, 'At what age can I mate my sheep?', 'It is usually when they are one year old. Both the male and female attain sexual maturity at that age.', 1),
        (322, 320, 'My ewe is pregnant and about lambing, what preparations should I make prior to lambing?', 'Pregnant animals need high quality feed. Ensure an availability of good pasture, fodder crops or a daily portion of 0.5kg concentrate for 3-4 weeks before mating and after lambing. The dam should be dewormed 2-4weeks prior to lambing and placed on clean pasture one week before lambing. Do not over feed but ensure good feeding. Get a sheltered field should be provided for lambing
', 0),
        (323, 320, 'I guess my dam is due to deliver, what signs will I notice that she is about delivery?', 'Any signs of uneasiness may suggest she will deliver 2 hours after showing signs.
', 0),
        (324, 320, 'What age do I wean my lambs?', 'Weaning can take place at 4-5 months. After about six weeks the milk yield of the ewes will decline. At this age it is important to pasture may be more important to the lamb. A creep can be made where the lambs can be fed extra concentrate.
', 0),
        (325, 320, 'How do I assess if my lambs are doing well at weaning?', 'At weaning, a lamb should be weighing approximately 22kg
', 0),
        (326, 320, 'What time of the year is appropriate for breeding my ewes?', 'Where you can control such, breeding is better taken place at time that the ewes will give birth early in the rains. This will ensure that there is good pasture available for both ewes and lambs.
', 0),
        (327, 320, 'What qualities should I look out for in selecting good breeds for production?', 'Certain characteristics to look out for should include good size, health, sound teeth and milking ability. Ewes that produce twins should be kept as it is a valuable characteristics for high production.
', 0),
        (328, 320, 'Where can I get breeding stock?', 'Breeding stock should be purchased from well managed farms
', 0),
        (329, 320, 'I am about to start keeping sheep and wondering what ratio of male to female should I keep?', 'A ratio of 1:20 that is one male to 20 female. In some cases, 1 male to 40 female will still be okay
', 0),
        (330, 317, 'Feed and water', '', 1),
        (331, 330, 'Do sheep need salt/vitamins?', 'You can add up salt (or provide salt lick) or vitamins in their feed
', 0),
        (332, 317, 'Vaccination', '', 1),
        (333, 317, 'Routine practices', '', 1),
        (334, 333, 'What is the number of males I should keep in my sheep herd?', 'An average of 20 – 30 females to a male should do. You need to ensure that the male is healthy and that it has the qualities you desire.', 1),
        (335, 333, 'I experienced several abortions in my flock after deworming my animals. Can the deworming cause this?', 'Yes, using some dewormers on pregnant animals can lead to the loss of the pregnancy. It is better not to deworm a pregnant animal. Consult a vet to handle it if necessary.', 1),
        (336, 317, 'Diseases', '', 1),
        (337, 336, 'We have been experiencing large losses of our sheep every year in my community. It starts with the animals looking dull and then they release discharges from the eyes and nose, with wounds in the mouth, difficulty in breathing and cough, smelly diarrhoea and then death. What could be the cause and what can we do about it? ', 'This can be caused by several factors, one of which might be Peste des petits ruminants (PPR). In this case you need to invite a vet to vaccinate the herds in the whole community. Also encourage your fellow farmers to agree to a routine deworming of all theIr herds.', 1),
        (338, 336, 'I have been having repeated cases of worm infection in my flock. What can I do to reduce this?', 'Ensure regular deworming. Confirm that the source of your water is good. Avoid taking the animals out for grazing too early – wait for the sun to be up.', 1),
        (339, 336, 'I observe intermittently lambs dying in the first weeks of birth in flock ; what are the causes and what measures should I take?', 'Lamb are delicate and fragile in the first few weeks of their life. If at birth the lambs are small or weak the losses can be high. Therefore, ensure that the pregnant ewe gets high quality feed. Lambs suckle within an hour or two of birth. When they are unable to suckle well losses occur mostly in the first two weeks. You may therefore be observant and ensure they are sucking well and if not you will need to aid them. Also lamb may become cold in their first few weeks and develop pneumonia. Ensure that they are warm. If you notice any signs of difficulty in breathing, nasal discharges you may need to consult with a veterinary doctor. Protect the lamb from wild animals.
', 0),
        (340, 336, 'I have observed a small red raised areas around the mouth and under the tail of some few of my sheep. They are also showing sign of fever', 'This could be sheep pox and does not have treatment. It is a serious viral disease that is transmitted by contact with infected animals. The mortality could be very high. Therefore, ensure you buy animals from well managed farm. Keep newly purchased animal and observe before introducing them into the flock.
', 0),
        (341, 336, 'I have observed lameness, swelling of the limbs (gas formation under the skin) of my sheep.', 'it is a bacteria disease called blackleg and has no treatment. Vaccines are available. Properly dispose carcass to prevent spread of infections.
', 0),
        (342, 336, 'My lamb have swollen joints and showing signs of fever', 'This is referred to as navel ill. Good antibiotics are effective at an early stage of the condition. Therefore, consult with a vet early
', 0),
        (343, 336, 'I have observed recurrent abortion at late pregnancy with retained placenta sometimes lamb are born alive or dead at full term.', 'Observe strict hygienic lambing practices; Treat after abortion with antibiotics.
', 0),
        (344, 317, 'Marketing', '', 1),
        (345, 269, 'Goats', '', 0),
        (346, 345, 'Housing', '', 1),
        (347, 346, 'What should I consider in sitting a sheep /  goat farm?', 'A land suitable for pasture or near where you can get pasture source of clean or fresh water. Provide a pen that is free from damp, clean and not air tight
', 0),
        (348, 345, 'Breeding', '', 1),
        (349, 348, 'I confined some female goats for breeding. When should I introduce the male goat?', 'You can introduce the male goat when they come on heat. You will know this when you notice restlessness, The vulva will be congested and reddish with mucus discharges and they will be off-feed in readiness to be mounted by the male.', 1),
        (350, 348, 'Most of my goats only give birth to one kid and only a few give birth to two kids. How can I increase the number? ', ' The best approach is by getting breeds that produce higher number of kids.', 1),
        (351, 348, 'At what age can I mate my goats?', 'It is usually when they are one year old. Both the male and female attain sexual maturity at that age.  ', 1),
        (352, 348, 'I guess my dam is due to deliver, what signs will I notice that she is about delivery?', 'Any signs of uneasiness may suggest she will deliver 2 hours after showing signs.
', 0),
        (353, 348, 'What qualities should I look out for in selecting good breeds for production?', 'Certain characteristics to look out for should include good size, health, sound teeth and milking ability. Ewes that produce twins should be kept as it is a valuable characteristic for high production.
', 0),
        (354, 348, 'Where can I get breeding stock?', 'Breeding stock should be purchased from well managed farms
', 0),
        (355, 345, 'Feed and water', '', 1),
        (356, 355, 'What quantity of water should I give my goats daily?', 'Water should always be available
', 0),
        (357, 355, 'What proportion of protein to energy ration should I give my goats?', 'Protein should between 12 and 18% of the feed. If forage is available then you can give less of grains. They can get this from legume hays, alfalfa, clovers
', 0),
        (358, 355, 'Do goats need salt/vitamins?', 'You can add up salt (or provide salt lick) or vitamins in their feed
', 0),
        (359, 345, 'Vaccination', '', 1),
        (360, 359, 'What are the common vaccinations available for goats?', 'Anthrax and PPR (Peste des petits ruminant) vaccines
', 0),
        (361, 345, 'Routine practices', '', 1),
        (362, 361, 'What is the number of males I should keep in the herd for both sheep and goats?', 'An average of 20 – 30 females to a male should do. You need to ensure that the male is healthy and that it has the qualities you desire.', 1),
        (363, 361, 'I experienced several abortions in my flock after deworming my animals. Can the deworming cause this?', 'Yes, using some dewormers on pregnant animals can lead to the loss of the pregnancy. It is better not to deworm a pregnant animal. Consult a vet to handle it if necessary.', 1),
        (364, 361, 'When can I castrate my male goat?', 'Male goat that is not needed for breeding can be castrated in the first month of birth
', 0),
        (365, 361, 'How often should I trim the hoof of my goats?', 'Every few months the hoofs should be inspected and trimmed if overgrown
', 0),
        (366, 345, 'Diseases', '', 1),
        (367, 366, 'We have been experiencing large loses of our sheep and goats every year in my community. It starts with the animals looking dull and then they release discharges from the eyes and nose, with wounds in the mouth, difficulty in breathing and cough, smelly diarrhoea and then death. What could be the cause and what can we do about it? ', 'This can be caused by several factors, one of which might be Peste des petits ruminants (PPR). In this case you need to invite a vet to vaccinate the herds in the whole community. Also encourage your fellow farmers to agree to a routine deworming of all theIr herds.', 1),
        (368, 366, 'I have been having repeated cases of worm infection in my flock. What can I do to reduce this?', 'Ensure regular deworming. Confirm that the source of your water is good. Avoid taking the animals out for grazing too early – wait for the sun to be up.', 1),
        (369, 366, 'My goats are healthy and growing well but I have one goat which appears healthy but is not growing. It has been treated severally but has not improved.', 'This might be a runt. It is an inherited problem. The best option is to slaughter it so that it does not transfer the problem.', 1),
        (370, 366, 'My goats are looking dull and their hair (fur) looking rough. What is the problem and what can I do about it?', 'You may be having serious worm infection. Try deworming the animals with either Albendazole or Levamisole.', 1),
        (371, 366, 'I have noticed parasites on the body of my goats what should I do?', 'There available chemicals that can be applied on their body to kill them. Also some chemicals can be used to bath them depending on the level of infestation. You will need to consult a vet to get one', 0),
        (372, 345, 'Marketing', '', 1),
        (373, 269, 'Cattle', '', 0),
        (374, 373, 'Housing', '', 1),
        (375, 374, 'Can I just keep cattle at my backyard', 'It is preferable to get a  large space/land away from residential area. You can provide a fenced area with pasture. You may provide shed/shelter to protect them from rain
', 0),
        (376, 374, 'What type of housing do I provide for my calf?', 'For the first two months calf should be kept in individual stall. In warmer period movable pen will provide adequate shelter
', 0),
        (377, 373, 'Breeding', '', 1),
        (378, 377, 'Is it appropriate to breed animals from the same mother/parents since sometimes one may not have money to buy another male?', 'No. Breeding animals from the same parent may lead to less healthy and less productive offspring.', 1),
        (379, 377, 'How often should I use the male to breed.', 'Depending on the specie of animal, for example Boar not more than once per day, Stallion not more than once every other day, Sheep and goats-one male for every 50 females, Buffalo bull not more than once per day. The reason for the number of breeding for each species is that beyond the required number it may result in semen with insufficient sperm in it.', 1),
        (380, 377, 'I sometimes mate my female animals but they still come on heat not few days after?', 'The fertility of the male should be questioned. Also, you might have missed the timing for mating. You will need to keep records of breeding date and ensure you use a good male.', 1),
        (381, 377, 'How can I improve my local animal without importing?', 'By being careful in selecting young animals for breeding based on the performance of their parents. The only disadvantage is that improvement by selection is slower than by importing improved breeds. The risks are however less since the offspring are well adapted to the local condition', 1),
        (382, 377, 'I have an animal that has some good characteristics but with some defects. Should I use the animal for breeding purposes?', 'No. It is advisable to castrate animals with defects before they reach maturity.', 1),
        (383, 377, 'At what age should calf be weaned?', 'Preferable 4-5 months
', 0),
        (384, 377, 'At wat age should I wean my calf?', 'At four month
', 0),
        (385, 377, 'At what age would I likely have my cows milk yield reduced?', 'Between 5-8 years. When that happens sell or slaughter the cow
', 0),
        (386, 377, 'How many calf should my cow deliver in a year?', 'At least one calf a year since their gestation period is 9 months. Then if its commercial farm the cow can be inseminated 3 months after calving
', 0),
        (387, 377, 'At what age do I start breeding my cow?', 'Preferably at 18 months and should be healthy and well fed
', 0),
        (388, 377, 'What quantity of milk a cow meant for milk production give in a day?', 'A dairy cow can produce up to 10kg of milk in a day if it;s well fed (supplemented with concentrate)
', 0),
        (389, 377, 'How important is the first milk to the calf after delivery?', 'The first milk (colostrums) is rich in vitamins and minerals. It contains maternal antibody that protects the calf in the first few months of life. Ensure the calf gets the first milk within the first 36 hours
', 0),
        (390, 377, 'How do I milk my dairy cow?', 'It comes with experience; milk let down last 5-7 minutes. Generally, milk at regular intervals (morning and evening), maintain peace and quiet  time, milk qickly and evenly, and empty the udder thoroughly etc. Grasp the teat firmly at its base between the thumb and the forefinger and close the other three fingers in turn from the top so that the milk is squeeze from the teat into the bucket. Do not pull on the teat.
', 0),
        (391, 377, 'How long can I get milk from my dairy cow?', 'Usually the milk yield will peak within 6 weeks of calving and gradually decrease within 8-10 months
', 0),
        (392, 377, 'How do I know my dairy cow is producing milk maximally?', 'You will need to keep daily record of milk yield (weight the milk collected and keep the record).You can get the total milk from birth of a calf until she dries off.  If the yield goes down suddenly then the cow may be sick, coming on heat or have mastitis. Cows with poor milk production over a whole lactation should be culled (sold off) and replaced.
', 0),
        (393, 373, 'Feed and water', '', 1),
        (394, 393, 'My animal has stopped feeding well. What might be the problem?', 'Your animal may be sick. It may also have any of the following: Sore mouth: foot and mouth disease, lumpy Jaw, wooden tongue or there may be pain in parts of the body', 1),
        (395, 393, 'What should I do if my animals eats too much of maize?', 'Give magnesium sulfate to cause diarrhea (250g for large animals and 25g for small). To prevent, always provide fresh drinking water.', 1),
        (396, 393, 'How can I identify a good silage?', 'A good silage should have a sweet smell and is light brown in color
', 0),
        (397, 393, 'What quantity of water should I give my dairy cow?', 'General always provide fresh clean water. You may give water 3 times a day. A dairy cow should consume more about 35 litres of water in a day
', 0),
        (398, 393, 'What usually should form a concentrate if I want to compound it?', 'You may need to consult an expert. Concentrates should contain a proportion of protein (18-25%-oil seed cake i. e g/nut, cotton)  and energy (cereals-maize, barley wheat, bran etc) components. Also add 2% mineral mixture.
', 0),
        (399, 393, 'How can I change my cow feed?', 'Generally it should be done gradually. If you are introducing a concentrate, you can do that gradually by putting small quantity in the milk you collected. When the calf takes the milk it will reach the concentrate and eat it
', 0),
        (400, 393, 'What care in terms of feeding do I give my dairy cow during pregnancy?', 'Feed the cow 2kg of concentrates daily for 2 months in addition to her normal grazing.
', 0),
        (401, 393, 'When do I start giving water to my calf?', 'After seven days of birth provide clean drinking water and hay or young fresh fodder in addition from milk from the mother.
', 0),
        (402, 393, 'What feed do I give my pregnant cow', '2 month before calving feed the cow with 2kg per day of concentrates in addition to her normal grazing
', 0),
        (403, 393, 'What quantity of feed and water do I give my cow daily?', 'Cattle on zero grazing should be provided with 40-60kg of forage and water should available always
', 0),
        (404, 393, 'Is there any way I can increase the milk yield of my cross breed cow?', 'If your cross breed is from a cow that is for milk production with good feeding it should give a good yield. Using more of good concentrates rather than just grass or fodder crops will give good milk yield
', 0),
        (405, 373, 'Vaccination', '', 1),
        (406, 405, 'What are the common vaccines available for cattle?', 'Black quarter vaccine, Contagious Bovine Pleuro-pneumonia vaccine (CBPPV), Hantavac, Anthrax spore Vaccine,
', 0),
        (407, 373, 'Routine practices', '', 1),
        (408, 407, 'What causes difficulty in birth?', 'The mother may be weak mother and unable to push, her cervix may not open, the baby may not be in correct position, the baby in the womb may be dead and bloated, the baby may be too big', 1),
        (409, 407, 'My cow is having difficulty standing after delivery. ', 'It is possible that it is tired, may have damaged muscles or nerves, she may have low calcium in her blood. Consult a Veterinary Doctor.', 1),
        (410, 407, 'When should I give my cattle her first worm medicine?', 'You give the first worm tablet in the first 3 or 4 months. You then give every 3 months until when its one year old. It is there recommended that you deworm 3 times a year in adult or twice (At the beginning and the end of raining season)
', 0),
        (411, 407, 'How often should I trim the hoof?', 'Check to see annually if the hoof has overgrown and trim
', 0),
        (412, 407, 'How do I control ticks my cow?', 'There is an injection that takes care of internal and external parasites. There are chemicals you can apply on their body or spray/dip the cow. You will need to consult with your vet for advise/direction
', 0),
        (413, 407, 'At what age do I dehorn my cow?', 'Cows can be dehorned at 4 days of age particularly to avoid much bleeding. It is usually done using caustic soda. In the case of traumatic injury it can be done by a vet at any age
', 0),
        (414, 407, 'Do I need to keep record as its done in poultry?', 'Yes. Its necessary to keep record as this will help you with information which of the cow to select for breeding based on previous performance record. It helps you know the age of the animal (which will be useful for vaccination, weaning and marketing). It will help you know when to breed, remove those not producing well etc.
', 0),
        (415, 407, 'How do I restrain my cow to carry out treatment, hoof trimming etc?', 'Usually the person managing may know how to restrain them. You will however need a crush on the farm to keep animals securely when you want to treat, spray etc.
', 0),
        (416, 373, 'Diseases', '', 1),
        (417, 416, 'How do I know that my animal/s is/are sick?', 'When you notice the following; your animal refuses to eat, abnormal movement, lying down, watery stool, blood in urine and feces, vomiting, jaundice, emaciation, not growing properly and many abnormal signs.', 1),
        (418, 416, 'My cow brings out too much saliva from the mouth', 'Your animal may have bad teeth, fever, wounds in the mouth, something might be choking it, presence of foreign body in the month. Grab the tongue, check for sores/wounds or if something is stock in the throat. Rinse the mouth with disinfectant if it’s a sore. Administer antibiotic injection preferably Penstrep. Also give the animal some soft feed.', 1),
        (419, 416, 'I have observed some occasion where too much gas collects in my cows stomach (bloating) leading to death.', 'It might have eaten bad food, may be due to sudden change in diet, or have eaten poison.', 1),
        (420, 416, 'Sometimes my animal passes hard stool.', 'It may be due to eating food without enough water or not eating enough roughage (Constipation)', 1),
        (421, 416, 'My animal has gone for more than two days without passing stool; what is the cause?', 'If the animal has been eating, check if it has eaten dry food without water. Give enough fresh water for animal to drink, give fresh green grass or other roughages cooking oil, mineral oil 1-4 litres of oil, Magnesium sulphate (MgSO4).', 1),
        (422, 416, 'My cow has stopped eating its cud and is not eating properly.', 'This means that the cow has no good digestion. It may be due to feeding too many antibiotics. The cow may be having constipation. It may be due to “hardware disease” caused by ingestion of sharp object if you see that the animal is in pain and grunt. Use antibiotics, provide fresh green grass and give VitB inj. If there is no improvements consult your veterinary doctor for further examination.  ', 1),
        (423, 416, 'Sometimes I see one or two animals not eating, will be restless, rolling, kicking the belly, sweating, unable to pass stool and sitting like a dog.', 'The animal may be in pain called colic. Give pain killers like aspirin, paracetamol or Novalgin. Give some oil or MgSO4 (Consult your vet if the condition persists)', 1),
        (424, 416, 'Animal passing loose/watery stool for more than 3 days.', 'The animal may have parasites in the stomach, have eaten bad food or water, or contacted viruses or bacteria. There may have been a sudden change in diet or have eaten poison or dangerous plants. Give a lot of water, give parasitic drugs and give antibiotics. If the animal looks sick and has fever, the diarrhea is probably caused by bacteria or viruses. Call a veterinary doctor.', 1),
        (425, 416, 'Stool is red or black in color but no diarrhoea.', 'There may be bleeding into the digestive tract. This may also be due to poison. If the animal is not sick and no fever the diarrhea may be due to a change in feed or too much rich feed. Give plenty water, give small amounts of fluid frequently until the animal starts to urinate normally. Give kaolin and antibiotics (sulphadimidine) Consult your vet if the condition persists.', 1),
        (426, 416, 'I have noticed coughing and difficulty in breathing in my herd of cattle with those affected unable eat, aving nasal discharges and lag behind (standing quiet)', 'Your cattle may be aving pneumonia (Contagious bovine pleura-pneumonia) caused by a bacteria.  It is spread in the droplets discharged from nose of infected cattle. Control of the disease is by vaccination and slaughter or quarantine of affected animal.  There is no available treatment for the disease
', 0),
        (427, 416, 'What causes teat swelling and obstruction and sometimes udder becomes hard? How can I prevent or handle it?', 'It is usually caused by improper milking or bruises to the udder. Certain bacteria may contribute to the cuse of this condition Treatment with antibiotics must commenced early
', 0),
        (428, 416, 'What may be the cause the appearance of hard/firm swelling (lumps) that in some cases are generalized with the animal unable to eat well and having discharge from the nose. The condition is also noticed in sheep and goats in the herd', 'This may be a viral disease that is transmitted by mosquitoes and other biting insects e.g stomoxys. There is vaccine for the control of the disease. Treatment is only to prevent secondary bacteria infection.
', 0),
        (429, 416, 'What is the cause of excessive salivation and sometimes lameness with loss of body weight and reduced milk. More so affected pregnant cow usually abort', 'The cattle may be having Foot and mouth Disease. It is caused by a viral disease and has no treatment. Antibiotics can be used to prevent secondary bacterial infection. Wound dressing of Blisters/ulcers can be carried out.
', 0),
        (430, 416, 'A particular condition has been reported in nearby farms where cattle die suddenly and blood oozes from anus, nose and mouth', 'Consult with your vet doctor. The treatment may be difficult; penicillin is indicated at early stage of the disease. Dead animals should not be opened rather tey should be burned. Vaccinate animals to prevent occurrence of the disease
', 0),
        (431, 416, 'How do I handle a disease in cattle sowing nervous signs such as muscle twitching and the animal walking in circles and in some paddling their legs while lying', 'This may be an infection that is transmitted by ticks. It can be treated using antibiotics (tetracycline) and can be prevented by proper tick control
', 0),
        (432, 416, 'My calf have been passing a watery feces; how can I handle it?', 'When you notice that withdraw milk from the calf and provide clean water three times a day; on the second day give half the normal ration of milk plus water and glucose; do that on the 3rd day also and return to normal milk ration on the fourth day
', 0),
        (433, 416, 'What should I do when calving is overdue?', 'When calving is over due (by more than one week) call a veterinary doctor
', 0),
        (434, 416, 'When should I call a veterinary doctor during calving?', 'Calving normally occurs without difficulty. However if there is a long delay between the breaking of the water in uterus and the first sight of part of the fetus or if the calving takes more than 3 hours after some part of the young is seen or if the calf is not coming out in a normal position call a veterinary doctor', 0),
        (435, 373, 'Marketing', '', 1),
        (436, 269, 'Pigs', '', 0),
        (437, 436, 'Housing', '', 1),
        (438, 437, 'What precaution should I take in housing farrowing sow and the piglet', 'Bring the sow one week prior to farrowing to the farrowing pen where the sow can stay for 5-8weeks. The piglets are weaned by removing the sow. Confine the sow to a farrowing crate a few days before to a week after birth. The piglets can remain in the farrowing pen after weaning until about 12 weeks
', 0),
        (439, 437, 'What type of housing is appropriate for rearing pigs?', 'Pigs require simple housing free from draught and the floor well drained or concreted. You can have a simple semi-covered pens constructed with blocks or timber. The walls must be provided with large openings to provide sufficient air in hot period. Several pens can be arranged in rows.  A fenced paddock where water and feed is provided can suffice. The ground should be well drained and sufficient distance from living/residential areas. It should have an east-west orientation
', 0),
        (442, 436, 'Breeding', '', 1),
        (443, 442, 'I got my pigs from the open pig market close to our community but I am thinking of replacing them with improved breeds from a modern farm. What are the problems I might face with the improved breed.', 'While improved breeds of pigs are usually faster growers, your local breeds are likely to be more disease resistant. It would be wiser for you to get cross breeds I.e. breeds that combine traits from both local and improved breeds.', 1),
        (444, 442, 'At what point can I mate my growing female pigs?', 'Growing female pigs are called gilts. Those coming on heat for their first time should not be served immediately. They are still too young and their bodies are not yet strong enough to carry and deliver a good litter.', 1),
        (445, 442, 'How do I know that my pregnant pig is ready to give birth?', 'In the last 14 days of pregnancy the udder will increase in size. It feels firmer, and the nipples stand out more towards the end of the pregnancy. When the pregnant pig eventually becomes very restless, it may be a sign that it would soon give birth. About a day before the birth of the first piglet, the udder will start to look much redder.', 1),
        (446, 442, 'What preparations do I need to make before the delivery?', 'At about the expected delivery date the sow should be put in a pen of her own, which should be disinfected first. It should be served adequate feed and water. Sufficient straw should be provided for her to make a nest for the piglets. It is more advisable to use green fodder to avoid any form of constipation.', 1),
        (447, 442, 'At what age does a sow reach sexual maturity and is ready for breeding?', '4-5months, but first service should be at 8 months when the weight is between 100 and 130kg
', 0),
        (448, 442, 'How long will it take for a sow to come on heat after weaning', 'After weaning a sow can come on heat within 5-7 days and at 3weeks interval until successful mating/conception
', 0),
        (449, 442, 'My sow has started breeding for almost 3 years now and wondering if I should sell her off?', 'A sow has a productive life of 4-5years. You may therefore still keep her 2 more years unless if you observe certain changes that has cause reduced productivity.
', 0),
        (450, 442, 'How do I know that my sow is on heat?', 'You will observe general restlessness, vulva turns red and swollen, white mucous discharge. She will be willing to stand to be mounted by the male. After the heat she will not stand to be mounted
', 0),
        (451, 442, 'How long does the heat period of pigs last?', 'The heat period of sows last for 5 days only. The real heat last for 40-60hours.
', 0),
        (452, 442, 'My sow and the boar are in separate areas; should I take the male to the sow now that she is on heat?', 'Take the sow to the boar: this is less upsetting to sow. Put them together not before feeding. The boar should serve twice with an interval of 12hours.
', 0),
        (453, 442, 'How do I know that my sow has conceived after mating?', 'If the sow did not conceive,  she will return on heat in about 3weeks time. So when she has not come on heat after 3 weeks it may suggest that she has conceived
', 0),
        (454, 442, 'I mated my sow 2 months ago; how long does it take before my sow litter?', 'It usually takes 114 days that is 3months, 3 weeks, 3 days.
', 0),
        (455, 442, 'What necessary preparation should I make before farrowing?', 'Farrowing pen should be dry and free of drought. Clean the farrowing pen roughly, and soap with strong disinfectant. Apply with wash mixed with Gamma BHCN similar insecticide to the pen with to control mange and lice at least 10 days before expected farrowing. Denorm the sow 2 weeks before the expected farrowing,
', 0),
        (456, 442, 'What characteristics should I look for when selecting a gilt for breeding?', 'Look for a gilt that have not less tha 12 teats; this will allow for having enough teat for large litter. Select gilt from sows that wean 9-10 piglets per litter and known to be good mothers. The pigs should be fast growers, have strong legs with adequate body length, developed hams and comparatively light heads. The boar is important in determining the quality of the herd. The boar should come from a fertile mother and a father whose other offspring are satisfactory, have sound feet, good full hams, uniform curve of the back and a good length; it should have at least 12 teats.
', 0),
        (457, 442, 'I bought a boar at 5 months and wants to know when I can start using it for mating?', 'It is advisable to wait until it is 8 months old. During the first two months of service it should mate only twice per week. Subsequently, the boar can serve at least 6 per week.
', 0),
        (458, 442, 'How many boar do I need in my pig farm?', 'You will need a ratio of 1 boar to 15 sows
', 0),
        (459, 442, 'Why do people want their pigs not to be too fat?', 'A fat sow will take longer time to come on heat. She is also more likely to crush her young piglets
', 0),
        (460, 442, 'My sow is pregnant and due to deliver, as a starter how do I prepare for the arrival of my piglets?', 'Try and heat up a small area with inferred lamp or 50 Walt electric bulb hung 30-40 cm above the piglets. It keeps the going pigs warm, prevents pneumonia and crushing and they stay under the lamp when not feeding. Provide chipped straw or saw dust on the floor. Wash the sow with soap and water to remove dirt. Move the sow to the farrowing pen 4-7 days before expected day of farrowing to get her familiarized
', 0),
        (461, 442, 'What should be the birth and weaning weight of piglets', 'Approximately 1.5kg birth weight and 16-18kg weaning weight
', 0),
        (462, 442, 'How many piglets should be weaned per year for a sow', 'At least 18 piglets
', 0),
        (479, 436, 'Feed and water', '', 1),
        (480, 479, 'What precaution should I take when trying to change my pigs feed?', 'Change their feed gradually over a period of 1 week or more; sudden change in feedstuffs may upset and prevent pigs from gaining weight.
', 0),
        (481, 479, 'Should I continue with the same feed I feed my sow with or I should change now that she is pregnant?', 'A week before service, give the sow/gilt 1kg of feed extra per day (standard is 2.5kg per day). Continue this for one week after service. During the last month of pregnancy give 0.5-1kg extra feed per day but decrease this gradually one week before farrowing and provide plenty of water to help prevent congested gut during farrowing.
', 0),
        (482, 479, 'What proportion of protein to energy content should my pigs feed contain?', 'Preferably 10-20% of the feed should be protein. Fattening pigs will require least protein while nursing sows and piglets on sow require most.
', 0),
        (483, 479, 'Can I include some minerals in my pigs feed?', 'You can add 0.5% each of bone meal, salt a vitamin and or calcium
', 0),
        (484, 479, 'I have heard some farmers adding salts to their pigs feed; is it proper?', 'Minerals are very important; it is important that the ration should contain some calcium and common salt. .
', 0),
        (485, 479, 'I want to go into piggery but not knowledgeable on what should constitute their feed', 'It is advisable to consult a professional. However, pig meal should contain both energy (e. g maize, wheat, rice barley, sorghum, oats, sweet potato, irish potato, cereals bran) and protein (cotton seed meals, soya bean meal foods, sesame-seed meal, blood meal, fish meal, peas, beans, groundnuts etc). In the case of both energy and protein foodstuffs, it is best to mix a number of different types and not to feed one type alone. About 10-20% of the mixture should be protein food. The mixture should include0.5% of each of the following; bone meal, salt, a vitamin mixture and calcium
', 0),
        (486, 479, 'What the common vaccines available for pigs?', 'Young piglets from 10days should have a high protein feed available to them. This has to be fed in a small creep or areas where the mother cannot eat the feed.
', 0),
        (487, 479, 'What proportion of energy and protein is needed for nursing sows?', 'Nursing sow require more of protein than energy source feed
', 0),
        (496, 436, 'Vaccination', '', 1),
        (497, 496, 'Why is my vet insisting that I administer iron injection to my piglets?', 'Piglets may develop a serious shortage of iron in the blood because the mother’s milk does not contain enough iron to cover the piglets. There is need to administer an iron injection to supplement.', 1),
        (498, 496, 'What the common vaccines available for pigs?', 'There are many vaccines but are not commonly available in  Nigeria
', 0),
        (500, 436, 'Routine practices', '', 1),
        (501, 500, 'My grower pigs are not growing as fast as I expect. What could be the problem and what should I do about it?', 'Confirm the growth performance of the parent stock. If the parents are fast growers then you have to feed them a balanced diet, sufficient water and ensure regular deworming. If the problem persists, contact your extension agent.', 1),
        (502, 500, 'My neighbor insists that if I raise my pigs on free range I might make higher profits. I am considering releasing my pigs to scavenge.', 'While scavenging might appear to save you some cost, thus increasing profit, you would be contributing to polluting the environment, exposing your pigs to diseases and also exposing them to the possibility of being stolen. Piglets from scavenging pigs also have a slower growth rate. It would be better to find cheaper ways of feeding them.', 1),
        (503, 500, 'I noticed that my pig is not comfortable with the piglets breastfeeding. The breast feels hard and looks reddish. What is the problem?', 'This might be caused by an infection of the breast, also called Mastitis. You need to administer an antibiotic (Penicillin or Streptomycin) You can get a vet to do that for you.', 1),
        (504, 500, 'At what age should I castrate my male piglets?', 'Castration is best carried out within the first 2 weeks of age.', 1),
        (505, 500, 'At what age do I castrate my male pig?', 'You can castrate between 14-21 days of age
', 0),
        (506, 500, 'At what age do I give iron to my piglets', 'Iron helps in preventing piglet anemia. Iron dextran are given between one and seven days and repeated after a week. It is usually given to pigs raised on concrete floor.
', 0),
        (507, 500, 'At what age do I clip my pigs teeth?', 'Teeth clipping (canine and premolar teeth) should be done as soon as they are given birth (within 24hrs). This is done to prevent injuries to mothers breast and other litter mates
', 0),
        (511, 436, 'Diseases', '', 1),
        (512, 511, 'I had a disease incidence that wiped out all my flock some time ago. What kind of disease could that be and what can I do to avoid a repeat? ', 'You most likely had an incidence of African Swine Fever. There is no known vaccine or treatment for now. You can however take some steps to minimize the risk of a repeat. Make sure you have foot deeps at the entrances of your pens. Avoid visiting other farms. Be quick to contact a vet as soon as you notice symptoms of disease on your farm. ', 1),
        (513, 511, 'I learned that I should bath my boar before mating but do not know why.', 'You can wash the boar with soap and water every 4 months and spray for lice and mange to prevent it from transferring disease to the sow during mating
', 0),
        (514, 436, 'Marketing', '', 1),
        (515, 514, 'What should be the marketing age of pigs', 'Marketing age is from 6 month. At that age the pig should be approximately weighing 100kg', 0),
        (517, 269, 'Dogs', '', 0),
        (518, 517, 'Housing', '', 1),
        (519, 517, 'Breeding', '', 1),
        (520, 519, 'My bitch is 9 month old and I have started seeing signs of heat should I mate her?', 'Female dogs reach maturity between 10 and 12 month. However it is recommended that you do not mate her when she comes on heat the first time.  ', 1),
        (521, 519, 'I have mated my bitch for 3 consecutive times and she has not conceived.', 'The timing of the mating may be wrong. The bitch or the male may have fertility problem. Next time try a different male or change the timing of the mating. You can get a male dog to be in the house to solve the problem. Also take the dog for check-up', 1),
        (522, 519, 'Why is my bitch still discharging blood even though she was mated?', 'It is possible you mated the dog too early. You may need to take the bitch for examination by a veterinarian', 1),
        (523, 519, 'My dog has reached 61 days of pregnancy and there is no sign of delivery?', 'When a dog gets pregnant, it will take 60 days for it to deliver. Sometimes it may take up to 65 days. If she is still eating well and active, then there’s no problem. If she has stopped eating and is inactive for two days then consult your vet doctor.', 1),
        (524, 519, 'My bitch died a day after delivery, what should I do for the puppies to survive?', 'Keep them in a warm place. If there is a bitch that just delivered you can take them to her to get milk. You can use milk for babies and prepare with glucose for them.', 1),
        (525, 519, 'What makes bitches to suddenly lose weight after whelping?', 'A Bitch during breastfeeding (after delivery) needs much energy for herself and for the puppies. The bitch should therefore be fed four times her normal meal. If that is not done she would significantly reduce weight', 1),
        (526, 517, 'Feed and water', '', 1),
        (527, 526, 'How many times should I feed my adult dog in a day?', 'Once the feed is balanced, an adult dog can get all it requires in a single meal therefore you can be fed once a day. Some (especially those that feed on left-over table food) feed 2-3 times a day.', 1),
        (528, 526, 'My bitch is pregnant and getting to her late gestation. Should the frequency of feeding be the same as before?', 'Smaller portions of more frequent but rich meals may be better. At late gestation the uterus occupies space and may not allow for bulk feeding.', 1),
        (529, 526, 'My bitch was mated a month ago. Can I supplement her feed with vitamins and minerals to avoid disorder?', 'Once the diet is balanced supplementation with vitamins or minerals is not required', 1),
        (530, 526, 'Should I increase the quantity of food for my pregnant bitch?', 'It depends on the stage of pregnancy. If she is in her early stage of pregnancy, it may not be necessary! You may only increase the quantity at the second half of gestation as increasing at early pregnancy may lead to obesity.', 1),
        (531, 526, 'My bitch is pregnant and close to delivery and is not eating as before; what should I do?', 'Usually at late pregnancy most bitches would have reduced appetite. You can give her normal ration of smaller portions  at a time.', 1),
        (532, 526, 'What time of the day is best to feed my dog?', 'Morning time is usually better over late morning or afternoon and never late evenings. Most importantly, whatever the timing, keep at it and be consistent.', 1),
        (533, 526, 'When do I start supplementary feeding for my puppies?', ' If milk supply is not adequate and there are many litters, supplementary feeding can commence from 3 weeks. Most puppies begin taking semi-solid or solid food from 3-4 weeks.', 1),
        (534, 517, 'Vaccination', '', 1),
        (535, 517, 'Routine practices', '', 1),
        (536, 535, 'I want to keep exotic dogs but not sure the one appropriate for security purposes', 'There are many of such dogs but those that are common and good for security purposes are: German shepherd, Caucasian and Rottweiler', 1),
        (537, 517, 'Diseases', '', 1),
        (538, 537, 'For some days now my dog has been scratching its body. I observed partial loss of hair and do not know what to do?', 'Presence of some parasites (mites, lice) on the body can cause itching and make an animal to scratch its body leading to loss of hair. Sometimes it could be due to infection caused by bacteria. Also when your dog reacts or is allergic to some materials it may cause itching and loss of hair. Consult with your vet doctor for treatment', 1),
        (539, 537, 'I usually see small raised areas on the body of my dogs and when pressed worms pop out; what causes it?', 'This is caused by larva of some flies. If the place where your dog lives is always dirty (the feces and urine) it attracts flies and the flies lay worms that enter the skin of the dog. Always keep the place where your dog stay clean.', 1),
        (540, 517, 'Marketing', '', 1),
        (541, 269, 'Rabbits', '', 0),
        (542, 541, 'Housing', '', 1),
        (543, 542, 'What type of housing/what should I consider when providing house for my rabbits?', 'Ensure the house protects them from rain, wind and sun. It should be strong enough to give protection against predators. In hot areas, build a frame and cover with wire netting; 2.5cm mesh wire netting can be used for the top and sides while 1-1.5cm wire mesh can be used for the floor. The floor can be of timber but holes must be drilled to provide for drainage. Provide some shade using a thatched roof shelter on poles. On cooler areas make a hutch of timber for sleeping area and a wire mesh outside run
', 0),
        (544, 542, 'Should I put my buck in the doe’s hutch now that she is in her season?', 'Always put the Doe into the buck’s hutch. Never put the buck into the doe’s hutch as this may upset the buck.', 0),
        (545, 541, 'Breeding', '', 1),
        (546, 545, 'I want to raise rabbits for sale; how do I select my breeding stock?', 'If you know someone doing the business, you may ask him/her to direct you where to get good breeding stock. The stock should be selected from good mothers based on good size and shape and ability to give birth to good litter.', 1),
        (547, 545, 'My rabbits are 3 months old. I want to know the right age for breeding?', 'The right age for breeding rabbits is between 5 and 7 months.', 1),
        (548, 545, 'I perceive that my female rabbit is pregnant. I want to know how long it takes for her to deliver from conception?', 'Pregnancy in rabbits last between 30 and 32 days. Approximately one month from conception.', 1),
        (549, 545, 'What ratio of male to female rabbits should I keep?', 'One buck (male) to a between 8 and 10 does (females)
', 0),
        (550, 545, 'How do I know that my female rabbit is in her breeding season?', 'Usually some days to kindling the doe may go off feed. You will notice her to be restless, reproductive organs become swollen, and she will be rubbing against the walls and food containers. She may be throwing herself on one side and trying to contact the rabit in the next pen
', 0),
        (551, 545, 'How many litters should I have per doe per year?', 'Allow four litters per doe per year.
', 0),
        (552, 545, 'My doe litters between 8-10 per litter and seems they are too many for her?', 'Preferably allow only seven young per litter as more will be too much for the mother.
', 0),
        (553, 545, 'How long should it take before mating my doe after weaning?', 'The doe can be mated almost immediately after weaning her young
', 0),
        (554, 541, 'Feed and water', '', 1),
        (555, 554, 'What quantity of water should I provide my rabbits?', 'Ensure clean, fresh water is always available.
', 0),
        (556, 554, 'How many times should I feed my rabbits?', 'Give them feed twice a day preferably early morning and evening.
', 0),
        (557, 541, 'Vaccination', '', 1),
        (558, 557, 'I learnt that there is a Coccidiosis vaccine in chickens. Can I try it on my rabbits?', 'We do not have records of the use of this vaccine in rabbits. Try to take preventive measures for now.
', 0),
        (559, 541, 'Routine practices', '', 1),
        (560, 559, 'What age should I wean my rabbits?', 'weaning should be done 8 weeks
', 0),
        (561, 559, 'How do I prepare my doe for kindling?', 'Provide very soft hay for lining her nest box. She will usually add her fur that she pulls from her breast area.
', 0),
        (562, 559, 'At what age should I wean my rabbits?', 'Rabbits should be weaned at 8 weeks of age.
', 0),
        (563, 559, 'How do I wean my rabbits?', 'Remove the doe to another hutch and leave the young rabbits in the old hutch as this will upset them less.
', 0),
        (564, 559, 'What type of feed are good for rabbits?', 'Carrots, dried cassava chips, lettuce, cabbage, cowpeas, groundnut vines, green oats, sweet potato vines, turnips and many other grasses
', 0),
        (565, 559, 'Should I give my rabbits only greens and roots?', 'Rabbits do moderately well on greens and roots but it will be good to give the concentrates (pellets or meal containing cereals mixed with a protein feed such as cotton-seed cake, groundnut cake or fish meal)
', 0),
        (566, 541, 'Diseases', '', 1),
        (567, 566, 'Recently, 3 out of 10 of my rabbits passed loose stool/diarrhea and have their abdomen swollen/distended; what do I do?', 'So many things cause this condition. It may be due to a problem with the feed you gave them recently or they might have coccidiosis or worms. If you started noticing it after a change in feed then it may be their feed. Give drug for coccidiosis and deworm them. Coccidiosis occurs in overcrowded and dirty conditions; ensure clean environment, avoid contaminating feeds and water by rabbit droppings.', 1),
        (568, 566, 'What type of feed/food may poisonous for my rabbits?', 'Do not give them tomatoes or Irish potatoes  vines as these are poisonous to them
', 0),
        (569, 566, 'What should I do when my rabbits are showing signs of sneezing and nasal discharges?', 'Your rabbits may be suffering from pneumonia. Antibiotics in water/feed may help in controlling the condition
', 0),
        (570, 541, 'Marketing', '', 1),
        (571, 570, 'What age is an adult rabbit ready for market?', 'Rabbits should be ready for the table at four months of age. For the last month increase the grain feed and decrease the green feed. This should give you a good price.
', 0);

-- CreateTable
CREATE TABLE "android_metadata" (
    "locale" TEXT DEFAULT E'en_US'
);
