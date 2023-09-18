module grayenc (input [3:0]NBin,
                output [3:0]NGray);

    assign NGray[3] = (~NBin[3] & ~NBin[2] & ~NBin[1] & ~NBin[0]) | ((NBin[2] | NBin[1] | NBin[0]) & NBin[3]);
    assign NGray[2] = ((~NBin[3] & NBin[2]) & (NBin[1] | NBin[0])) | ((((~NBin[0] & ~NBin[1]) | ~NBin[2])) & NBin[3]);
    assign NGray[1] = ((~NBin[3] | NBin[0]) & (~NBin[2] & NBin[1])) | ((~NBin[1] | ~NBin[0]) & NBin[2]);
    assign NGray[0] = (NBin[3] & NBin[2] & NBin[0]) | (((~NBin[3] & NBin[2]) | (NBin[3] & NBin[0]) | ~NBin[0]) & NBin[1]);

    //always @(*)
    //begin
        // if ((~NBin[3] & ~NBin[2] & ~NBin[1] & ~NBin[0]) | ((NBin[2] | NBin[1] | NBin[0]) & NBin[3])) NGray[3] = 1;
        // else NGray[3] = 0;

        // if (((~NBin[3] & NBin[1]) & (NBin[1] | NBin[0])) | (((~NBin[0] & ~NBin[1]) | ~NBin[2])) & NBin[3]) NGray[2] = 1;
        // else NGray[2] = 0;

        // if (((~NBin[3] | NBin[0]) & (~NBin[2] & NBin[1])) | ((~NBin[1] | ~NBin[0]) & NBin[2])) NGray[1] = 1;
        // else NGray[1] = 0;

        // if ((NBin[3] & NBin[2] & NBin[0]) | (((~NBin[3] & NBin[2]) | (NBin[3] & NBin[0]) | ~NBin[0]) & NBin[1])) NGray[0] = 1;
        // else NGray[0] = 0;
   //end

endmodule
