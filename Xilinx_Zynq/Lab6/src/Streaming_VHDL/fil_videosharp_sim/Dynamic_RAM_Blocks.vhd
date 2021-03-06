-- -------------------------------------------------------------
-- 
-- File Name: Streaming_VHDL\fil_videosharp_sim\Dynamic_RAM_Blocks.vhd
-- Created: 2019-06-18 09:45:08
-- 
-- Generated by MATLAB 9.6 and HDL Coder 3.14
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Dynamic_RAM_Blocks
-- Source Path: fil_videosharp_sim/Streaming 2-D FIR Filter/Line Memory/Line Memory Bank/RAM Blocks /Dynamic RAM 
-- Block
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Streaming_2_D_FIR_Filter_pkg.ALL;

ENTITY Dynamic_RAM_Blocks IS
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        writeAdd                          :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        selectWriteRAM                    :   IN    std_logic_vector(0 TO 1);  -- ufix1 [2]
        readAdd                           :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        dataOut                           :   OUT   vector_of_std_logic_vector8(0 TO 1)  -- uint8 [2]
        );
END Dynamic_RAM_Blocks;


ARCHITECTURE rtl OF Dynamic_RAM_Blocks IS

  -- Component Declarations
  COMPONENT SimpleDualPortRAM_generic
    GENERIC( AddrWidth                    : integer;
             DataWidth                    : integer
             );
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          wr_din                          :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          wr_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          wr_en                           :   IN    std_logic;
          rd_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          rd_dout                         :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : SimpleDualPortRAM_generic
    USE ENTITY work.SimpleDualPortRAM_generic(rtl);

  -- Signals
  SIGNAL selectWriteRAM_0                 : std_logic;  -- ufix1
  SIGNAL DC1_out1                         : std_logic;
  SIGNAL selectWriteRAM_1                 : std_logic;  -- ufix1
  SIGNAL DC2_out1                         : std_logic;
  SIGNAL rMUX_out1                        : vector_of_std_logic_vector8(0 TO 1);  -- ufix8 [2]

BEGIN
  u_RAM1 : SimpleDualPortRAM_generic
    GENERIC MAP( AddrWidth => 8,
                 DataWidth => 8
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => dataIn,
              wr_addr => writeAdd,
              wr_en => DC1_out1,
              rd_addr => readAdd,
              rd_dout => rMUX_out1(0)
              );

  u_RAM2 : SimpleDualPortRAM_generic
    GENERIC MAP( AddrWidth => 8,
                 DataWidth => 8
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => dataIn,
              wr_addr => writeAdd,
              wr_en => DC2_out1,
              rd_addr => readAdd,
              rd_dout => rMUX_out1(1)
              );

  selectWriteRAM_0 <= selectWriteRAM(0);

  
  DC1_out1 <= '1' WHEN selectWriteRAM_0 /= '0' ELSE
      '0';

  selectWriteRAM_1 <= selectWriteRAM(1);

  
  DC2_out1 <= '1' WHEN selectWriteRAM_1 /= '0' ELSE
      '0';


  dataOut <= rMUX_out1;

END rtl;

