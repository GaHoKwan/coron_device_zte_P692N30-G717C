.class public Laliveupdate/ZTEStatisticsBuild;
.super Ljava/lang/Object;
.source "ZTEStatisticsBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 20
    :try_start_0
    const-string v6, "com.zte.statistics.sdk.ZTEStatistics"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 21
    .local v5, zteStatisticsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "com.zte.statistics.sdk.comm.ConstantDefine.SendMode"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 23
    .local v4, sendModeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "int"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 24
    .local v1, initMethod:Ljava/lang/reflect/Method;
    const-string v6, "ONLYBYSELF"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 26
    .local v2, onlySelfField:Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 28
    .local v3, onlySelfvalue:Ljava/lang/Object;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1           #initMethod:Ljava/lang/reflect/Method;
    .end local v2           #onlySelfField:Ljava/lang/reflect/Field;
    .end local v3           #onlySelfvalue:Ljava/lang/Object;
    .end local v4           #sendModeClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #zteStatisticsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ZTEStatisticsBuild"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zte/util/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
