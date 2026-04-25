module aprovado_senado (
  input A, B, C,
  output aprovado
);
  assign aprovado = (A & B) | (B & C) | (A & C);
endmodule
