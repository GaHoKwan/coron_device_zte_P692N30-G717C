.class Lcom/zte/heartyservice/main/HeartyServiceApp$2;
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
    .line 1731
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1734
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceApp;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v12}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$100(Lcom/zte/heartyservice/main/HeartyServiceApp;)Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    const-string v12, "HeartyServiceApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mStatsReceiver : intent is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v1

    .line 1740
    .local v1, netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1741
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v12

    invoke-static {v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v11

    .line 1743
    .local v11, settingUtils:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1744
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverMonthLimit(I)Z

    move-result v6

    .line 1745
    .local v6, overMonthLimit0:Z
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverTodayLimit(I)Z

    move-result v9

    .line 1746
    .local v9, overTodayLimit0:Z
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverMonthLimit(I)Z

    move-result v7

    .line 1747
    .local v7, overMonthLimit1:Z
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverTodayLimit(I)Z

    move-result v10

    .line 1749
    .local v10, overTodayLimit1:Z
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverIdleHoursLimit(I)Z

    move-result v3

    .line 1750
    .local v3, overIdleHoursMonthLimit0:Z
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverIdleHoursLimit(I)Z

    move-result v4

    .line 1753
    .local v4, overIdleHoursMonthLimit1:Z
    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    .line 1754
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->isAlertShownToday(I)Z
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$200(Lcom/zte/heartyservice/main/HeartyServiceApp;I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1755
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    .line 1771
    :cond_2
    :goto_1
    if-eqz v10, :cond_8

    if-eqz v7, :cond_8

    .line 1772
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x3

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->isAlertShownToday(I)Z
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$200(Lcom/zte/heartyservice/main/HeartyServiceApp;I)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1773
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x3

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1756
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1757
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto :goto_1

    .line 1759
    :cond_4
    if-eqz v9, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1760
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto :goto_1

    .line 1761
    :cond_5
    if-eqz v6, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1762
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto :goto_1

    .line 1765
    :cond_6
    if-eqz v3, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1766
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x4

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto :goto_1

    .line 1774
    :cond_7
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1775
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x2

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1777
    :cond_8
    if-eqz v10, :cond_9

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1778
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x2

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1779
    :cond_9
    if-eqz v7, :cond_a

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1780
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x3

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1783
    :cond_a
    if-eqz v4, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1784
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x5

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1788
    .end local v3           #overIdleHoursMonthLimit0:Z
    .end local v4           #overIdleHoursMonthLimit1:Z
    .end local v6           #overMonthLimit0:Z
    .end local v7           #overMonthLimit1:Z
    .end local v9           #overTodayLimit0:Z
    .end local v10           #overTodayLimit1:Z
    :cond_b
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverMonthLimit()Z

    move-result v5

    .line 1789
    .local v5, overMonthLimit:Z
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverTodayLimit()Z

    move-result v8

    .line 1791
    .local v8, overTodayLimit:Z
    const/4 v12, -0x1

    invoke-virtual {v1, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->isOverIdleHoursLimit(I)Z

    move-result v2

    .line 1793
    .local v2, overIdleHoursMonthLimit:Z
    if-eqz v8, :cond_d

    if-eqz v5, :cond_d

    .line 1794
    invoke-virtual {v11}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->isAlertShownToday(I)Z
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$200(Lcom/zte/heartyservice/main/HeartyServiceApp;I)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1795
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1796
    :cond_c
    invoke-virtual {v11}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1797
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1799
    :cond_d
    if-eqz v8, :cond_e

    invoke-virtual {v11}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1800
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1801
    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v11}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1802
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1805
    :cond_f
    if-eqz v2, :cond_0

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1806
    iget-object v12, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v13, 0x4

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V
    invoke-static {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V

    goto/16 :goto_0

    .line 1811
    .end local v2           #overIdleHoursMonthLimit:Z
    .end local v5           #overMonthLimit:Z
    .end local v8           #overTodayLimit:Z
    .end local v11           #settingUtils:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1812
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->refreshNetStats()V

    goto/16 :goto_0
.end method
