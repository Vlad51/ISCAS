library IEEE;
use IEEE.std_logic_1164.all;
library selfext;
use work.gates_pkg.all;
use work.fflop_pkg.all;

ENTITY c432_i89 IS
  PORT (
    INP: in std_ulogic_vector(0 to 35);
    OUTP : out std_ulogic_vector(0 to 6);
    H : in std_ulogic
  );
END c432_i89 ;

ARCHITECTURE structural OF c432_i89 IS
  signal INTERP : std_ulogic_vector(0 to 152):=(others=>'0') ;
  signal OUTPI : std_ulogic_vector(OUTP'range):=(others=>'0') ;
BEGIN
  INV0 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(0),
      out1 => INTERP(0));

  INV1 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(1),
      out1 => INTERP(1));

  INV2 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(3),
      out1 => INTERP(2));

  INV3 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(5),
      out1 => INTERP(3));

  INV4 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(7),
      out1 => INTERP(4));

  INV5 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(9),
      out1 => INTERP(5));

  INV6 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(11),
      out1 => INTERP(6));

  INV7 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(13),
      out1 => INTERP(7));

  INV8 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(15),
      out1 => INTERP(8));

  INV9 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(17),
      out1 => INTERP(9));

  INV10 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(19),
      out1 => INTERP(10));

  INV11 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(21),
      out1 => INTERP(11));

  INV12 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(23),
      out1 => INTERP(12));

  INV13 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(25),
      out1 => INTERP(13));

  INV14 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(27),
      out1 => INTERP(14));

  INV15 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(29),
      out1 => INTERP(15));

  INV16 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(31),
      out1 => INTERP(16));

  INV17 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INP(33),
      out1 => INTERP(17));

  NAND0 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(0),
      inp(1) => INP(1),
      out1 => INTERP(18));

  NOR0 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(2),
      inp(1) => INTERP(1),
      out1 => INTERP(19));

  NOR1 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(4),
      inp(1) => INTERP(1),
      out1 => INTERP(20));

  NAND1 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(2),
      inp(1) => INP(5),
      out1 => INTERP(21));

  NAND2 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(4),
      inp(1) => INP(9),
      out1 => INTERP(22));

  NAND3 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(6),
      inp(1) => INP(13),
      out1 => INTERP(23));

  NAND4 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(8),
      inp(1) => INP(17),
      out1 => INTERP(24));

  NAND5 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(10),
      inp(1) => INP(21),
      out1 => INTERP(25));

  NAND6 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(12),
      inp(1) => INP(25),
      out1 => INTERP(26));

  NAND7 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(14),
      inp(1) => INP(29),
      out1 => INTERP(27));

  NAND8 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(16),
      inp(1) => INP(33),
      out1 => INTERP(28));

  NOR2 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(6),
      inp(1) => INTERP(3),
      out1 => INTERP(29));

  NOR3 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(8),
      inp(1) => INTERP(3),
      out1 => INTERP(30));

  NOR4 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(10),
      inp(1) => INTERP(5),
      out1 => INTERP(31));

  NOR5 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(12),
      inp(1) => INTERP(5),
      out1 => INTERP(32));

  NOR6 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(14),
      inp(1) => INTERP(7),
      out1 => INTERP(33));

  NOR7 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(16),
      inp(1) => INTERP(7),
      out1 => INTERP(34));

  NOR8 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(18),
      inp(1) => INTERP(9),
      out1 => INTERP(35));

  NOR9 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(20),
      inp(1) => INTERP(9),
      out1 => INTERP(36));

  NOR10 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(22),
      inp(1) => INTERP(11),
      out1 => INTERP(37));

  NOR11 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(24),
      inp(1) => INTERP(11),
      out1 => INTERP(38));

  NOR12 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(26),
      inp(1) => INTERP(13),
      out1 => INTERP(39));

  NOR13 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(28),
      inp(1) => INTERP(13),
      out1 => INTERP(40));

  NOR14 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(30),
      inp(1) => INTERP(15),
      out1 => INTERP(41));

  NOR15 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(32),
      inp(1) => INTERP(15),
      out1 => INTERP(42));

  NOR16 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(34),
      inp(1) => INTERP(17),
      out1 => INTERP(43));

  NOR17 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(35),
      inp(1) => INTERP(17),
      out1 => INTERP(44));

  AND0 : ANDG_N generic map (9,1 ns,1 ns)
    port map (
      inp(0) => INTERP(18),
      inp(1) => INTERP(21),
      inp(2) => INTERP(22),
      inp(3) => INTERP(23),
      inp(4) => INTERP(24),
      inp(5) => INTERP(25),
      inp(6) => INTERP(26),
      inp(7) => INTERP(27),
      inp(8) => INTERP(28),
      out1 => INTERP(45));

  INV18 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(45),
      out1 => INTERP(46));

  INV19 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(45),
      out1 => INTERP(47));

  INV20 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(45),
      out1 => OUTPI(0));

  XOR0 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(18),
      out1 => INTERP(48));

  XOR1 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(21),
      out1 => INTERP(49));

  XOR2 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(22),
      out1 => INTERP(50));

  XOR3 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(23),
      out1 => INTERP(51));

  XOR4 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(24),
      out1 => INTERP(52));

  XOR5 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(25),
      out1 => INTERP(53));

  NAND9 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(0),
      inp(1) => INTERP(47),
      out1 => INTERP(54));

  XOR6 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(26),
      out1 => INTERP(55));

  NAND10 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(3),
      out1 => INTERP(56));

  XOR7 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(27),
      out1 => INTERP(57));

  NAND11 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(7),
      out1 => INTERP(58));

  XOR8 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(46),
      inp(1) => INTERP(28),
      out1 => INTERP(59));

  NAND12 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(11),
      out1 => INTERP(60));

  NAND13 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(15),
      out1 => INTERP(61));

  NAND14 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(19),
      out1 => INTERP(62));

  NAND15 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(23),
      out1 => INTERP(63));

  NAND16 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(27),
      out1 => INTERP(64));

  NAND17 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(47),
      inp(1) => INP(31),
      out1 => INTERP(65));

  NAND18 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(48),
      inp(1) => INTERP(19),
      out1 => INTERP(66));

  NAND19 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(48),
      inp(1) => INTERP(20),
      out1 => INTERP(67));

  NAND20 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(49),
      inp(1) => INTERP(29),
      out1 => INTERP(68));

  NAND21 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(50),
      inp(1) => INTERP(31),
      out1 => INTERP(69));

  NAND22 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(51),
      inp(1) => INTERP(33),
      out1 => INTERP(70));

  NAND23 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(52),
      inp(1) => INTERP(35),
      out1 => INTERP(71));

  NAND24 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(53),
      inp(1) => INTERP(37),
      out1 => INTERP(72));

  NAND25 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(55),
      inp(1) => INTERP(39),
      out1 => INTERP(73));

  NAND26 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(57),
      inp(1) => INTERP(41),
      out1 => INTERP(74));

  NAND27 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(59),
      inp(1) => INTERP(43),
      out1 => INTERP(75));

  NAND28 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(49),
      inp(1) => INTERP(30),
      out1 => INTERP(76));

  NAND29 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(50),
      inp(1) => INTERP(32),
      out1 => INTERP(77));

  NAND30 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(51),
      inp(1) => INTERP(34),
      out1 => INTERP(78));

  NAND31 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(52),
      inp(1) => INTERP(36),
      out1 => INTERP(79));

  NAND32 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(53),
      inp(1) => INTERP(38),
      out1 => INTERP(80));

  NAND33 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(55),
      inp(1) => INTERP(40),
      out1 => INTERP(81));

  NAND34 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(57),
      inp(1) => INTERP(42),
      out1 => INTERP(82));

  NAND35 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(59),
      inp(1) => INTERP(44),
      out1 => INTERP(83));

  AND1 : ANDG_N generic map (9,1 ns,1 ns)
    port map (
      inp(0) => INTERP(66),
      inp(1) => INTERP(68),
      inp(2) => INTERP(69),
      inp(3) => INTERP(70),
      inp(4) => INTERP(71),
      inp(5) => INTERP(72),
      inp(6) => INTERP(73),
      inp(7) => INTERP(74),
      inp(8) => INTERP(75),
      out1 => INTERP(84));

  INV21 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(67),
      out1 => INTERP(85));

  INV22 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(76),
      out1 => INTERP(86));

  INV23 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(77),
      out1 => INTERP(87));

  INV24 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(78),
      out1 => INTERP(88));

  INV25 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(79),
      out1 => INTERP(89));

  INV26 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(80),
      out1 => INTERP(90));

  INV27 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(81),
      out1 => INTERP(91));

  INV28 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(82),
      out1 => INTERP(92));

  INV29 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(83),
      out1 => INTERP(93));

  INV30 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(84),
      out1 => INTERP(94));

  INV31 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(84),
      out1 => INTERP(95));

  INV32 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(84),
      out1 => OUTPI(1));

  XOR9 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(66),
      out1 => INTERP(96));

  XOR10 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(68),
      out1 => INTERP(97));

  XOR11 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(69),
      out1 => INTERP(98));

  XOR12 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(70),
      out1 => INTERP(99));

  NAND36 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(2),
      inp(1) => INTERP(95),
      out1 => INTERP(100));

  XOR13 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(71),
      out1 => INTERP(101));

  NAND37 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(6),
      out1 => INTERP(102));

  XOR14 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(72),
      out1 => INTERP(103));

  NAND38 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(10),
      out1 => INTERP(104));

  XOR15 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(73),
      out1 => INTERP(105));

  NAND39 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(14),
      out1 => INTERP(106));

  XOR16 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(74),
      out1 => INTERP(107));

  NAND40 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(18),
      out1 => INTERP(108));

  XOR17 : XORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(94),
      inp(1) => INTERP(75),
      out1 => INTERP(109));

  NAND41 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(22),
      out1 => INTERP(110));

  NAND42 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(26),
      out1 => INTERP(111));

  NAND43 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(30),
      out1 => INTERP(112));

  NAND44 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(95),
      inp(1) => INP(34),
      out1 => INTERP(113));

  NAND45 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(96),
      inp(1) => INTERP(85),
      out1 => INTERP(114));

  NAND46 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(97),
      inp(1) => INTERP(86),
      out1 => INTERP(115));

  NAND47 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(98),
      inp(1) => INTERP(87),
      out1 => INTERP(116));

  NAND48 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(99),
      inp(1) => INTERP(88),
      out1 => INTERP(117));

  NAND49 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(101),
      inp(1) => INTERP(89),
      out1 => INTERP(118));

  NAND50 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(103),
      inp(1) => INTERP(90),
      out1 => INTERP(119));

  NAND51 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(105),
      inp(1) => INTERP(91),
      out1 => INTERP(120));

  NAND52 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(107),
      inp(1) => INTERP(92),
      out1 => INTERP(121));

  NAND53 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(109),
      inp(1) => INTERP(93),
      out1 => INTERP(122));

  AND2 : ANDG_N generic map (9,1 ns,1 ns)
    port map (
      inp(0) => INTERP(114),
      inp(1) => INTERP(115),
      inp(2) => INTERP(116),
      inp(3) => INTERP(117),
      inp(4) => INTERP(118),
      inp(5) => INTERP(119),
      inp(6) => INTERP(120),
      inp(7) => INTERP(121),
      inp(8) => INTERP(122),
      out1 => INTERP(123));

  INV33 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(123),
      out1 => INTERP(124));

  INV34 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(123),
      out1 => OUTPI(2));

  NAND54 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INP(4),
      inp(1) => INTERP(124),
      out1 => INTERP(125));

  NAND55 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(8),
      out1 => INTERP(126));

  NAND56 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(12),
      out1 => INTERP(127));

  NAND57 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(16),
      out1 => INTERP(128));

  NAND58 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(20),
      out1 => INTERP(129));

  NAND59 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(24),
      out1 => INTERP(130));

  NAND60 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(28),
      out1 => INTERP(131));

  NAND61 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(32),
      out1 => INTERP(132));

  NAND62 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(124),
      inp(1) => INP(35),
      out1 => INTERP(133));

  NAND63 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INP(1),
      inp(1) => INTERP(54),
      inp(2) => INTERP(100),
      inp(3) => INTERP(125),
      out1 => INTERP(134));

  NAND64 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(56),
      inp(1) => INTERP(102),
      inp(2) => INTERP(126),
      inp(3) => INP(5),
      out1 => INTERP(135));

  NAND65 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(58),
      inp(1) => INTERP(104),
      inp(2) => INTERP(127),
      inp(3) => INP(9),
      out1 => INTERP(136));

  NAND66 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(60),
      inp(1) => INTERP(106),
      inp(2) => INTERP(128),
      inp(3) => INP(13),
      out1 => INTERP(137));

  NAND67 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(61),
      inp(1) => INTERP(108),
      inp(2) => INTERP(129),
      inp(3) => INP(17),
      out1 => INTERP(138));

  NAND68 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(62),
      inp(1) => INTERP(110),
      inp(2) => INTERP(130),
      inp(3) => INP(21),
      out1 => INTERP(139));

  NAND69 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(63),
      inp(1) => INTERP(111),
      inp(2) => INTERP(131),
      inp(3) => INP(25),
      out1 => INTERP(140));

  NAND70 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(64),
      inp(1) => INTERP(112),
      inp(2) => INTERP(132),
      inp(3) => INP(29),
      out1 => INTERP(141));

  NAND71 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(65),
      inp(1) => INTERP(113),
      inp(2) => INTERP(133),
      inp(3) => INP(33),
      out1 => INTERP(142));

  INV35 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(134),
      out1 => INTERP(143));

  AND3 : ANDG_N generic map (8,1 ns,1 ns)
    port map (
      inp(0) => INTERP(135),
      inp(1) => INTERP(136),
      inp(2) => INTERP(137),
      inp(3) => INTERP(138),
      inp(4) => INTERP(139),
      inp(5) => INTERP(140),
      inp(6) => INTERP(141),
      inp(7) => INTERP(142),
      out1 => INTERP(144));

  INV36 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(137),
      out1 => INTERP(145));

  INV37 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(139),
      out1 => INTERP(146));

  INV38 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(140),
      out1 => INTERP(147));

  INV39 : INVG generic map (1 ns,1 ns)
    port map (
      in1 => INTERP(141),
      out1 => INTERP(148));

  NOR18 : NORG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(143),
      inp(1) => INTERP(144),
      out1 => OUTPI(3));

  NAND72 : NANDG_N generic map (2,1 ns,1 ns)
    port map (
      inp(0) => INTERP(136),
      inp(1) => INTERP(145),
      out1 => INTERP(149));

  NAND73 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(136),
      inp(1) => INTERP(137),
      inp(2) => INTERP(146),
      inp(3) => INTERP(138),
      out1 => INTERP(150));

  NAND74 : NANDG_N generic map (3,1 ns,1 ns)
    port map (
      inp(0) => INTERP(138),
      inp(1) => INTERP(137),
      inp(2) => INTERP(147),
      out1 => INTERP(151));

  NAND75 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(136),
      inp(1) => INTERP(137),
      inp(2) => INTERP(140),
      inp(3) => INTERP(148),
      out1 => INTERP(152));

  NAND76 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(135),
      inp(1) => INTERP(136),
      inp(2) => INTERP(149),
      inp(3) => INTERP(138),
      out1 => OUTPI(4));

  NAND77 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(135),
      inp(1) => INTERP(136),
      inp(2) => INTERP(150),
      inp(3) => INTERP(151),
      out1 => OUTPI(5));

  NAND78 : NANDG_N generic map (4,1 ns,1 ns)
    port map (
      inp(0) => INTERP(135),
      inp(1) => INTERP(149),
      inp(2) => INTERP(150),
      inp(3) => INTERP(152),
      out1 => OUTPI(6));

  BUFFER_OUT : OUTP <= OUTPI;

