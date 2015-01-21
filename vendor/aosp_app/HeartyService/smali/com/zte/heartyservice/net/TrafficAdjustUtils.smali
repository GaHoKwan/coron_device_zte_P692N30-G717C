.class public Lcom/zte/heartyservice/net/TrafficAdjustUtils;
.super Ljava/lang/Object;
.source "TrafficAdjustUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTraffic(ILandroid/content/Context;Z)V
    .locals 6
    .parameter "subscription"
    .parameter "context"
    .parameter "setSimInfo"

    .prologue
    const/high16 v5, 0x1000

    .line 16
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->supportAutoTrafficCorrection()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    const-string v2, "TrafficAdjustUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug adjustTraffic subscription:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    const v2, 0x7f0a03ab

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    move-result-object v1

    .line 26
    .local v1, tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->isLastConfigSim(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 27
    if-eqz p2, :cond_2

    .line 28
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "subscription"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->resetConfig(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    :cond_3
    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->startCorrection(I)V

    goto :goto_0

    .line 41
    .end local v1           #tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zte/heartyservice/appwidget/TrafficAdjustActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    const-string v2, "show_adj_dialog"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
