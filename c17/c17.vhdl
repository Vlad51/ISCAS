library IEEE;
use IEEE.std_logic_1164.all;
library selfext;
use work.gates_pkg.all;
use work.fflop_pkg.all;

ENTITY c17_i89 IS
  PORT (
    INP: in std_ulogic_vector(0 to 4);
    OUTP : out std_ulogic_vector(0 to 1);
    H : in std_ulogic
  );
END c17_i89 ;

ARCHITECTURE structural OF c17_i89 IS
  signal INTERP : std_ulogic_vector(0 to 3):=(others=>'0') ;
  signal OUTPI : std_ulogic_vector(OUTP'range):=(others=>'0') ;
BEGIN
  NAND0 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(0),
      inp(1) => INP(2),
      out1 => INTERP(0));

  NAND1 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(2),
      inp(1) => INP(3),
      out1 => INTERP(1));

  NAND2 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(1),
      inp(1) => INTERP(1),
      out1 => INTERP(2));

  NAND3 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(1),
      inp(1) => INP(4),
      out1 => INTERP(3));

  NAND4 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(0),
      inp(1) => INTERP(2),
      out1 => OUTPI(0));

  NAND5 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(2),
      inp(1) => INTERP(3),
      out1 => OUTPI(1));

  BUFFER_OUT : OUTP <= OUTPI;

END structural ;

ARCHITECTURE rtl OF c17_i89 IS
  signal INTERP : std_ulogic_vector(0 to 3):=(others=>'0') ;
  signal OUTPI : std_ulogic_vector(OUTP'range):=(others=>'0') ;
BEGIN
  REGVECT : BLOCK (H='1' AND NOT H'STABLE)
    BEGIN
    END BLOCK ;
  NAND6 : INTERP(0) <= NOT(fout,INP(0) AND INP(2)) after 1 ns;
  NAND7 : INTERP(1) <= NOT(fout,INP(2) AND INP(3)) after 1 ns;
  NAND8 : INTERP(2) <= NOT(fout,INP(1) AND INTERP(1)) after 1 ns;
  NAND9 : INTERP(3) <= NOT(fout,INTERP(1) AND INP(4)) after 1 ns;
  NAND10 : OUTPI(0) <= NOT(fout,INTERP(0) AND INTERP(2)) after 1 ns;
  NAND11 : OUTPI(1) <= NOT(fout,INTERP(2) AND INTERP(3)) after 1 ns;
  BUFFER_OUT : OUTP <= OUTPI;

END rtl ;
