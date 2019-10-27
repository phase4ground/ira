-- Quick and dirty code table generated from table.txt
--
-- Copyright 2019 Ahmet Inan <inan@aicodix.de>

use work.ldpc.all;

package table is
	type offsets is array (0 to locations_max-1) of offset_scalar;
	function init_offsets return offsets;
	type shifts is array (0 to locations_max-1) of shift_scalar;
	function init_shifts return shifts;
	type counts is array (0 to parities_max-1) of count_scalar;
	function init_counts return counts;
	subtype parities is positive range parities_min to parities_max;
	function init_parities return parities;
end package;

package body table is
	function init_offsets return offsets is
	begin
		return (
5, 63, 120, 120, 202, 312, 364, 366, 504, 520, 646, 696, 829, 867, 888, 1079,
6, 64, 121, 121, 203, 313, 365, 367, 505, 521, 647, 697, 830, 868, 889, 1056,
7, 65, 122, 122, 204, 314, 366, 368, 506, 522, 624, 698, 831, 869, 890, 1057,
8, 66, 123, 123, 205, 315, 367, 369, 507, 523, 625, 699, 832, 870, 891, 1058,
9, 67, 124, 124, 206, 316, 368, 370, 508, 524, 626, 700, 833, 871, 892, 1059,
10, 68, 125, 125, 207, 317, 369, 371, 509, 525, 627, 701, 834, 872, 893, 1060,
11, 69, 126, 126, 208, 318, 370, 372, 510, 526, 628, 702, 835, 873, 894, 1061,
12, 70, 127, 127, 209, 319, 371, 373, 511, 527, 629, 703, 836, 874, 895, 1062,
13, 71, 128, 128, 210, 320, 372, 374, 504, 512, 630, 704, 837, 875, 896, 1063,
14, 48, 129, 129, 211, 321, 373, 375, 505, 513, 631, 705, 838, 876, 897, 1064,
15, 49, 130, 130, 212, 322, 374, 376, 506, 514, 632, 706, 839, 877, 898, 1065,
16, 50, 131, 131, 213, 323, 375, 377, 507, 515, 633, 707, 816, 878, 899, 1066,
17, 51, 132, 132, 214, 324, 376, 378, 508, 516, 634, 708, 817, 879, 900, 1067,
18, 52, 133, 133, 215, 325, 377, 379, 509, 517, 635, 709, 818, 880, 901, 1068,
19, 53, 134, 134, 192, 326, 378, 380, 510, 518, 636, 710, 819, 881, 902, 1069,
20, 54, 135, 135, 193, 327, 379, 381, 511, 519, 637, 711, 820, 882, 903, 1070,
21, 55, 136, 136, 194, 328, 380, 382, 512, 520, 638, 712, 821, 883, 904, 1071,
22, 56, 137, 137, 195, 329, 381, 383, 513, 521, 639, 713, 822, 884, 905, 1072,
23, 57, 138, 138, 196, 330, 360, 382, 514, 522, 640, 714, 823, 885, 906, 1073,
0, 58, 139, 139, 197, 331, 361, 383, 515, 523, 641, 715, 824, 886, 907, 1074,
1, 59, 140, 140, 198, 332, 360, 362, 516, 524, 642, 716, 825, 887, 908, 1075,
2, 60, 141, 141, 199, 333, 361, 363, 517, 525, 643, 717, 826, 864, 909, 1076,
3, 61, 142, 142, 200, 334, 362, 364, 518, 526, 644, 718, 827, 865, 910, 1077,
4, 62, 143, 143, 201, 335, 363, 365, 519, 527, 645, 719, 828, 866, 911, 1078,
7, 11, 144, 172, 302, 336, 339, 466, 528, 563, 591, 712, 720, 737, 888, 912,
8, 12, 145, 173, 303, 337, 340, 467, 529, 564, 592, 713, 721, 738, 889, 913,
9, 13, 146, 174, 304, 338, 341, 468, 530, 565, 593, 714, 722, 739, 890, 914,
10, 14, 147, 175, 305, 339, 342, 469, 531, 566, 594, 715, 723, 740, 891, 915,
11, 15, 148, 176, 306, 340, 343, 470, 532, 567, 595, 716, 724, 741, 892, 916,
12, 16, 149, 177, 307, 341, 344, 471, 533, 568, 596, 717, 725, 742, 893, 917,
13, 17, 150, 178, 308, 342, 345, 472, 534, 569, 597, 718, 726, 743, 894, 918,
14, 18, 151, 179, 309, 343, 346, 473, 535, 570, 598, 719, 720, 727, 895, 919,
15, 19, 152, 180, 310, 344, 347, 474, 536, 571, 599, 696, 721, 728, 896, 920,
16, 20, 153, 181, 311, 345, 348, 475, 537, 572, 576, 697, 722, 729, 897, 921,
17, 21, 154, 182, 288, 346, 349, 476, 538, 573, 577, 698, 723, 730, 898, 922,
18, 22, 155, 183, 289, 347, 350, 477, 539, 574, 578, 699, 724, 731, 899, 923,
19, 23, 156, 184, 290, 348, 351, 478, 540, 575, 579, 700, 725, 732, 900, 924,
0, 20, 157, 185, 291, 349, 352, 479, 541, 552, 580, 701, 726, 733, 901, 925,
1, 21, 158, 186, 292, 350, 353, 456, 542, 553, 581, 702, 727, 734, 902, 926,
2, 22, 159, 187, 293, 351, 354, 457, 543, 554, 582, 703, 728, 735, 903, 927,
3, 23, 160, 188, 294, 352, 355, 458, 544, 555, 583, 704, 729, 736, 904, 928,
0, 4, 161, 189, 295, 353, 356, 459, 545, 556, 584, 705, 730, 737, 905, 929,
1, 5, 162, 190, 296, 354, 357, 460, 546, 557, 585, 706, 731, 738, 906, 930,
2, 6, 163, 191, 297, 355, 358, 461, 547, 558, 586, 707, 732, 739, 907, 931,
3, 7, 164, 168, 298, 356, 359, 462, 548, 559, 587, 708, 733, 740, 908, 932,
4, 8, 165, 169, 299, 336, 357, 463, 549, 560, 588, 709, 734, 741, 909, 933,
5, 9, 166, 170, 300, 337, 358, 464, 550, 561, 589, 710, 735, 742, 910, 934,
6, 10, 167, 171, 301, 338, 359, 465, 551, 562, 590, 711, 736, 743, 911, 935,
72, 87, 168, 222, 274, 360, 385, 419, 506, 552, 561, 744, 757, 815, 912, 936,
73, 88, 169, 223, 275, 361, 386, 420, 507, 553, 562, 745, 758, 792, 913, 937,
74, 89, 170, 224, 276, 362, 387, 421, 508, 554, 563, 746, 759, 793, 914, 938,
75, 90, 171, 225, 277, 363, 388, 422, 509, 555, 564, 747, 760, 794, 915, 939,
76, 91, 172, 226, 278, 364, 389, 423, 510, 556, 565, 748, 761, 795, 916, 940,
77, 92, 173, 227, 279, 365, 390, 424, 511, 557, 566, 749, 762, 796, 917, 941,
78, 93, 174, 228, 280, 366, 391, 425, 512, 558, 567, 750, 763, 797, 918, 942,
79, 94, 175, 229, 281, 367, 392, 426, 513, 559, 568, 751, 764, 798, 919, 943,
80, 95, 176, 230, 282, 368, 393, 427, 514, 560, 569, 752, 765, 799, 920, 944,
72, 81, 177, 231, 283, 369, 394, 428, 515, 561, 570, 753, 766, 800, 921, 945,
73, 82, 178, 232, 284, 370, 395, 429, 516, 562, 571, 754, 767, 801, 922, 946,
74, 83, 179, 233, 285, 371, 396, 430, 517, 563, 572, 744, 755, 802, 923, 947,
75, 84, 180, 234, 286, 372, 397, 431, 518, 564, 573, 745, 756, 803, 924, 948,
76, 85, 181, 235, 287, 373, 398, 408, 519, 565, 574, 746, 757, 804, 925, 949,
77, 86, 182, 236, 264, 374, 399, 409, 520, 566, 575, 747, 758, 805, 926, 950,
78, 87, 183, 237, 265, 375, 400, 410, 521, 552, 567, 748, 759, 806, 927, 951,
79, 88, 184, 238, 266, 376, 401, 411, 522, 553, 568, 749, 760, 807, 928, 952,
80, 89, 185, 239, 267, 377, 402, 412, 523, 554, 569, 750, 761, 808, 929, 953,
81, 90, 186, 216, 268, 378, 403, 413, 524, 555, 570, 751, 762, 809, 930, 954,
82, 91, 187, 217, 269, 379, 404, 414, 525, 556, 571, 752, 763, 810, 931, 955,
83, 92, 188, 218, 270, 380, 405, 415, 526, 557, 572, 753, 764, 811, 932, 956,
84, 93, 189, 219, 271, 381, 406, 416, 527, 558, 573, 754, 765, 812, 933, 957,
85, 94, 190, 220, 272, 382, 407, 417, 504, 559, 574, 755, 766, 813, 934, 958,
86, 95, 191, 221, 273, 383, 384, 418, 505, 560, 575, 756, 767, 814, 935, 959,
0, 10, 186, 192, 296, 384, 445, 499, 576, 626, 666, 732, 768, 844, 936, 960,
1, 11, 187, 193, 297, 385, 446, 500, 577, 627, 667, 733, 769, 845, 937, 961,
2, 12, 188, 194, 298, 386, 447, 501, 578, 628, 668, 734, 770, 846, 938, 962,
3, 13, 189, 195, 299, 387, 448, 502, 579, 629, 669, 735, 771, 847, 939, 963,
4, 14, 190, 196, 300, 388, 449, 503, 580, 630, 670, 736, 772, 848, 940, 964,
5, 15, 191, 197, 301, 389, 450, 480, 581, 631, 671, 737, 773, 849, 941, 965,
6, 16, 168, 198, 302, 390, 451, 481, 582, 632, 648, 738, 774, 850, 942, 966,
7, 17, 169, 199, 303, 391, 452, 482, 583, 633, 649, 739, 775, 851, 943, 967,
8, 18, 170, 200, 304, 392, 453, 483, 584, 634, 650, 740, 776, 852, 944, 968,
9, 19, 171, 201, 305, 393, 454, 484, 585, 635, 651, 741, 777, 853, 945, 969,
10, 20, 172, 202, 306, 394, 455, 485, 586, 636, 652, 742, 778, 854, 946, 970,
11, 21, 173, 203, 307, 395, 432, 486, 587, 637, 653, 743, 779, 855, 947, 971,
12, 22, 174, 204, 308, 396, 433, 487, 588, 638, 654, 720, 780, 856, 948, 972,
13, 23, 175, 205, 309, 397, 434, 488, 589, 639, 655, 721, 781, 857, 949, 973,
0, 14, 176, 206, 310, 398, 435, 489, 590, 640, 656, 722, 782, 858, 950, 974,
1, 15, 177, 207, 311, 399, 436, 490, 591, 641, 657, 723, 783, 859, 951, 975,
2, 16, 178, 208, 288, 400, 437, 491, 592, 642, 658, 724, 784, 860, 952, 976,
3, 17, 179, 209, 289, 401, 438, 492, 593, 643, 659, 725, 785, 861, 953, 977,
4, 18, 180, 210, 290, 402, 439, 493, 594, 644, 660, 726, 786, 862, 954, 978,
5, 19, 181, 211, 291, 403, 440, 494, 595, 645, 661, 727, 787, 863, 955, 979,
6, 20, 182, 212, 292, 404, 441, 495, 596, 646, 662, 728, 788, 840, 956, 980,
7, 21, 183, 213, 293, 405, 442, 496, 597, 647, 663, 729, 789, 841, 957, 981,
8, 22, 184, 214, 294, 406, 443, 497, 598, 624, 664, 730, 790, 842, 958, 982,
9, 23, 185, 215, 295, 407, 444, 498, 599, 625, 665, 731, 791, 843, 959, 983,
7, 7, 23, 24, 118, 163, 216, 240, 408, 414, 466, 600, 622, 692, 792, 808, 870, 960, 984,
0, 8, 8, 25, 119, 164, 217, 241, 409, 415, 467, 601, 623, 693, 793, 809, 871, 961, 985,
1, 9, 9, 26, 96, 165, 218, 242, 410, 416, 468, 600, 602, 694, 794, 810, 872, 962, 986,
2, 10, 10, 27, 97, 166, 219, 243, 411, 417, 469, 601, 603, 695, 795, 811, 873, 963, 987,
3, 11, 11, 28, 98, 167, 220, 244, 412, 418, 470, 602, 604, 672, 796, 812, 874, 964, 988,
4, 12, 12, 29, 99, 144, 221, 245, 413, 419, 471, 603, 605, 673, 797, 813, 875, 965, 989,
5, 13, 13, 30, 100, 145, 222, 246, 414, 420, 472, 604, 606, 674, 798, 814, 876, 966, 990,
6, 14, 14, 31, 101, 146, 223, 247, 415, 421, 473, 605, 607, 675, 799, 815, 877, 967, 991,
7, 15, 15, 32, 102, 147, 224, 248, 416, 422, 474, 606, 608, 676, 792, 800, 878, 968, 992,
8, 16, 16, 33, 103, 148, 225, 249, 417, 423, 475, 607, 609, 677, 793, 801, 879, 969, 993,
9, 17, 17, 34, 104, 149, 226, 250, 418, 424, 476, 608, 610, 678, 794, 802, 880, 970, 994,
10, 18, 18, 35, 105, 150, 227, 251, 419, 425, 477, 609, 611, 679, 795, 803, 881, 971, 995,
11, 19, 19, 36, 106, 151, 228, 252, 420, 426, 478, 610, 612, 680, 796, 804, 882, 972, 996,
12, 20, 20, 37, 107, 152, 229, 253, 421, 427, 479, 611, 613, 681, 797, 805, 883, 973, 997,
13, 21, 21, 38, 108, 153, 230, 254, 422, 428, 456, 612, 614, 682, 798, 806, 884, 974, 998,
14, 22, 22, 39, 109, 154, 231, 255, 423, 429, 457, 613, 615, 683, 799, 807, 885, 975, 999,
15, 23, 23, 40, 110, 155, 232, 256, 424, 430, 458, 614, 616, 684, 800, 808, 886, 976, 1000,
0, 0, 16, 41, 111, 156, 233, 257, 425, 431, 459, 615, 617, 685, 801, 809, 887, 977, 1001,
1, 1, 17, 42, 112, 157, 234, 258, 408, 426, 460, 616, 618, 686, 802, 810, 864, 978, 1002,
2, 2, 18, 43, 113, 158, 235, 259, 409, 427, 461, 617, 619, 687, 803, 811, 865, 979, 1003,
3, 3, 19, 44, 114, 159, 236, 260, 410, 428, 462, 618, 620, 688, 804, 812, 866, 980, 1004,
4, 4, 20, 45, 115, 160, 237, 261, 411, 429, 463, 619, 621, 689, 805, 813, 867, 981, 1005,
5, 5, 21, 46, 116, 161, 238, 262, 412, 430, 464, 620, 622, 690, 806, 814, 868, 982, 1006,
6, 6, 22, 47, 117, 162, 239, 263, 413, 431, 465, 621, 623, 691, 807, 815, 869, 983, 1007,
7, 10, 48, 97, 220, 240, 275, 325, 331, 432, 533, 539, 624, 701, 816, 856, 984, 1008,
8, 11, 49, 98, 221, 241, 276, 326, 332, 433, 534, 540, 625, 702, 817, 857, 985, 1009,
9, 12, 50, 99, 222, 242, 277, 327, 333, 434, 535, 541, 626, 703, 818, 858, 986, 1010,
10, 13, 51, 100, 223, 243, 278, 328, 334, 435, 536, 542, 627, 704, 819, 859, 987, 1011,
11, 14, 52, 101, 224, 244, 279, 329, 335, 436, 537, 543, 628, 705, 820, 860, 988, 1012,
12, 15, 53, 102, 225, 245, 280, 312, 330, 437, 538, 544, 629, 706, 821, 861, 989, 1013,
13, 16, 54, 103, 226, 246, 281, 313, 331, 438, 539, 545, 630, 707, 822, 862, 990, 1014,
14, 17, 55, 104, 227, 247, 282, 314, 332, 439, 540, 546, 631, 708, 823, 863, 991, 1015,
15, 18, 56, 105, 228, 248, 283, 315, 333, 440, 541, 547, 632, 709, 824, 840, 992, 1016,
16, 19, 57, 106, 229, 249, 284, 316, 334, 441, 542, 548, 633, 710, 825, 841, 993, 1017,
17, 20, 58, 107, 230, 250, 285, 317, 335, 442, 543, 549, 634, 711, 826, 842, 994, 1018,
18, 21, 59, 108, 231, 251, 286, 312, 318, 443, 544, 550, 635, 712, 827, 843, 995, 1019,
19, 22, 60, 109, 232, 252, 287, 313, 319, 444, 545, 551, 636, 713, 828, 844, 996, 1020,
20, 23, 61, 110, 233, 253, 264, 314, 320, 445, 528, 546, 637, 714, 829, 845, 997, 1021,
0, 21, 62, 111, 234, 254, 265, 315, 321, 446, 529, 547, 638, 715, 830, 846, 998, 1022,
1, 22, 63, 112, 235, 255, 266, 316, 322, 447, 530, 548, 639, 716, 831, 847, 999, 1023,
2, 23, 64, 113, 236, 256, 267, 317, 323, 448, 531, 549, 640, 717, 832, 848, 1000, 1024,
0, 3, 65, 114, 237, 257, 268, 318, 324, 449, 532, 550, 641, 718, 833, 849, 1001, 1025,
1, 4, 66, 115, 238, 258, 269, 319, 325, 450, 533, 551, 642, 719, 834, 850, 1002, 1026,
2, 5, 67, 116, 239, 259, 270, 320, 326, 451, 528, 534, 643, 696, 835, 851, 1003, 1027,
3, 6, 68, 117, 216, 260, 271, 321, 327, 452, 529, 535, 644, 697, 836, 852, 1004, 1028,
4, 7, 69, 118, 217, 261, 272, 322, 328, 453, 530, 536, 645, 698, 837, 853, 1005, 1029,
5, 8, 70, 119, 218, 262, 273, 323, 329, 454, 531, 537, 646, 699, 838, 854, 1006, 1030,
6, 9, 71, 96, 219, 263, 274, 324, 330, 455, 532, 538, 647, 700, 839, 855, 1007, 1031,
4, 10, 24, 69, 72, 147, 244, 264, 455, 456, 502, 584, 648, 657, 760, 784, 840, 1008, 1032,
5, 11, 25, 70, 73, 148, 245, 265, 432, 457, 503, 585, 649, 658, 761, 785, 841, 1009, 1033,
6, 12, 26, 71, 74, 149, 246, 266, 433, 458, 480, 586, 650, 659, 762, 786, 842, 1010, 1034,
7, 13, 27, 48, 75, 150, 247, 267, 434, 459, 481, 587, 651, 660, 763, 787, 843, 1011, 1035,
8, 14, 28, 49, 76, 151, 248, 268, 435, 460, 482, 588, 652, 661, 764, 788, 844, 1012, 1036,
9, 15, 29, 50, 77, 152, 249, 269, 436, 461, 483, 589, 653, 662, 765, 789, 845, 1013, 1037,
10, 16, 30, 51, 78, 153, 250, 270, 437, 462, 484, 590, 654, 663, 766, 790, 846, 1014, 1038,
11, 17, 31, 52, 79, 154, 251, 271, 438, 463, 485, 591, 655, 664, 767, 791, 847, 1015, 1039,
12, 18, 32, 53, 80, 155, 252, 272, 439, 464, 486, 592, 656, 665, 744, 768, 848, 1016, 1040,
13, 19, 33, 54, 81, 156, 253, 273, 440, 465, 487, 593, 657, 666, 745, 769, 849, 1017, 1041,
14, 20, 34, 55, 82, 157, 254, 274, 441, 466, 488, 594, 658, 667, 746, 770, 850, 1018, 1042,
15, 21, 35, 56, 83, 158, 255, 275, 442, 467, 489, 595, 659, 668, 747, 771, 851, 1019, 1043,
16, 22, 36, 57, 84, 159, 256, 276, 443, 468, 490, 596, 660, 669, 748, 772, 852, 1020, 1044,
17, 23, 37, 58, 85, 160, 257, 277, 444, 469, 491, 597, 661, 670, 749, 773, 853, 1021, 1045,
0, 18, 38, 59, 86, 161, 258, 278, 445, 470, 492, 598, 662, 671, 750, 774, 854, 1022, 1046,
1, 19, 39, 60, 87, 162, 259, 279, 446, 471, 493, 599, 648, 663, 751, 775, 855, 1023, 1047,
2, 20, 40, 61, 88, 163, 260, 280, 447, 472, 494, 576, 649, 664, 752, 776, 856, 1024, 1048,
3, 21, 41, 62, 89, 164, 261, 281, 448, 473, 495, 577, 650, 665, 753, 777, 857, 1025, 1049,
4, 22, 42, 63, 90, 165, 262, 282, 449, 474, 496, 578, 651, 666, 754, 778, 858, 1026, 1050,
5, 23, 43, 64, 91, 166, 263, 283, 450, 475, 497, 579, 652, 667, 755, 779, 859, 1027, 1051,
0, 6, 44, 65, 92, 167, 240, 284, 451, 476, 498, 580, 653, 668, 756, 780, 860, 1028, 1052,
1, 7, 45, 66, 93, 144, 241, 285, 452, 477, 499, 581, 654, 669, 757, 781, 861, 1029, 1053,
2, 8, 46, 67, 94, 145, 242, 286, 453, 478, 500, 582, 655, 670, 758, 782, 862, 1030, 1054,
3, 9, 47, 68, 95, 146, 243, 287, 454, 479, 501, 583, 656, 671, 759, 783, 863, 1031, 1055,
3, 31, 96, 135, 199, 288, 336, 391, 480, 623, 672, 682, 783, 818, 864, 1032, 1056,
4, 32, 97, 136, 200, 289, 337, 392, 481, 600, 673, 683, 784, 819, 865, 1033, 1057,
5, 33, 98, 137, 201, 290, 338, 393, 482, 601, 674, 684, 785, 820, 866, 1034, 1058,
6, 34, 99, 138, 202, 291, 339, 394, 483, 602, 675, 685, 786, 821, 867, 1035, 1059,
7, 35, 100, 139, 203, 292, 340, 395, 484, 603, 676, 686, 787, 822, 868, 1036, 1060,
8, 36, 101, 140, 204, 293, 341, 396, 485, 604, 677, 687, 788, 823, 869, 1037, 1061,
9, 37, 102, 141, 205, 294, 342, 397, 486, 605, 678, 688, 789, 824, 870, 1038, 1062,
10, 38, 103, 142, 206, 295, 343, 398, 487, 606, 679, 689, 790, 825, 871, 1039, 1063,
11, 39, 104, 143, 207, 296, 344, 399, 488, 607, 680, 690, 791, 826, 872, 1040, 1064,
12, 40, 105, 120, 208, 297, 345, 400, 489, 608, 681, 691, 768, 827, 873, 1041, 1065,
13, 41, 106, 121, 209, 298, 346, 401, 490, 609, 682, 692, 769, 828, 874, 1042, 1066,
14, 42, 107, 122, 210, 299, 347, 402, 491, 610, 683, 693, 770, 829, 875, 1043, 1067,
15, 43, 108, 123, 211, 300, 348, 403, 492, 611, 684, 694, 771, 830, 876, 1044, 1068,
16, 44, 109, 124, 212, 301, 349, 404, 493, 612, 685, 695, 772, 831, 877, 1045, 1069,
17, 45, 110, 125, 213, 302, 350, 405, 494, 613, 672, 686, 773, 832, 878, 1046, 1070,
18, 46, 111, 126, 214, 303, 351, 406, 495, 614, 673, 687, 774, 833, 879, 1047, 1071,
19, 47, 112, 127, 215, 304, 352, 407, 496, 615, 674, 688, 775, 834, 880, 1048, 1072,
20, 24, 113, 128, 192, 305, 353, 384, 497, 616, 675, 689, 776, 835, 881, 1049, 1073,
21, 25, 114, 129, 193, 306, 354, 385, 498, 617, 676, 690, 777, 836, 882, 1050, 1074,
22, 26, 115, 130, 194, 307, 355, 386, 499, 618, 677, 691, 778, 837, 883, 1051, 1075,
23, 27, 116, 131, 195, 308, 356, 387, 500, 619, 678, 692, 779, 838, 884, 1052, 1076,
0, 28, 117, 132, 196, 309, 357, 388, 501, 620, 679, 693, 780, 839, 885, 1053, 1077,
1, 29, 118, 133, 197, 310, 358, 389, 502, 621, 680, 694, 781, 816, 886, 1054, 1078,
2, 30, 119, 134, 198, 311, 359, 390, 503, 622, 681, 695, 782, 817, 887, 1055, 1079,
		others => 0);
	end function;

	function init_shifts return shifts is
	begin
		return (
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 13, 0, 13, 9, 0, 1,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 13, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 12, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 12, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 12, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 12, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 12, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 0, 2, 12, 0, 13, 9, 0, 0,
12, 7, 0, 11, 7, 0, 9, 6, 1, 0, 12, 0, 13, 9, 0, 0,
12, 6, 0, 11, 7, 0, 9, 6, 1, 0, 12, 0, 13, 9, 0, 0,
12, 6, 0, 11, 7, 0, 9, 6, 1, 0, 12, 0, 13, 9, 0, 0,
12, 6, 0, 11, 7, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 7, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 7, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 6, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 6, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 6, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 6, 0, 9, 6, 1, 0, 12, 0, 12, 9, 0, 0,
12, 6, 0, 11, 6, 0, 5, 9, 1, 0, 12, 0, 12, 9, 0, 0,
11, 6, 0, 11, 6, 0, 5, 9, 1, 0, 12, 0, 12, 9, 0, 0,
11, 6, 0, 11, 6, 0, 8, 5, 1, 0, 12, 0, 12, 9, 0, 0,
11, 6, 0, 11, 6, 0, 8, 5, 1, 0, 12, 0, 12, 8, 0, 0,
11, 6, 0, 11, 6, 0, 8, 5, 1, 0, 12, 0, 12, 8, 0, 0,
11, 6, 0, 11, 6, 0, 8, 5, 1, 0, 12, 0, 12, 8, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 1, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 13, 0, 0, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 7, 12, 0, 0, 0, 0,
8, 13, 0, 3, 1, 0, 1, 3, 0, 7, 6, 12, 0, 0, 0, 0,
8, 13, 0, 3, 0, 0, 1, 3, 0, 7, 6, 12, 0, 0, 0, 0,
8, 13, 0, 3, 0, 0, 1, 3, 0, 7, 6, 12, 0, 0, 0, 0,
8, 13, 0, 3, 0, 0, 1, 3, 0, 7, 6, 12, 0, 0, 0, 0,
12, 8, 0, 3, 0, 0, 1, 3, 0, 6, 6, 12, 0, 0, 0, 0,
12, 8, 0, 3, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
12, 8, 0, 3, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
12, 8, 0, 3, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 3, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 3, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 3, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 2, 0, 0, 1, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 2, 0, 0, 0, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 2, 0, 0, 0, 2, 0, 6, 6, 12, 0, 0, 0, 0,
7, 12, 0, 2, 0, 0, 0, 2, 0, 6, 6, 12, 0, 0, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 10, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
11, 5, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
4, 11, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
4, 11, 0, 12, 1, 0, 10, 8, 13, 0, 9, 0, 6, 9, 0, 0,
4, 11, 0, 12, 1, 0, 10, 8, 13, 0, 9, 5, 0, 9, 0, 0,
4, 11, 0, 12, 1, 0, 10, 8, 13, 0, 9, 5, 0, 9, 0, 0,
4, 11, 0, 12, 1, 0, 10, 7, 13, 0, 9, 5, 0, 9, 0, 0,
4, 11, 0, 12, 0, 0, 10, 7, 13, 0, 9, 5, 0, 9, 0, 0,
4, 11, 0, 12, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 12, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 12, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 11, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 11, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 11, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 11, 0, 0, 10, 7, 13, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 11, 0, 0, 10, 7, 12, 8, 0, 5, 0, 9, 0, 0,
4, 11, 0, 11, 0, 0, 9, 7, 12, 8, 0, 5, 0, 9, 0, 0,
0, 3, 5, 0, 12, 0, 1, 9, 0, 14, 3, 3, 0, 1, 0, 0,
0, 3, 5, 0, 12, 0, 1, 9, 0, 14, 3, 3, 0, 1, 0, 0,
0, 3, 5, 0, 12, 0, 1, 9, 0, 14, 3, 3, 0, 1, 0, 0,
0, 3, 5, 0, 12, 0, 1, 9, 0, 14, 3, 3, 0, 1, 0, 0,
0, 3, 5, 0, 12, 0, 1, 9, 0, 14, 3, 3, 0, 1, 0, 0,
0, 3, 5, 0, 12, 0, 1, 8, 0, 14, 3, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 1, 8, 0, 14, 2, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 1, 8, 0, 14, 2, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 1, 8, 0, 14, 2, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 1, 8, 0, 14, 2, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 1, 8, 0, 14, 2, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 0, 8, 0, 14, 2, 3, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
0, 3, 4, 0, 12, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 12, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 12, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 14, 2, 2, 0, 1, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 14, 2, 2, 0, 0, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 14, 2, 2, 0, 0, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 13, 2, 2, 0, 0, 0, 0,
2, 0, 4, 0, 11, 0, 0, 8, 0, 13, 2, 2, 0, 0, 0, 0,
5, 4, 14, 0, 2, 13, 0, 5, 0, 3, 12, 0, 6, 2, 0, 1, 14, 0, 0,
13, 5, 4, 0, 2, 13, 0, 5, 0, 3, 12, 0, 6, 2, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 13, 0, 5, 0, 3, 12, 5, 0, 2, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 13, 0, 5, 0, 3, 12, 5, 0, 2, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 13, 0, 5, 0, 3, 12, 5, 0, 1, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 1, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 12, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 11, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 11, 5, 0, 1, 0, 0, 14, 0, 0,
13, 5, 4, 0, 1, 12, 0, 5, 0, 3, 11, 5, 0, 1, 0, 0, 14, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 0, 3, 11, 5, 0, 1, 0, 0, 14, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 2, 0, 11, 5, 0, 1, 0, 0, 13, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 2, 0, 11, 5, 0, 1, 0, 0, 13, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 2, 0, 11, 5, 0, 1, 0, 0, 13, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 2, 0, 11, 5, 0, 1, 0, 0, 13, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 2, 0, 11, 5, 0, 1, 0, 0, 13, 0, 0,
4, 3, 13, 0, 1, 12, 0, 5, 2, 0, 11, 5, 0, 1, 0, 0, 13, 0, 0,
2, 0, 0, 3, 9, 0, 13, 7, 9, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 7, 9, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 7, 9, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 7, 9, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 7, 9, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 8, 7, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 8, 7, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 8, 7, 0, 6, 7, 0, 10, 0, 4, 0, 0,
2, 0, 0, 3, 9, 0, 13, 8, 7, 0, 6, 7, 0, 10, 0, 3, 0, 0,
2, 0, 0, 3, 9, 0, 13, 8, 7, 0, 6, 7, 0, 10, 0, 3, 0, 0,
2, 0, 0, 3, 9, 0, 13, 8, 7, 0, 6, 7, 0, 10, 0, 3, 0, 0,
2, 0, 0, 3, 9, 0, 13, 6, 8, 0, 6, 7, 0, 10, 0, 3, 0, 0,
2, 0, 0, 3, 9, 0, 13, 6, 8, 0, 6, 7, 0, 10, 0, 3, 0, 0,
2, 0, 0, 3, 9, 0, 12, 6, 8, 0, 6, 6, 0, 10, 0, 3, 0, 0,
14, 2, 0, 3, 9, 0, 12, 6, 8, 0, 6, 6, 0, 10, 0, 3, 0, 0,
14, 2, 0, 3, 9, 0, 12, 6, 8, 0, 6, 6, 0, 10, 0, 3, 0, 0,
14, 2, 0, 3, 9, 0, 12, 6, 8, 0, 6, 6, 0, 10, 0, 3, 0, 0,
1, 14, 0, 3, 9, 0, 12, 6, 8, 0, 6, 6, 0, 10, 0, 3, 0, 0,
1, 14, 0, 3, 9, 0, 12, 6, 8, 0, 6, 6, 0, 10, 0, 3, 0, 0,
1, 14, 0, 3, 9, 0, 12, 6, 8, 0, 5, 6, 0, 9, 0, 3, 0, 0,
1, 14, 0, 3, 8, 0, 12, 6, 8, 0, 5, 6, 0, 9, 0, 3, 0, 0,
1, 14, 0, 3, 8, 0, 12, 6, 8, 0, 5, 6, 0, 9, 0, 3, 0, 0,
1, 14, 0, 3, 8, 0, 12, 6, 8, 0, 5, 6, 0, 9, 0, 3, 0, 0,
1, 14, 0, 2, 8, 0, 12, 6, 8, 0, 5, 6, 0, 9, 0, 3, 0, 0,
9, 7, 10, 3, 0, 12, 1, 0, 6, 0, 13, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 3, 0, 12, 1, 0, 5, 0, 13, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 3, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 5, 11, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
9, 7, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
6, 9, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 0, 7, 4, 10, 0, 0, 0,
6, 9, 10, 2, 0, 12, 1, 0, 5, 0, 12, 8, 6, 0, 4, 10, 0, 0, 0,
6, 9, 10, 2, 0, 12, 1, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
6, 9, 10, 2, 0, 12, 1, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
6, 9, 10, 2, 0, 12, 1, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
6, 9, 10, 2, 0, 12, 1, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
8, 6, 10, 2, 0, 12, 0, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
8, 6, 10, 2, 0, 11, 0, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
8, 6, 10, 2, 0, 11, 0, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
8, 6, 10, 2, 0, 11, 0, 0, 5, 0, 12, 7, 6, 0, 4, 10, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 14, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 13, 1, 0, 4, 0, 0, 13, 0, 3, 7, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 0, 3, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 0, 3, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 0, 3, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 0, 3, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 0, 3, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 2, 0, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 2, 0, 6, 5, 0, 0, 0,
3, 13, 0, 12, 1, 0, 4, 0, 0, 13, 2, 0, 6, 5, 0, 0, 0,
3, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 5, 0, 0, 0,
3, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 5, 0, 0, 0,
3, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 5, 0, 0, 0,
3, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 5, 0, 0, 0,
2, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 5, 0, 0, 0,
2, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 4, 0, 0, 0,
2, 12, 0, 12, 0, 0, 4, 14, 0, 13, 2, 0, 6, 4, 0, 0, 0,
		others => 0);
	end function;

	function init_counts return counts is
	begin
		return (
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
16,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
18,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
19,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
17,
		others => count_scalar'low);
	end function;

	function init_parities return parities is
	begin
		return 192;
	end function;
end package body;

