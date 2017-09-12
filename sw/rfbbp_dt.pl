#!/usr/bin/perl

$ENV{ARCH} = 'arm';
$ENV{CROSS_COMPILE} = 'arm-xilinx-linux-gnueabi-';

$f_modify = 1;
$n_f_lines = 0;
$f_name = $ARGV[0];

if (!open(IFILE, $f_name)) {
  print "can not read file `$f_name'\n";
  exit(-1);
}

while ($f_line = <IFILE>) {
  chomp($f_line);
  $f_lines[$n_f_lines++] = $f_line;
  $f_line =~ s/\s+//g;
  if ($f_line eq "xcomm2ip\@79040000{") {
    $f_modify = 0;
  }
}
close(IFILE);

if ($f_modify == 1) {
  if (!open(OFILE, ">$f_name")) {
    print "can not write file `$f_name'\n";
    exit(-1);
  }

  for ($n = 0; $n < $n_f_lines; $n++) {
    $f_line = $f_lines[$n];
    $f_line =~ s/\s+//g;
    print OFILE "$f_lines[$n]\n";
    if ($f_line eq "&fpga_axi{") {
      print OFILE "\n";
      print OFILE "\txcomm2ip\@79040000 {\n";
      print OFILE "\t\tcompatible = \"dmem-uio\";\n";
      print OFILE "\t\treg = <0x79040000 0x2000>;\n";
      print OFILE "\t};\n";
      print OFILE "\n";
    }
  }
  close(OFILE);
}

exit(0);


