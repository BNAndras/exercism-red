Red [
	description: {Tests for Leap Exercism exercise}
	author: "BNAndras"
]

#include %testlib.red

test-init/limit %leap.red 1
; test-init/limit %.meta/example.red 1						; test example solution

canonical-cases: [#[
    description: "year not divisible by 4 in common year"
    input: #[
        year: 2015
    ]
    expected: false
    function: "leap"
    uuid: "6466b30d-519c-438e-935d-388224ab5223"
] #[
    description: "year divisible by 2, not divisible by 4 in common year"
    input: #[
        year: 1970
    ]
    expected: false
    function: "leap"
    uuid: "ac227e82-ee82-4a09-9eb6-4f84331ffdb0"
] #[
    description: "year divisible by 4, not divisible by 100 in leap year"
    input: #[
        year: 1996
    ]
    expected: true
    function: "leap"
    uuid: "4fe9b84c-8e65-489e-970b-856d60b8b78e"
] #[
    description: "year divisible by 4 and 5 is still a leap year"
    input: #[
        year: 1960
    ]
    expected: true
    function: "leap"
    uuid: "7fc6aed7-e63c-48f5-ae05-5fe182f60a5d"
] #[
    description: "year divisible by 100, not divisible by 400 in common year"
    input: #[
        year: 2100
    ]
    expected: false
    function: "leap"
    uuid: "78a7848f-9667-4192-ae53-87b30c9a02dd"
] #[
    description: "year divisible by 100 but not by 3 is still not a leap year"
    input: #[
        year: 1900
    ]
    expected: false
    function: "leap"
    uuid: "9d70f938-537c-40a6-ba19-f50739ce8bac"
] #[
    description: "year divisible by 400 is leap year"
    input: #[
        year: 2000
    ]
    expected: true
    function: "leap"
    uuid: "42ee56ad-d3e6-48f1-8e3f-c84078d916fc"
] #[
    description: "year divisible by 400 but not by 125 is still a leap year"
    input: #[
        year: 2400
    ]
    expected: true
    function: "leap"
    uuid: "57902c77-6fe9-40de-8302-587b5c27121e"
] #[
    description: "year divisible by 400 but not by 125 is still a leap year"
    input: #[
        year: 1800
    ]
    expected: false
    function: "leap"
    uuid: "c30331f6-f9f6-4881-ad38-8ca8c12520c1"
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
