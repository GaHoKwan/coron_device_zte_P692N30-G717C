.class public Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;
.super Ljava/lang/Object;
.source "EmDsenseLcmAssit.java"


# static fields
.field private static final FB0_LCDWriteCycleGetCurrentVal:I = 0x2

.field private static final FB0_LCDWriteCycleGetMinVal:I = 0x1

.field private static final FB0_LCDWriteCycleSetVal:I = 0x3

.field private static final FB0_LCMPowerOFF:I = 0x5

.field private static final FB0_LCMPowerON:I = 0x4

.field private static final FB0_LCM_Get_Interface_Type:I = 0xa

.field private static final FB0_LCM_Get_MIPI_clock:I = 0x8

.field private static final FB0_LCM_Get_Tm:I = 0x6

.field private static final FB0_LCM_Set_MIPI_clock:I = 0x9

.field private static final FB0_LCM_Set_Tm:I = 0x7

.field public static final TAG:Ljava/lang/String; = "LCM/EmDsenseLcmAssit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs FB0_Fucntion([I)I
    .locals 13
    .parameter "param"

    .prologue
    const/4 v9, -0x1

    .line 72
    new-instance v0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 73
    .local v0, A:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    const/16 v10, 0x7531

    invoke-virtual {v0, v10}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v7

    .line 75
    .local v7, result:Z
    array-length v10, p0

    invoke-virtual {v0, v10}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 76
    move-object v1, p0

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v1, v4

    .line 77
    .local v3, i:I
    invoke-virtual {v0, v3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v3           #i:I
    :cond_0
    if-nez v7, :cond_2

    move v8, v9

    .line 109
    :cond_1
    :goto_1
    return v8

    .line 84
    :cond_2
    const/4 v8, -0x1

    .line 87
    .local v8, valueRet:I
    :cond_3
    invoke-virtual {v0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v6

    .line 88
    .local v6, r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    const-string v10, "LCM/EmDsenseLcmAssit"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default result --returnString--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v10, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    const-string v11, ""

    if-ne v10, v11, :cond_4

    .line 105
    :goto_2
    iget v10, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    if-ne v10, v9, :cond_1

    move v8, v9

    .line 107
    goto :goto_1

    .line 92
    :cond_4
    iget-object v10, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    const-string v11, "FFFFFFFF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 93
    const/4 v8, -0x1

    .line 94
    goto :goto_2

    .line 97
    :cond_5
    :try_start_0
    iget-object v10, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 103
    :goto_3
    iget v10, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    goto :goto_2

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v10, "LCM/EmDsenseLcmAssit"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v8, -0x1

    goto :goto_3
.end method

.method public static LCDWriteCycleGetCurrentVal()I
    .locals 3

    .prologue
    .line 128
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCDWriteCycleGetCurrentVal"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCDWriteCycleGetMinVal()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCDWriteCycleGetMinVal"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCDWriteCycleSetVal(I)I
    .locals 3
    .parameter "cycle"

    .prologue
    .line 133
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCDWriteCycleSetVal"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMGetInterfaceType()I
    .locals 3

    .prologue
    .line 160
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCMGetInterfaceType"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMGetMipi()I
    .locals 3

    .prologue
    .line 150
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCMGetMipi"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMGetTm()I
    .locals 3

    .prologue
    .line 139
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCMGetTm"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMPowerOFF()I
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMPowerON()I
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMSetMipi(I)I
    .locals 3
    .parameter "mipi"

    .prologue
    .line 155
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCMSetMipi"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method

.method public static LCMSetTm(I)I
    .locals 3
    .parameter "tm"

    .prologue
    .line 144
    const-string v0, "LCM/EmDsenseLcmAssit"

    const-string v1, "-->LCMSetTm"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Lcom/mediatek/engineermode/lcm/EmDsenseLcmAssit;->FB0_Fucntion([I)I

    move-result v0

    return v0
.end method
