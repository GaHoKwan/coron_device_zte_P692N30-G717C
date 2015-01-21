.class public Lcn/com/zte/yp/statics/StaticsInfo;
.super Ljava/lang/Object;
.source "StaticsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/statics/StaticsInfo$SendResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectSelfDefineStatiscs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "eventName"

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 58
    invoke-static {p1}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static collectSelfDefineStatiscs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "eventName"
    .parameter "eventValue"

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p1, p2}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static collectStatiscs(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public sendStaticsInfo(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Lcn/com/zte/yp/statics/StaticsInfo$1;

    invoke-direct {v0, p0, p1}, Lcn/com/zte/yp/statics/StaticsInfo$1;-><init>(Lcn/com/zte/yp/statics/StaticsInfo;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/com/zte/yp/statics/StaticsInfo$1;->start()V

    .line 44
    return-void
.end method
