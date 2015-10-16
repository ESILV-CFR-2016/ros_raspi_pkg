#include <ros/ros.h>
#include "std_msgs/String.h"
#include <signal.h>
#include <termios.h>
#include <stdio.h>
#include <ros/ros.h>

#define KEYCODE_R 0x43 
#define KEYCODE_L 0x44
#define KEYCODE_U 0x41
#define KEYCODE_D 0x42
#define KEYCODE_Q 0x71


class BbKeyManager {
public:
  BbKeyManager();
  void keyLoop();

private:
  ros::NodeHandle nh_;
  int up_, down_, left_, right_;
  ros::Publisher cmd_pub_;
};

int kfd = 0;
struct termios cooked, raw;


void quit(int sig)
{
  tcsetattr(kfd, TCSANOW, &cooked);
  ros::shutdown();
  exit(0);
}

int main(int argc, char **argv){

  ros::init(argc, argv, "bb_tele_op");
  
  BbKeyManager bbTeleOp;

  signal(SIGINT,quit);

  bbTeleOp.keyLoop();
 
  return (0);
}




BbKeyManager::BbKeyManager():
  up_(0), 
  down_(0), 
  left_(0), 
  right_(0)
{
  
  cmd_pub_ = nh_.advertise<std_msgs::String>("cmd", 10);

}

void BbKeyManager::keyLoop()
{
  char c;
  bool dirty=false;
  std_msgs::String cmd;
  
  // get the console in raw mode                                                              
  tcgetattr(kfd, &cooked);
  memcpy(&raw, &cooked, sizeof(struct termios));
  raw.c_lflag &=~ (ICANON | ECHO);
  // Setting a new line, then end of file                         
  raw.c_cc[VEOL] = 1;
  raw.c_cc[VEOF] = 2;
  tcsetattr(kfd, TCSANOW, &raw);

  puts("Lecture clavier");
  puts("---------------------------");
  puts("Utiliser les flèches pour controler Bad Boy.");
  int count=0;

  for(;;)
    {
      count++;
      if(read(kfd, &c, 1) < 0)
	{
	  perror("read():");
	  exit(-1);
	}

      ROS_DEBUG("value: 0x%02X\n", c);
      std::stringstream ss;
  
      switch(c)
	{
	case KEYCODE_L:
	  ROS_WARN("LEFT");
	  left_=1;
	  dirty = true;
	  ss << "LEFT";
	  cmd.data = ss.str();
	  break;
	case KEYCODE_R:
	  ROS_WARN("RIGHT");
	  right_=1;
	  dirty = true;
	  ss << "RIGHT";
	  cmd.data = ss.str();
	  break;
	case KEYCODE_U:
	  ROS_WARN("UP");
	  up_=1;
	  dirty = true;
	  ss << "UP";
	  cmd.data = ss.str();
	  break;
	case KEYCODE_D:
	  ROS_WARN("DOWN");
	  down_=1;
	  dirty = true;
	  ss << "DOWN";
	  cmd.data = ss.str();
	  break;
	case KEYCODE_Q:
	  ROS_WARN("STOP");
	  left_=0; right_=0; up_=0; down_=0;
	  dirty = true;
	  ss << "STOP";
	  cmd.data = ss.str();
	  break;
	}
   
      if(dirty ==true)
	{
	  cmd_pub_.publish(cmd);    
	  dirty=false;
	}
    }


  return;
}
