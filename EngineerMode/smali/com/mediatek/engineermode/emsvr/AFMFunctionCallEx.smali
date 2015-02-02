.class public Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
.super Ljava/lang/Object;
.source "AFMFunctionCallEx.java"


# static fields
.field private static final ERROR:Ljava/lang/String; = "ERROR "

.field public static final FUNCTION_EM_BASEBAND:I = 0x2711

.field public static final FUNCTION_EM_CPU_FREQ_TEST_CURRENCT:I = 0x4e23

.field public static final FUNCTION_EM_CPU_FREQ_TEST_START:I = 0x4e21

.field public static final FUNCTION_EM_CPU_FREQ_TEST_STOP:I = 0x4e22

.field public static final FUNCTION_EM_CPU_STRESS_TEST_APMCU:I = 0x9c41

.field public static final FUNCTION_EM_CPU_STRESS_TEST_BACKUP:I = 0x9c43

.field public static final FUNCTION_EM_CPU_STRESS_TEST_SWCODEC:I = 0x9c42

.field public static final FUNCTION_EM_CPU_STRESS_TEST_THERMAL:I = 0x9c44

.field public static final FUNCTION_EM_DFO_DEINIT:I = 0xea65

.field public static final FUNCTION_EM_DFO_GET_DEFAULT_SIZE:I = 0xea67

.field public static final FUNCTION_EM_DFO_INIT:I = 0xea61

.field public static final FUNCTION_EM_DFO_PROPERTY_SET:I = 0xea66

.field public static final FUNCTION_EM_DFO_READ:I = 0xea63

.field public static final FUNCTION_EM_DFO_READ_COUNT:I = 0xea62

.field public static final FUNCTION_EM_DFO_WRITE:I = 0xea64

.field public static final FUNCTION_EM_FB0_IOCTL:I = 0x7531

.field public static final FUNCTION_EM_SENSOR_CLEAR_CALIBRATION:I = 0xc352

.field public static final FUNCTION_EM_SENSOR_CLEAR_GSENSOR_CALIBRATION:I = 0xc356

.field public static final FUNCTION_EM_SENSOR_CLEAR_GYROSCOPE_CALIBRATION:I = 0xc359

.field public static final FUNCTION_EM_SENSOR_DO_CALIBRATION:I = 0xc351

.field public static final FUNCTION_EM_SENSOR_DO_GSENSOR_CALIBRATION:I = 0xc354

.field public static final FUNCTION_EM_SENSOR_DO_GYROSCOPE_CALIBRATION:I = 0xc357

.field public static final FUNCTION_EM_SENSOR_GET_GSENSOR_CALIBRATION:I = 0xc355

.field public static final FUNCTION_EM_SENSOR_GET_GYROSCOPE_CALIBRATION:I = 0xc358

.field public static final FUNCTION_EM_SENSOR_SET_THRESHOLD:I = 0xc353

.field public static final RESULT_CONTINUE:I = 0x1

.field public static final RESULT_FIN:I = 0x0

.field public static final RESULT_IO_ERR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EM/functioncall"


# instance fields
.field private mSocket:Lcom/mediatek/engineermode/emsvr/Client;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    return-void
.end method

.method private endCallFunction()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/emsvr/Client;->stopClient()V

    .line 199
    return-void
.end method


# virtual methods
.method public getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    new-instance v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    invoke-direct {v1}, Lcom/mediatek/engineermode/emsvr/FunctionReturn;-><init>()V

    .line 175
    .local v1, ret:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/Client;->read()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    .line 176
    iget-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const/4 v2, 0x0

    iput v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    .line 178
    invoke-direct {p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 191
    :goto_0
    return-object v1

    .line 180
    :cond_0
    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/io/EOFException;
    invoke-direct {p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 184
    iput v3, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    .line 185
    const-string v2, ""

    iput-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 188
    const/4 v2, -0x1

    iput v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    goto :goto_0
.end method

.method public startCallFunctionStringReturn(I)Z
    .locals 5
    .parameter "functionId"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, result:Z
    new-instance v2, Lcom/mediatek/engineermode/emsvr/Client;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/Client;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    .line 99
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/Client;->startClient()V

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/Client;->writeFunctionNo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v1, 0x1

    .line 107
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    const-string v2, "EM/functioncall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartCallFunctionStringReturnEXP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamInt(I)Z
    .locals 3
    .parameter "param"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/Client;->writeParamInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamNo(I)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/Client;->writeParamNo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamString(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/engineermode/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/Client;->writeParamString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v1, 0x1

    .line 162
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
