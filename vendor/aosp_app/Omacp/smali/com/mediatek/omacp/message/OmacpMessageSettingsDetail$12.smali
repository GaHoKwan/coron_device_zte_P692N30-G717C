.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;
.super Landroid/content/BroadcastReceiver;
.source "OmacpMessageSettingsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.omacp.settings.result"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1444
    const-string v3, "appId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, appId:Ljava/lang/String;
    const-string v3, "result"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1448
    .local v1, installSuccess:Z
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OmacpMessageSettingsDetail result received, appId is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string v3, "apn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1453
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApnResultObj:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$ResultType;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1454
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    const-string v4, "OmacpMessageSettingsDetail mResultReceiver mApnResultObj is null."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :goto_0
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1300(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x7d1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1465
    .end local v0           #appId:Ljava/lang/String;
    .end local v1           #installSuccess:Z
    :cond_0
    :goto_1
    return-void

    .line 1456
    .restart local v0       #appId:Ljava/lang/String;
    .restart local v1       #installSuccess:Z
    :cond_1
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendApplicationsByApnResult(Z)V
    invoke-static {v3, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1200(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Z)V

    goto :goto_0

    .line 1461
    :cond_2
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApplicationResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1462
    .local v2, size:I
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$12;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->sendApplicationsByAppResult(ILjava/lang/String;Z)V
    invoke-static {v3, v2, v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$1500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;ILjava/lang/String;Z)V

    goto :goto_1
.end method
