module testaprovado;
  reg A, B, C;
  wire aprovado;
  
  aprovado_senado dut(
    .A(A),
    .B(B),
    .C(C),
    .aprovado(aprovado)
  );
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    A = 0; B = 0; C = 0; #5
    A = 0; B = 0; C = 1; #5
    A = 0; B = 1; C = 0; #5
    A = 0; B = 1; C = 1; #5
    A = 1; B = 0; C = 0; #5
    A = 1; B = 0; C = 1; #5
    $finish;
  end
  endmodule
