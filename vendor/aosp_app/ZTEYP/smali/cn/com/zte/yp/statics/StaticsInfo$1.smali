.class Lcn/com/zte/yp/statics/StaticsInfo$1;
.super Ljava/lang/Thread;
.source "StaticsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/yp/statics/StaticsInfo;->sendStaticsInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/statics/StaticsInfo;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/statics/StaticsInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcn/com/zte/yp/statics/StaticsInfo$1;->this$0:Lcn/com/zte/yp/statics/StaticsInfo;

    iput-object p2, p0, Lcn/com/zte/yp/statics/StaticsInfo$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    const-string v2, "stt set by self"

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 35
    :try_start_0
    iget-object v2, p0, Lcn/com/zte/yp/statics/StaticsInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes()V

    .line 37
    new-instance v1, Lcn/com/zte/yp/statics/StaticsInfo$SendResult;

    iget-object v2, p0, Lcn/com/zte/yp/statics/StaticsInfo$1;->this$0:Lcn/com/zte/yp/statics/StaticsInfo;

    invoke-direct {v1, v2}, Lcn/com/zte/yp/statics/StaticsInfo$SendResult;-><init>(Lcn/com/zte/yp/statics/StaticsInfo;)V

    .line 38
    .local v1, sr:Lcn/com/zte/yp/statics/StaticsInfo$SendResult;
    invoke-static {v1}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo(Lcom/zte/statistics/sdk/CollectionSendResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1           #sr:Lcn/com/zte/yp/statics/StaticsInfo$SendResult;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
