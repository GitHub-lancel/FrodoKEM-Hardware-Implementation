//功能:纯组合逻辑MUX与接线，从外部给予不定向地址、使能与编号，产出定向到RAM的地址与使能
    //prefix 表 00无接线 00 读口1
    //          01 448  01 读口2
    //          10 64a  10 写口1   
    //          11 64b  11 写口2   
module RAM_Arbitration (

    input        [3:0]       prefixa         ,
	input        [3:0]       prefixb         ,
    input        [3:0]       prefixc         ,
    input        [3:0]       prefixd         ,
    input        [3:0]       prefixe         ,  

    input        [11:0]      ADDRa           ,
    input        [11:0]      ADDRb           ,
    input        [11:0]      ADDRc           ,
    input        [11:0]      ADDRd           , 
    input        [11:0]      ADDRe           ,

    input                    wea             ,     
    input                    web             ,
    input                    wec             ,
    input                    wed             ,
    input                    wee             ,              

    
    //仲裁后实际输出地址
	output reg  [9:0]        addr_448ram0    ,
    output reg  [9:0]        addr_448ram1    ,
    output reg  [11:0]       addr_64rama0    ,
    output reg  [11:0]       addr_64rama1    ,
    output reg  [11:0]       addr_64ramb0    ,
    output reg  [11:0]       addr_64ramb1    ,

    output reg               we_448ram0       ,
    output reg               we_448ram1       ,  
    output reg               we_64rama0       ,
    output reg               we_64rama1       ,
    output reg               we_64ramb0       ,
    output reg               we_64ramb1       

   
    );

    wire [2:0]   prea = {prefixa[3:2],prefixa[0]};
    wire [2:0]   preb = {prefixb[3:2],prefixb[0]};
    wire [2:0]   prec = {prefixc[3:2],prefixc[0]};
    wire [2:0]   pred = {prefixd[3:2],prefixd[0]};
    wire [2:0]   pree = {prefixe[3:2],prefixe[0]};




    always@(*)begin
        addr_448ram0 = 10'd0;
        if(prea == 3'b010)
            addr_448ram0 = ADDRa[9:0];
        else if(preb == 3'b010)
            addr_448ram0 = ADDRb[9:0];
        else if(prec == 3'b010)
            addr_448ram0 = ADDRc[9:0];
        else if(pred == 3'b010)
            addr_448ram0 = ADDRd[9:0];
        else if(pree == 3'b010)
            addr_448ram0 = ADDRe[9:0];
    end


    always@(*)begin
        addr_448ram1 = 10'd0;
        if(prea == 3'b011)
            addr_448ram1 = ADDRa[9:0];
        else if(preb == 3'b011)
            addr_448ram1 = ADDRb[9:0];
        else if(prec == 3'b011)
            addr_448ram1 = ADDRc[9:0];
        else if(pred == 3'b011)
            addr_448ram1 = ADDRd[9:0];
        else if(pree == 3'b011)
            addr_448ram1 = ADDRe[9:0];
    end

    always@(*)begin
        we_448ram0 = 0;
             if(prea == 3'b010)
            we_448ram0 = wea;
        else if(preb == 3'b010)
            we_448ram0 = web;
        else if(prec == 3'b010)
            we_448ram0 = wec;
        else if(pred == 3'b010)
            we_448ram0 = wed;
        else if(pree == 3'b010)
            we_448ram0 = wee;
    end

    always@(*)begin
        we_448ram1 = 0;
             if(prea == 3'b011)
            we_448ram1 = wea;
        else if(preb == 3'b011)
            we_448ram1 = web;
        else if(prec == 3'b011)
            we_448ram1 = wec;
        else if(pred == 3'b011)
            we_448ram1 = wed;
        else if(pree == 3'b011)
            we_448ram1 = wee;
    end
    

    


    always@(*)begin
        addr_64rama0 = 0;
             if(prea == 3'b100)
            addr_64rama0 = ADDRa;
        else if(preb == 3'b100)
            addr_64rama0 = ADDRb;
        else if(prec == 3'b100)
            addr_64rama0 = ADDRc;
        else if(pred == 3'b100)
            addr_64rama0 = ADDRd;
        else if(pree == 3'b100)
            addr_64rama0 = ADDRe;    
    end

    always@(*)begin
        we_64rama0 = 0;
             if(prea == 3'b100)
            we_64rama0 = wea;
        else if(preb == 3'b100)
            we_64rama0 = web;
        else if(prec == 3'b100)
            we_64rama0 = wec;
        else if(pred == 3'b100)
            we_64rama0 = wed;
        else if(pree == 3'b100)
            we_64rama0 = wee;
    end



    always@(*)begin
        addr_64rama1 = 0;
             if(prea == 3'b101)
            addr_64rama1 = ADDRa;
        else if(preb == 3'b101)
            addr_64rama1 = ADDRb;
        else if(prec == 3'b101)
            addr_64rama1 = ADDRc;
        else if(pred == 3'b101)
            addr_64rama1 = ADDRd;
        else if(pree == 3'b101)
            addr_64rama1 = ADDRe;
    end

    always@(*)begin
        we_64rama1 = 0;
             if(prea == 3'b101)
            we_64rama1 = wea;
        else if(preb == 3'b101)
            we_64rama1 = web;
        else if(prec == 3'b101)
            we_64rama1 = wec;
        else if(pred == 3'b101)
            we_64rama1 = wed;
        else if(pree == 3'b101)
            we_64rama1 = wee;    
    end




    always@(*)begin
        addr_64ramb0 = 0;
             if(prea == 3'b110)
            addr_64ramb0 = ADDRa;
        else if(preb == 3'b110)
            addr_64ramb0 = ADDRb;
        else if(prec == 3'b110)
            addr_64ramb0 = ADDRc;
        else if(pred == 3'b110)
            addr_64ramb0 = ADDRd;
        else if(pree == 3'b110)
            addr_64ramb0 = ADDRe;    
    end

    always@(*)begin
        we_64ramb0 = 0;
             if(prea == 3'b110)
            we_64ramb0 = wea;
        else if(preb == 3'b110)
            we_64ramb0 = web;
        else if(prec == 3'b110)
            we_64ramb0 = wec;
        else if(pred == 3'b110)
            we_64ramb0 = wed;
        else if(pree == 3'b110)
            we_64ramb0 = wee;    
    end


    always@(*)begin
        addr_64ramb1 = 0;
             if(prea == 3'b111)
            addr_64ramb1 = ADDRa;
        else if(preb == 3'b111)
            addr_64ramb1 = ADDRb;
        else if(prec == 3'b111)
            addr_64ramb1 = ADDRc;
        else if(pred == 3'b111)
            addr_64ramb1 = ADDRd;
        else if(pree == 3'b111)
            addr_64ramb1 = ADDRe;    
    end

    always@(*)begin
        we_64ramb1 = 0;
             if(prea == 3'b111)
            we_64ramb1 = wea;
        else if(preb == 3'b111)
            we_64ramb1 = web;
        else if(prec == 3'b111)
            we_64ramb1 = wec;
        else if(pred == 3'b111)
            we_64ramb1 = wed;
        else if(pree == 3'b111)
            we_64ramb1 = wee;    
    end



endmodule