END structural ;

ARCHITECTURE rtl OF c432_i89 IS
  signal INTERP : std_ulogic_vector(0 to 152):=(others=>'0') ;
  signal OUTPI : std_ulogic_vector(OUTP'range):=(others=>'0') ;
BEGIN
  REGVECT : BLOCK (H='1' AND NOT H'STABLE)
    BEGIN
    END BLOCK ;
  INV40 : INTERP(0) <= NOT(fout,INP(0)) after 1 ns;
  INV41 : INTERP(1) <= NOT(fout,INP(1)) after 1 ns;
  INV42 : INTERP(2) <= NOT(fout,INP(3)) after 1 ns;
  INV43 : INTERP(3) <= NOT(fout,INP(5)) after 1 ns;
  INV44 : INTERP(4) <= NOT(fout,INP(7)) after 1 ns;
  INV45 : INTERP(5) <= NOT(fout,INP(9)) after 1 ns;
  INV46 : INTERP(6) <= NOT(fout,INP(11)) after 1 ns;
  INV47 : INTERP(7) <= NOT(fout,INP(13)) after 1 ns;
  INV48 : INTERP(8) <= NOT(fout,INP(15)) after 1 ns;
  INV49 : INTERP(9) <= NOT(fout,INP(17)) after 1 ns;
  INV50 : INTERP(10) <= NOT(fout,INP(19)) after 1 ns;
  INV51 : INTERP(11) <= NOT(fout,INP(21)) after 1 ns;
  INV52 : INTERP(12) <= NOT(fout,INP(23)) after 1 ns;
  INV53 : INTERP(13) <= NOT(fout,INP(25)) after 1 ns;
  INV54 : INTERP(14) <= NOT(fout,INP(27)) after 1 ns;
  INV55 : INTERP(15) <= NOT(fout,INP(29)) after 1 ns;
  INV56 : INTERP(16) <= NOT(fout,INP(31)) after 1 ns;
  INV57 : INTERP(17) <= NOT(fout,INP(33)) after 1 ns;
  NAND79 : INTERP(18) <= NOT(fout,INTERP(0) AND INP(1)) after 1 ns;
  NOR19 : INTERP(19) <= NOT(fout,INP(2) OR INTERP(1)) after 1 ns;
  NOR20 : INTERP(20) <= NOT(fout,INP(4) OR INTERP(1)) after 1 ns;
  NAND80 : INTERP(21) <= NOT(fout,INTERP(2) AND INP(5)) after 1 ns;
  NAND81 : INTERP(22) <= NOT(fout,INTERP(4) AND INP(9)) after 1 ns;
  NAND82 : INTERP(23) <= NOT(fout,INTERP(6) AND INP(13)) after 1 ns;
  NAND83 : INTERP(24) <= NOT(fout,INTERP(8) AND INP(17)) after 1 ns;
  NAND84 : INTERP(25) <= NOT(fout,INTERP(10) AND INP(21)) after 1 ns;
  NAND85 : INTERP(26) <= NOT(fout,INTERP(12) AND INP(25)) after 1 ns;
  NAND86 : INTERP(27) <= NOT(fout,INTERP(14) AND INP(29)) after 1 ns;
  NAND87 : INTERP(28) <= NOT(fout,INTERP(16) AND INP(33)) after 1 ns;
  NOR21 : INTERP(29) <= NOT(fout,INP(6) OR INTERP(3)) after 1 ns;
  NOR22 : INTERP(30) <= NOT(fout,INP(8) OR INTERP(3)) after 1 ns;
  NOR23 : INTERP(31) <= NOT(fout,INP(10) OR INTERP(5)) after 1 ns;
  NOR24 : INTERP(32) <= NOT(fout,INP(12) OR INTERP(5)) after 1 ns;
  NOR25 : INTERP(33) <= NOT(fout,INP(14) OR INTERP(7)) after 1 ns;
  NOR26 : INTERP(34) <= NOT(fout,INP(16) OR INTERP(7)) after 1 ns;
  NOR27 : INTERP(35) <= NOT(fout,INP(18) OR INTERP(9)) after 1 ns;
  NOR28 : INTERP(36) <= NOT(fout,INP(20) OR INTERP(9)) after 1 ns;
  NOR29 : INTERP(37) <= NOT(fout,INP(22) OR INTERP(11)) after 1 ns;
  NOR30 : INTERP(38) <= NOT(fout,INP(24) OR INTERP(11)) after 1 ns;
  NOR31 : INTERP(39) <= NOT(fout,INP(26) OR INTERP(13)) after 1 ns;
  NOR32 : INTERP(40) <= NOT(fout,INP(28) OR INTERP(13)) after 1 ns;
  NOR33 : INTERP(41) <= NOT(fout,INP(30) OR INTERP(15)) after 1 ns;
  NOR34 : INTERP(42) <= NOT(fout,INP(32) OR INTERP(15)) after 1 ns;
  NOR35 : INTERP(43) <= NOT(fout,INP(34) OR INTERP(17)) after 1 ns;
  NOR36 : INTERP(44) <= NOT(fout,INP(35) OR INTERP(17)) after 1 ns;
  AND4 : INTERP(45) <= INTERP(18) AND INTERP(21) AND INTERP(22) AND INTERP(23) AND INTERP(24) AND INTERP(25) AND INTERP(26) AND INTERP(27) AND INTERP(28) after 1 ns;
  INV58 : INTERP(46) <= NOT(fout,INTERP(45)) after 1 ns;
  INV59 : INTERP(47) <= NOT(fout,INTERP(45)) after 1 ns;
  INV60 : OUTPI(0) <= NOT(fout,INTERP(45)) after 1 ns;
  XOR18 : INTERP(48) <= INTERP(46) XOR INTERP(18) after 1 ns;
  XOR19 : INTERP(49) <= INTERP(46) XOR INTERP(21) after 1 ns;
  XOR20 : INTERP(50) <= INTERP(46) XOR INTERP(22) after 1 ns;
  XOR21 : INTERP(51) <= INTERP(46) XOR INTERP(23) after 1 ns;
  XOR22 : INTERP(52) <= INTERP(46) XOR INTERP(24) after 1 ns;
  XOR23 : INTERP(53) <= INTERP(46) XOR INTERP(25) after 1 ns;
  NAND88 : INTERP(54) <= NOT(fout,INP(0) AND INTERP(47)) after 1 ns;
  XOR24 : INTERP(55) <= INTERP(46) XOR INTERP(26) after 1 ns;
  NAND89 : INTERP(56) <= NOT(fout,INTERP(47) AND INP(3)) after 1 ns;
  XOR25 : INTERP(57) <= INTERP(46) XOR INTERP(27) after 1 ns;
  NAND90 : INTERP(58) <= NOT(fout,INTERP(47) AND INP(7)) after 1 ns;
  XOR26 : INTERP(59) <= INTERP(46) XOR INTERP(28) after 1 ns;
  NAND91 : INTERP(60) <= NOT(fout,INTERP(47) AND INP(11)) after 1 ns;
  NAND92 : INTERP(61) <= NOT(fout,INTERP(47) AND INP(15)) after 1 ns;
  NAND93 : INTERP(62) <= NOT(fout,INTERP(47) AND INP(19)) after 1 ns;
  NAND94 : INTERP(63) <= NOT(fout,INTERP(47) AND INP(23)) after 1 ns;
  NAND95 : INTERP(64) <= NOT(fout,INTERP(47) AND INP(27)) after 1 ns;
  NAND96 : INTERP(65) <= NOT(fout,INTERP(47) AND INP(31)) after 1 ns;
  NAND97 : INTERP(66) <= NOT(fout,INTERP(48) AND INTERP(19)) after 1 ns;
  NAND98 : INTERP(67) <= NOT(fout,INTERP(48) AND INTERP(20)) after 1 ns;
  NAND99 : INTERP(68) <= NOT(fout,INTERP(49) AND INTERP(29)) after 1 ns;
  NAND100 : INTERP(69) <= NOT(fout,INTERP(50) AND INTERP(31)) after 1 ns;
  NAND101 : INTERP(70) <= NOT(fout,INTERP(51) AND INTERP(33)) after 1 ns;
  NAND102 : INTERP(71) <= NOT(fout,INTERP(52) AND INTERP(35)) after 1 ns;
  NAND103 : INTERP(72) <= NOT(fout,INTERP(53) AND INTERP(37)) after 1 ns;
  NAND104 : INTERP(73) <= NOT(fout,INTERP(55) AND INTERP(39)) after 1 ns;
  NAND105 : INTERP(74) <= NOT(fout,INTERP(57) AND INTERP(41)) after 1 ns;
  NAND106 : INTERP(75) <= NOT(fout,INTERP(59) AND INTERP(43)) after 1 ns;
  NAND107 : INTERP(76) <= NOT(fout,INTERP(49) AND INTERP(30)) after 1 ns;
  NAND108 : INTERP(77) <= NOT(fout,INTERP(50) AND INTERP(32)) after 1 ns;
  NAND109 : INTERP(78) <= NOT(fout,INTERP(51) AND INTERP(34)) after 1 ns;
  NAND110 : INTERP(79) <= NOT(fout,INTERP(52) AND INTERP(36)) after 1 ns;
  NAND111 : INTERP(80) <= NOT(fout,INTERP(53) AND INTERP(38)) after 1 ns;
  NAND112 : INTERP(81) <= NOT(fout,INTERP(55) AND INTERP(40)) after 1 ns;
  NAND113 : INTERP(82) <= NOT(fout,INTERP(57) AND INTERP(42)) after 1 ns;
  NAND114 : INTERP(83) <= NOT(fout,INTERP(59) AND INTERP(44)) after 1 ns;
  AND5 : INTERP(84) <= INTERP(66) AND INTERP(68) AND INTERP(69) AND INTERP(70) AND INTERP(71) AND INTERP(72) AND INTERP(73) AND INTERP(74) AND INTERP(75) after 1 ns;
  INV61 : INTERP(85) <= NOT(fout,INTERP(67)) after 1 ns;
  INV62 : INTERP(86) <= NOT(fout,INTERP(76)) after 1 ns;
  INV63 : INTERP(87) <= NOT(fout,INTERP(77)) after 1 ns;
  INV64 : INTERP(88) <= NOT(fout,INTERP(78)) after 1 ns;
  INV65 : INTERP(89) <= NOT(fout,INTERP(79)) after 1 ns;
  INV66 : INTERP(90) <= NOT(fout,INTERP(80)) after 1 ns;
  INV67 : INTERP(91) <= NOT(fout,INTERP(81)) after 1 ns;
  INV68 : INTERP(92) <= NOT(fout,INTERP(82)) after 1 ns;
  INV69 : INTERP(93) <= NOT(fout,INTERP(83)) after 1 ns;
  INV70 : INTERP(94) <= NOT(fout,INTERP(84)) after 1 ns;
  INV71 : INTERP(95) <= NOT(fout,INTERP(84)) after 1 ns;
  INV72 : OUTPI(1) <= NOT(fout,INTERP(84)) after 1 ns;
  XOR27 : INTERP(96) <= INTERP(94) XOR INTERP(66) after 1 ns;
  XOR28 : INTERP(97) <= INTERP(94) XOR INTERP(68) after 1 ns;
  XOR29 : INTERP(98) <= INTERP(94) XOR INTERP(69) after 1 ns;
  XOR30 : INTERP(99) <= INTERP(94) XOR INTERP(70) after 1 ns;
  NAND115 : INTERP(100) <= NOT(fout,INP(2) AND INTERP(95)) after 1 ns;
  XOR31 : INTERP(101) <= INTERP(94) XOR INTERP(71) after 1 ns;
  NAND116 : INTERP(102) <= NOT(fout,INTERP(95) AND INP(6)) after 1 ns;
  XOR32 : INTERP(103) <= INTERP(94) XOR INTERP(72) after 1 ns;
  NAND117 : INTERP(104) <= NOT(fout,INTERP(95) AND INP(10)) after 1 ns;
  XOR33 : INTERP(105) <= INTERP(94) XOR INTERP(73) after 1 ns;
  NAND118 : INTERP(106) <= NOT(fout,INTERP(95) AND INP(14)) after 1 ns;
  XOR34 : INTERP(107) <= INTERP(94) XOR INTERP(74) after 1 ns;
  NAND119 : INTERP(108) <= NOT(fout,INTERP(95) AND INP(18)) after 1 ns;
  XOR35 : INTERP(109) <= INTERP(94) XOR INTERP(75) after 1 ns;
  NAND120 : INTERP(110) <= NOT(fout,INTERP(95) AND INP(22)) after 1 ns;
  NAND121 : INTERP(111) <= NOT(fout,INTERP(95) AND INP(26)) after 1 ns;
  NAND122 : INTERP(112) <= NOT(fout,INTERP(95) AND INP(30)) after 1 ns;
  NAND123 : INTERP(113) <= NOT(fout,INTERP(95) AND INP(34)) after 1 ns;
  NAND124 : INTERP(114) <= NOT(fout,INTERP(96) AND INTERP(85)) after 1 ns;
  NAND125 : INTERP(115) <= NOT(fout,INTERP(97) AND INTERP(86)) after 1 ns;
  NAND126 : INTERP(116) <= NOT(fout,INTERP(98) AND INTERP(87)) after 1 ns;
  NAND127 : INTERP(117) <= NOT(fout,INTERP(99) AND INTERP(88)) after 1 ns;
  NAND128 : INTERP(118) <= NOT(fout,INTERP(101) AND INTERP(89)) after 1 ns;
  NAND129 : INTERP(119) <= NOT(fout,INTERP(103) AND INTERP(90)) after 1 ns;
  NAND130 : INTERP(120) <= NOT(fout,INTERP(105) AND INTERP(91)) after 1 ns;
  NAND131 : INTERP(121) <= NOT(fout,INTERP(107) AND INTERP(92)) after 1 ns;
  NAND132 : INTERP(122) <= NOT(fout,INTERP(109) AND INTERP(93)) after 1 ns;
  AND6 : INTERP(123) <= INTERP(114) AND INTERP(115) AND INTERP(116) AND INTERP(117) AND INTERP(118) AND INTERP(119) AND INTERP(120) AND INTERP(121) AND INTERP(122) after 1 ns;
  INV73 : INTERP(124) <= NOT(fout,INTERP(123)) after 1 ns;
  INV74 : OUTPI(2) <= NOT(fout,INTERP(123)) after 1 ns;
  NAND133 : INTERP(125) <= NOT(fout,INP(4) AND INTERP(124)) after 1 ns;
  NAND134 : INTERP(126) <= NOT(fout,INTERP(124) AND INP(8)) after 1 ns;
  NAND135 : INTERP(127) <= NOT(fout,INTERP(124) AND INP(12)) after 1 ns;
  NAND136 : INTERP(128) <= NOT(fout,INTERP(124) AND INP(16)) after 1 ns;
  NAND137 : INTERP(129) <= NOT(fout,INTERP(124) AND INP(20)) after 1 ns;
  NAND138 : INTERP(130) <= NOT(fout,INTERP(124) AND INP(24)) after 1 ns;
  NAND139 : INTERP(131) <= NOT(fout,INTERP(124) AND INP(28)) after 1 ns;
  NAND140 : INTERP(132) <= NOT(fout,INTERP(124) AND INP(32)) after 1 ns;
  NAND141 : INTERP(133) <= NOT(fout,INTERP(124) AND INP(35)) after 1 ns;
  NAND142 : INTERP(134) <= NOT(fout,INP(1) AND INTERP(54) AND INTERP(100) AND INTERP(125)) after 1 ns;
  NAND143 : INTERP(135) <= NOT(fout,INTERP(56) AND INTERP(102) AND INTERP(126) AND INP(5)) after 1 ns;
  NAND144 : INTERP(136) <= NOT(fout,INTERP(58) AND INTERP(104) AND INTERP(127) AND INP(9)) after 1 ns;
  NAND145 : INTERP(137) <= NOT(fout,INTERP(60) AND INTERP(106) AND INTERP(128) AND INP(13)) after 1 ns;
  NAND146 : INTERP(138) <= NOT(fout,INTERP(61) AND INTERP(108) AND INTERP(129) AND INP(17)) after 1 ns;
  NAND147 : INTERP(139) <= NOT(fout,INTERP(62) AND INTERP(110) AND INTERP(130) AND INP(21)) after 1 ns;
  NAND148 : INTERP(140) <= NOT(fout,INTERP(63) AND INTERP(111) AND INTERP(131) AND INP(25)) after 1 ns;
  NAND149 : INTERP(141) <= NOT(fout,INTERP(64) AND INTERP(112) AND INTERP(132) AND INP(29)) after 1 ns;
  NAND150 : INTERP(142) <= NOT(fout,INTERP(65) AND INTERP(113) AND INTERP(133) AND INP(33)) after 1 ns;
  INV75 : INTERP(143) <= NOT(fout,INTERP(134)) after 1 ns;
  AND7 : INTERP(144) <= INTERP(135) AND INTERP(136) AND INTERP(137) AND INTERP(138) AND INTERP(139) AND INTERP(140) AND INTERP(141) AND INTERP(142) after 1 ns;
  INV76 : INTERP(145) <= NOT(fout,INTERP(137)) after 1 ns;
  INV77 : INTERP(146) <= NOT(fout,INTERP(139)) after 1 ns;
  INV78 : INTERP(147) <= NOT(fout,INTERP(140)) after 1 ns;
  INV79 : INTERP(148) <= NOT(fout,INTERP(141)) after 1 ns;
  NOR37 : OUTPI(3) <= NOT(fout,INTERP(143) OR INTERP(144)) after 1 ns;
  NAND151 : INTERP(149) <= NOT(fout,INTERP(136) AND INTERP(145)) after 1 ns;
  NAND152 : INTERP(150) <= NOT(fout,INTERP(136) AND INTERP(137) AND INTERP(146) AND INTERP(138)) after 1 ns;
  NAND153 : INTERP(151) <= NOT(fout,INTERP(138) AND INTERP(137) AND INTERP(147)) after 1 ns;
  NAND154 : INTERP(152) <= NOT(fout,INTERP(136) AND INTERP(137) AND INTERP(140) AND INTERP(148)) after 1 ns;
  NAND155 : OUTPI(4) <= NOT(fout,INTERP(135) AND INTERP(136) AND INTERP(149) AND INTERP(138)) after 1 ns;
  NAND156 : OUTPI(5) <= NOT(fout,INTERP(135) AND INTERP(136) AND INTERP(150) AND INTERP(151)) after 1 ns;
  NAND157 : OUTPI(6) <= NOT(fout,INTERP(135) AND INTERP(149) AND INTERP(150) AND INTERP(152)) after 1 ns;
  BUFFER_OUT : OUTP <= OUTPI;

END rtl ;
