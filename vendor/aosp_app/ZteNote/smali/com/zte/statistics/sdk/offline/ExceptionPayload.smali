.class public Lcom/zte/statistics/sdk/offline/ExceptionPayload;
.super Lcom/zte/statistics/sdk/offline/Payload;
.source "ExceptionPayload.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/Payload;-><init>()V

    .line 20
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->getTypeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;->setDeviceInfo()V

    .line 23
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;->setVersionInfo()V

    .line 26
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "record"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "exception"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "type"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "record"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "exception"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "info"

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/zte/statistics/sdk/offline/ExceptionPayload;->setString(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
