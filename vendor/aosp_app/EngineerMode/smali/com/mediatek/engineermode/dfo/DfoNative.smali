.class public Lcom/mediatek/engineermode/dfo/DfoNative;
.super Ljava/lang/Object;
.source "DfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;,
        Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;,
        Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;,
        Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;,
        Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;
    }
.end annotation


# static fields
.field public static RET_FAILED:I = 0x0

.field public static RET_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DfoNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static deinit()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    const v1, 0xea65

    new-array v2, v3, [I

    invoke-static {v1, v3, v2}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, ret:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    .line 129
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method

.method public static getDefaultSize(Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;)I
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x2

    .line 142
    const v1, 0xea67

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, ret:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v4, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;->width:I

    .line 145
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;->height:I

    .line 146
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #ret:[Ljava/lang/String;
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v1

    .line 151
    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method

.method public static init()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    const v1, 0xea61

    new-array v2, v3, [I

    invoke-static {v1, v3, v2}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, ret:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    .line 82
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method

.method public static propertySet(II)I
    .locals 6
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 133
    const v1, 0xea66

    new-array v2, v5, [I

    aput p0, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v1, v5, v2}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, ret:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    .line 137
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method

.method public static read(Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;)I
    .locals 6
    .parameter "req"
    .parameter "cnf"

    .prologue
    .line 102
    const v1, 0xea63

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadReq;->index:I

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, ret:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p1, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->name:Ljava/lang/String;

    .line 105
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->value:I

    .line 106
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCnf;->partition:I

    .line 107
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #ret:[Ljava/lang/String;
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v1

    .line 112
    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method

.method public static readCount(Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;)I
    .locals 5
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 87
    const v1, 0xea62

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v1, v2, v3}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, ret:[Ljava/lang/String;
    const-string v1, "DfoNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, "DfoNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    array-length v1, v0

    if-le v1, v4, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoReadCount;->count:I

    .line 92
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #ret:[Ljava/lang/String;
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v1

    .line 97
    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method

.method public static varargs runCmdInEmSvr(IILjava/lang/String;[I)[Ljava/lang/String;
    .locals 10
    .parameter "index"
    .parameter "paramNum"
    .parameter "param0"
    .parameter "param"

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 187
    .local v2, functionCall:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    invoke-virtual {v2, p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v7

    .line 188
    .local v7, result:Z
    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 189
    invoke-virtual {v2, p2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamString(Ljava/lang/String;)Z

    .line 190
    move-object v0, p3

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 191
    .local v3, i:I
    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v3           #i:I
    :cond_0
    if-eqz v7, :cond_4

    .line 196
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v6

    .line 197
    .local v6, r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 202
    :goto_1
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 203
    const-string v8, "DfoNative"

    const-string v9, "AFMFunctionCallEx: RESULT_IO_ERR"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 205
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v6           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8

    .line 200
    .restart local v6       #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_3
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    goto :goto_1

    .line 208
    .end local v6           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_4
    const-string v8, "DfoNative"

    const-string v9, "AFMFunctionCallEx return false"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 210
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static varargs runCmdInEmSvr(II[I)[Ljava/lang/String;
    .locals 10
    .parameter "index"
    .parameter "paramNum"
    .parameter "param"

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 157
    .local v2, functionCall:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    invoke-virtual {v2, p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v7

    .line 158
    .local v7, result:Z
    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 159
    move-object v0, p2

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 160
    .local v3, i:I
    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v3           #i:I
    :cond_0
    if-eqz v7, :cond_4

    .line 165
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v6

    .line 166
    .local v6, r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 171
    :goto_1
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 172
    const-string v8, "DfoNative"

    const-string v9, "AFMFunctionCallEx: RESULT_IO_ERR"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 174
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v6           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8

    .line 169
    .restart local v6       #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_3
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    goto :goto_1

    .line 177
    .end local v6           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_4
    const-string v8, "DfoNative"

    const-string v9, "AFMFunctionCallEx return false"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static write(Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;)I
    .locals 8
    .parameter "req"

    .prologue
    const/4 v7, 0x0

    .line 116
    const v1, 0xea64

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->name:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [I

    iget v5, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->value:I

    aput v5, v4, v7

    const/4 v5, 0x1

    iget v6, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->partition:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/mediatek/engineermode/dfo/DfoNative$DfoWriteReq;->save:I

    aput v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/engineermode/dfo/DfoNative;->runCmdInEmSvr(IILjava/lang/String;[I)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, ret:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_SUCCESS:I

    .line 121
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/mediatek/engineermode/dfo/DfoNative;->RET_FAILED:I

    goto :goto_0
.end method
