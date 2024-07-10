Red [
	description: {Tests for "Kindergarten Garden" Exercism exercise}
	author: "loziniak"
]

#include %testlib.red

test-init/limit %kindergarten-garden.red 1
; test-init/limit %.meta/example.red 1						; test example solution

canonical-cases: [#[
    description: "garden with single student"
    input: #[
        diagram: "RC/nGG"
        student: "Alice"
    ]
    expected: ["radishes" "clover" "grass" "grass"]
    function: "plants"
    uuid: "1fc316ed-17ab-4fba-88ef-3ae78296b692"
] #[
    description: "different garden with single student"
    input: #[
        diagram: "VC/nRC"
        student: "Alice"
    ]
    expected: ["violets" "clover" "radishes" "clover"]
    function: "plants"
    uuid: "acd19dc1-2200-4317-bc2a-08f021276b40"
] #[
    description: "garden with two students"
    input: #[
        diagram: "VVCG/nVVRC"
        student: "Bob"
    ]
    expected: ["clover" "grass" "radishes" "clover"]
    function: "plants"
    uuid: "c376fcc8-349c-446c-94b0-903947315757"
] #[
    description: "second student's garden"
    input: #[
        diagram: "VVCCGG/nVVCCGG"
        student: "Bob"
    ]
    expected: ["clover" "clover" "clover" "clover"]
    function: "plants"
    uuid: "2d620f45-9617-4924-9d27-751c80d17db9"
] #[
    description: "third student's garden"
    input: #[
        diagram: "VVCCGG/nVVCCGG"
        student: "Charlie"
    ]
    expected: ["grass" "grass" "grass" "grass"]
    function: "plants"
    uuid: "57712331-4896-4364-89f8-576421d69c44"
] #[
    description: "for Alice, first student's garden"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Alice"
    ]
    expected: ["violets" "radishes" "violets" "radishes"]
    function: "plants"
    uuid: "149b4290-58e1-40f2-8ae4-8b87c46e765b"
] #[
    description: "for Bob, second student's garden"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Bob"
    ]
    expected: ["clover" "grass" "clover" "clover"]
    function: "plants"
    uuid: "ba25dbbc-10bd-4a37-b18e-f89ecd098a5e"
] #[
    description: "for Charlie"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Charlie"
    ]
    expected: ["violets" "violets" "clover" "grass"]
    function: "plants"
    uuid: "566b621b-f18e-4c5f-873e-be30544b838c"
] #[
    description: "for David"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "David"
    ]
    expected: ["radishes" "violets" "clover" "radishes"]
    function: "plants"
    uuid: "3ad3df57-dd98-46fc-9269-1877abf612aa"
] #[
    description: "for Eve"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Eve"
    ]
    expected: ["clover" "grass" "radishes" "grass"]
    function: "plants"
    uuid: "0f0a55d1-9710-46ed-a0eb-399ba8c72db2"
] #[
    description: "for Fred"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Fred"
    ]
    expected: ["grass" "clover" "violets" "clover"]
    function: "plants"
    uuid: "a7e80c90-b140-4ea1-aee3-f4625365c9a4"
] #[
    description: "for Ginny"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Ginny"
    ]
    expected: ["clover" "grass" "grass" "clover"]
    function: "plants"
    uuid: "9d94b273-2933-471b-86e8-dba68694c615"
] #[
    description: "for Harriet"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Harriet"
    ]
    expected: ["violets" "radishes" "radishes" "violets"]
    function: "plants"
    uuid: "f55bc6c2-ade8-4844-87c4-87196f1b7258"
] #[
    description: "for Ileana"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Ileana"
    ]
    expected: ["grass" "clover" "violets" "clover"]
    function: "plants"
    uuid: "759070a3-1bb1-4dd4-be2c-7cce1d7679ae"
] #[
    description: "for Joseph"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Joseph"
    ]
    expected: ["violets" "clover" "violets" "grass"]
    function: "plants"
    uuid: "78578123-2755-4d4a-9c7d-e985b8dda1c6"
] #[
    description: "for Kincaid, second to last student's garden"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Kincaid"
    ]
    expected: ["grass" "clover" "clover" "grass"]
    function: "plants"
    uuid: "6bb66df7-f433-41ab-aec2-3ead6e99f65b"
] #[
    description: "for Larry, last student's garden"
    input: #[
        diagram: "VRCGVVRVCGGCCGVRGCVCGCGV/nVRCCCGCRRGVCGCRVVCVGCGCV"
        student: "Larry"
    ]
    expected: ["grass" "violets" "clover" "violets"]
    function: "plants"
    uuid: "d7edec11-6488-418a-94e6-ed509e0fa7eb"
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
