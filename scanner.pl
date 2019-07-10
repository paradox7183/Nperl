#port scanner 
#Made for cypher <3
#Open-Source
$clear_string = `clear`;
print $clear_string;
print "The order of the scanners\n";
print "1 Basic scan \n";
print "2 Advanced scan \n";
print "3 No ping Scan \n";
print "4 All TCP Ports Scan \n";
print "5 OS Scan (passive) \n";
print "6 OS Scan (Aggressive) \n";
print "Please enter a IP to scan it>>> ";
$scan=<STDIN>;
print "\n [+] Starting Basic Scan \n \n";
$basic2 = `nmap $scan`;
print $basic2;
print "Do you have 10 seconds to interrupt the scan (CTRL+C) or continue \n";
$sleep = `sleep 10`;
print $sleep;
print "\n [+] Starting advanced scan \n \n";
$adv = `nmap -sV -sS -f -A $scan`;
print $adv;
print "Do you have 10 seconds to interrupt the scan (CTRL+C) or continue \n";
print $sleep;
print "\n [+] Starting No Ping Scan \n \n";
$Nop = `nmap -Pn $scan`;
print $Nop;
print "Do you have 10 seconds to interrupt the scan (CTRL+C) or continue \n";
print $sleep;
print "\n [+] Starting TCP Ports Scan \n \n";
$tcp = `nmap --scanflags TCP,SYN,ACK -sS $scan`;
print $tcp;
print "Do you have 10 seconds to interrupt the scan (CTRL+C) or continue \n";
print $sleep;
print "\n [+] Starting OS Scan (passive) \n \n";
$os = `nmap -O -sS $scan`;
print $os;
print "Do you have 10 seconds to interrupt the scan (CTRL+C) or continue \n";
print $sleep; 
print "\n [+] Starting OS Scan (Aggressive) \n \n";
$Operative_System = `nmap -O -sS -A -v $scan`;
print $Operative_System;
print "\n Enjoy the information ;) \n";






 
