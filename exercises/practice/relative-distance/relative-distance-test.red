Red [
	description: {Tests for "Relative Distance" Exercism exercise}
	author: "loziniak"
]

#include %testlib.red

test-init/limit %relative-distance.red 1
; test-init/limit %.meta/example.red 1						; test example solution

canonical-cases: [#[
    description: "Direct parent-child relation"
    input: #[
        familyTree: #[
            Vera: ["Tomoko"]
            Tomoko: ["Aditi"]
        ]
        personA: "Vera"
        personB: "Tomoko"
    ]
    expected: 1
    function: "degree-of-separation"
    uuid: "4a1ded74-5d32-47fb-8ae5-321f51d06b5b"
] #[
    description: "Sibling relationship"
    input: #[
        familyTree: #[
            Dalia: ["Olga" "Yassin"]
        ]
        personA: "Olga"
        personB: "Yassin"
    ]
    expected: 1
    function: "degree-of-separation"
    uuid: "30d17269-83e9-4f82-a0d7-8ef9656d8dce"
] #[
    description: "Two degrees of separation, grandchild"
    input: #[
        familyTree: #[
            Khadija: ["Mateo"]
            Mateo: ["Rami"]
        ]
        personA: "Khadija"
        personB: "Rami"
    ]
    expected: 2
    function: "degree-of-separation"
    uuid: "8dffa27d-a8ab-496d-80b3-2f21c77648b5"
] #[
    description: "Unrelated individuals"
    input: #[
        familyTree: #[
            Priya: ["Rami"]
            Kaito: ["Elif"]
        ]
        personA: "Priya"
        personB: "Kaito"
    ]
    expected: none
    function: "degree-of-separation"
    uuid: "34e56ec1-d528-4a42-908e-020a4606ee60"
] #[
    description: "Complex graph, cousins"
    input: #[
        familyTree: #[
            Aiko: ["Bao" "Carlos"]
            Bao: ["Dalia" "Elias"]
            Carlos: ["Fatima" "Gustavo"]
            Dalia: ["Hassan" "Isla"]
            Elias: ["Javier"]
            Fatima: ["Khadija" "Liam"]
            Gustavo: ["Mina"]
            Hassan: ["Noah" "Olga"]
            Isla: ["Pedro"]
            Javier: ["Quynh" "Ravi"]
            Khadija: ["Sofia"]
            Liam: ["Tariq" "Uma"]
            Mina: ["Viktor" "Wang"]
            Noah: ["Xiomara"]
            Olga: ["Yuki"]
            Pedro: ["Zane" "Aditi"]
            Quynh: ["Boris"]
            Ravi: ["Celine"]
            Sofia: ["Diego" "Elif"]
            Tariq: ["Farah"]
            Uma: ["Giorgio"]
            Viktor: ["Hana" "Ian"]
            Wang: ["Jing"]
            Xiomara: ["Kaito"]
            Yuki: ["Leila"]
            Zane: ["Mateo"]
            Aditi: ["Nia"]
            Boris: ["Oscar"]
            Celine: ["Priya"]
            Diego: ["Qi"]
            Elif: ["Rami"]
            Farah: ["Sven"]
            Giorgio: ["Tomoko"]
            Hana: ["Umar"]
            Ian: ["Vera"]
            Jing: ["Wyatt"]
            Kaito: ["Xia"]
            Leila: ["Yassin"]
            Mateo: ["Zara"]
            Nia: ["Antonio"]
            Oscar: ["Bianca"]
            Priya: ["Cai"]
            Qi: ["Dimitri"]
            Rami: ["Ewa"]
            Sven: ["Fabio"]
            Tomoko: ["Gabriela"]
            Umar: ["Helena"]
            Vera: ["Igor"]
            Wyatt: ["Jun"]
            Xia: ["Kim"]
            Yassin: ["Lucia"]
            Zara: ["Mohammed"]
        ]
        personA: "Dimitri"
        personB: "Fabio"
    ]
    expected: 9
    function: "degree-of-separation"
    uuid: "93ffe989-bad2-48c4-878f-3acb1ce2611b"
] #[
    description: "Complex graph, no shortcut, far removed nephew"
    input: #[
        familyTree: #[
            Aiko: ["Bao" "Carlos"]
            Bao: ["Dalia" "Elias"]
            Carlos: ["Fatima" "Gustavo"]
            Dalia: ["Hassan" "Isla"]
            Elias: ["Javier"]
            Fatima: ["Khadija" "Liam"]
            Gustavo: ["Mina"]
            Hassan: ["Noah" "Olga"]
            Isla: ["Pedro"]
            Javier: ["Quynh" "Ravi"]
            Khadija: ["Sofia"]
            Liam: ["Tariq" "Uma"]
            Mina: ["Viktor" "Wang"]
            Noah: ["Xiomara"]
            Olga: ["Yuki"]
            Pedro: ["Zane" "Aditi"]
            Quynh: ["Boris"]
            Ravi: ["Celine"]
            Sofia: ["Diego" "Elif"]
            Tariq: ["Farah"]
            Uma: ["Giorgio"]
            Viktor: ["Hana" "Ian"]
            Wang: ["Jing"]
            Xiomara: ["Kaito"]
            Yuki: ["Leila"]
            Zane: ["Mateo"]
            Aditi: ["Nia"]
            Boris: ["Oscar"]
            Celine: ["Priya"]
            Diego: ["Qi"]
            Elif: ["Rami"]
            Farah: ["Sven"]
            Giorgio: ["Tomoko"]
            Hana: ["Umar"]
            Ian: ["Vera"]
            Jing: ["Wyatt"]
            Kaito: ["Xia"]
            Leila: ["Yassin"]
            Mateo: ["Zara"]
            Nia: ["Antonio"]
            Oscar: ["Bianca"]
            Priya: ["Cai"]
            Qi: ["Dimitri"]
            Rami: ["Ewa"]
            Sven: ["Fabio"]
            Tomoko: ["Gabriela"]
            Umar: ["Helena"]
            Vera: ["Igor"]
            Wyatt: ["Jun"]
            Xia: ["Kim"]
            Yassin: ["Lucia"]
            Zara: ["Mohammed"]
        ]
        personA: "Lucia"
        personB: "Jun"
    ]
    expected: 14
    function: "degree-of-separation"
    uuid: "2cc2e76b-013a-433c-9486-1dbe29bf06e5"
] #[
    description: {Complex graph, some shortcuts, cross-down and cross-up, cousins several times removed, with unrelated family tree}
    input: #[
        familyTree: #[
            Aiko: ["Bao" "Carlos"]
            Bao: ["Dalia"]
            Carlos: ["Fatima" "Gustavo"]
            Dalia: ["Hassan" "Isla"]
            Fatima: ["Khadija" "Liam"]
            Gustavo: ["Mina"]
            Hassan: ["Noah" "Olga"]
            Isla: ["Pedro"]
            Javier: ["Quynh" "Ravi"]
            Khadija: ["Sofia"]
            Liam: ["Tariq" "Uma"]
            Mina: ["Viktor" "Wang"]
            Noah: ["Xiomara"]
            Olga: ["Yuki"]
            Pedro: ["Zane" "Aditi"]
            Quynh: ["Boris"]
            Ravi: ["Celine"]
            Sofia: ["Diego" "Elif"]
            Tariq: ["Farah"]
            Uma: ["Giorgio"]
            Viktor: ["Hana" "Ian"]
            Wang: ["Jing"]
            Xiomara: ["Kaito"]
            Yuki: ["Leila"]
            Zane: ["Mateo"]
            Aditi: ["Nia"]
            Boris: ["Oscar"]
            Celine: ["Priya"]
            Diego: ["Qi"]
            Elif: ["Rami"]
            Farah: ["Sven"]
            Giorgio: ["Tomoko"]
            Hana: ["Umar"]
            Ian: ["Vera"]
            Jing: ["Wyatt"]
            Kaito: ["Xia"]
            Leila: ["Yassin"]
            Mateo: ["Zara"]
            Nia: ["Antonio"]
            Oscar: ["Bianca"]
            Priya: ["Cai"]
            Qi: ["Dimitri"]
            Rami: ["Ewa"]
            Sven: ["Fabio"]
            Tomoko: ["Gabriela"]
            Umar: ["Helena"]
            Vera: ["Igor"]
            Wyatt: ["Jun"]
            Xia: ["Kim"]
            Yassin: ["Lucia"]
            Zara: ["Mohammed"]
        ]
        personA: "Wyatt"
        personB: "Xia"
    ]
    expected: 12
    function: "degree-of-separation"
    uuid: "46c9fbcb-e464-455f-a718-049ea3c7400a"
]]


foreach c-case canonical-cases [
	case-code: reduce [
		'expect c-case/expected compose [
			(to word! c-case/function) (values-of c-case/input)
		] 
	]

	test c-case/description case-code
]

test-results/print
