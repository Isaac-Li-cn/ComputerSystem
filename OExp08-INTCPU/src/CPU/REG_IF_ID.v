module IF_ID_REG(
					input clk,
					input reset,
					input IF_ID_Stall,
					input IF_ID_Flush,
					input [31:0] PCplus4,
					input [31:0] Instruction,
					
					output [31:0] IF_ID_PCplus4_data,
					output [31:0] IF_ID_Instruction_data
					);
	
	// IF_ID_PCplus4
	flopr #(32) m_IF_ID_PCplus4(
								.clk(clk), 
								.reset(reset),
								.stall(IF_ID_Stall), 
								.flush(IF_ID_Flush),
								.d(PCplus4), 
								.q(IF_ID_PCplus4_data)
								);
	
	// IF_ID_Instruction
	flopr #(32) m_IF_ID_Instruction(
									.clk(clk), 
									.reset(reset), 
									.stall(IF_ID_Stall), 
									.flush(IF_ID_Flush), 
									.d(Instruction),
									.q(IF_ID_Instruction_data)
									);
endmodule