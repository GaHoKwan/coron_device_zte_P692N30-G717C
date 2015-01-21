.class Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;
.super Landroid/os/AsyncTask;
.source "TrafficCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mSubscription:I

.field final synthetic this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;I)V
    .locals 1
    .parameter
    .parameter "subscription"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->mSubscription:I

    .line 257
    iput p2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->mSubscription:I

    .line 258
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;
    .locals 5
    .parameter "params"

    .prologue
    .line 262
    new-instance v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;

    iget-object v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    invoke-direct {v1, v3}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;-><init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)V

    .line 264
    .local v1, result:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mInfoList:Ljava/util/ArrayList;

    .line 265
    const/4 v3, -0x1

    iput v3, v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mErr:I

    .line 267
    :try_start_0
    const-class v3, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-static {v3}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v2

    check-cast v2, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    .line 269
    .local v2, tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    iget-object v3, v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->startCorrection(Ljava/util/ArrayList;)I

    move-result v3

    iput v3, v1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mErr:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v2           #tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TrafficCorrection"

    const-string v4, "error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->doInBackground([Ljava/lang/Void;)Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    iget v3, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->isLastConfigSim(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    const-string v2, "TrafficCorrection"

    const-string v3, "isLastConfigSim false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v2, p1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mErr:I

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/network/CorrectionDataInfo;

    .line 287
    .local v0, di:Ltmsdk/bg/module/network/CorrectionDataInfo;
    const-string v2, "TrafficCorrection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "di.getAddress():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltmsdk/bg/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  di.getMessage():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltmsdk/bg/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v0}, Ltmsdk/bg/module/network/CorrectionDataInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/bg/module/network/CorrectionDataInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->mSubscription:I

    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->sendSms(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 292
    .end local v0           #di:Ltmsdk/bg/module/network/CorrectionDataInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v2, "TrafficCorrection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;->mErr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$CorrectingTask;->onPostExecute(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$TCResult;)V

    return-void
.end method
