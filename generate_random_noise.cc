/*
Generate random noise

Copyright 2019 Ahmet Inan <inan@aicodix.de>
*/

#include <fstream>
#include <functional>
#include <random>

const int CODES = 10;
const int LEN = 16200;

int main()
{
	std::random_device rd;
	std::default_random_engine generator(rd());
	typedef std::uniform_int_distribution<int> uniform;
	auto input = std::bind(uniform(-128, 127), generator);

	std::ofstream soft_input("soft_input.txt");

	for (int i = 0; i < CODES; ++i) {
		for (int j = 0; j < LEN; ++j)
			soft_input << '\t' << input();
		soft_input << std::endl;
	}
	return 0;
}
