.class Lcom/zte/heartyservice/main/HeartyServiceApp$4;
.super Landroid/content/BroadcastReceiver;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1836
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, action:Ljava/lang/String;
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action xxxxx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const-string v3, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1840
    const-string v3, "updatable_sum"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1841
    .local v2, sum:I
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " sum ============="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v3, v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v1

    .line 1843
    .local v1, preSum:I
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " preSum =========="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    if-eq v1, v2, :cond_1

    .line 1846
    const-string v3, "HeartyServiceApp"

    const-string v4, " notify ==============="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v3, v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v3, v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSumRead(I)V

    .line 1848
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v3, v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSum(I)V

    .line 1849
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v3, v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v3, v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSumIsSame(I)V

    .line 1850
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 1859
    .end local v1           #preSum:I
    .end local v2           #sum:I
    :cond_0
    :goto_0
    return-void

    .line 1853
    .restart local v1       #preSum:I
    .restart local v2       #sum:I
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v3, v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSumIsSame(I)V

    goto :goto_0
.end method
