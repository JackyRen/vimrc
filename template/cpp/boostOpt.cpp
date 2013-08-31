#include <cstdio>
#include <iostream>
#include <cassert>
#include <cstdlib>
#include <boost/program_options.hpp>

using namespace std;
namespace po = boost::program_options;

int main(int argc,char** argv)
{
	po::options_description desc("Allowed options"); 
	desc.add_options()
		("help,h","produce help message")
		("layer,l",po::value<int>()->implicit_value(5),"layer of the woods")
		("resolution,g",po::value<string>()->implicit_value("1024x768"),"resolution of the game screeen")
		;

	po::variables_map vm;
	try{
		po::store(po::parse_command_line(argc,argv,desc),vm);
		po::notify(vm);
	}
	catch(exception const&){
		cerr<<desc<<endl;
		return -1;
	}
	if(vm.count("help")){
		cout<<desc<<endl;
	}

	return 0;
}


