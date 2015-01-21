.class Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;
.super Landroid/os/AsyncTask;
.source "TrafficCorrection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ltmsdk/bg/module/network/TrafficCorrectionConfig;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mSubscription:I

.field final synthetic this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;I)V
    .locals 0
    .parameter
    .parameter "subscription"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 507
    iput p2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->mSubscription:I

    .line 508
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ltmsdk/bg/module/network/TrafficCorrectionConfig;)Ljava/lang/Integer;
    .locals 7
    .parameter "params"

    .prologue
    .line 512
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 513
    .local v2, ret:Ljava/lang/Integer;
    const/4 v4, 0x0

    aget-object v0, p1, v4

    .line 515
    .local v0, config:Ltmsdk/bg/module/network/TrafficCorrectionConfig;
    :try_start_0
    const-class v4, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    invoke-static {v4}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v3

    check-cast v3, Ltmsdk/bg/module/network/TrafficCorrectionManager;

    .line 517
    .local v3, tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    const-string v4, "TrafficCorrection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provinceCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mProvinceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cityCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCityId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simCarrierCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mCarryId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simBrandCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Ltmsdk/bg/module/network/TrafficCorrectionConfig;->mBrandId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v3, v0}, Ltmsdk/bg/module/network/TrafficCorrectionManager;->setConfig(Ltmsdk/bg/module/network/TrafficCorrectionConfig;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 524
    .end local v3           #tcMgr:Ltmsdk/bg/module/network/TrafficCorrectionManager;
    :goto_0
    return-object v2

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "TrafficCorrection"

    const-string v5, "error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 503
    check-cast p1, [Ltmsdk/bg/module/network/TrafficCorrectionConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->doInBackground([Ltmsdk/bg/module/network/TrafficCorrectionConfig;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const v5, 0x7f0a03a1

    const/4 v4, 0x0

    .line 529
    const-string v0, "TrafficCorrection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetConfig return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    iget v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->setConfigSim(I)V

    .line 550
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x80e

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x806

    if-ne v0, v1, :cond_2

    .line 536
    :cond_1
    const-string v0, "TrafficCorrection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    #getter for: Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->access$000(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    #getter for: Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->access$000(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a03a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    #getter for: Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->access$000(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    #getter for: Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->access$000(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->this$0:Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;

    #getter for: Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->access$000(Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 503
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection$SwitchConfigTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
