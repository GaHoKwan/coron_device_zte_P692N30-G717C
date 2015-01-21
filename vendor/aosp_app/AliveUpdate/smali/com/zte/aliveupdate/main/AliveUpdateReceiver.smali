.class public Lcom/zte/aliveupdate/main/AliveUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AliveUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aliveupdate/main/AliveUpdateReceiver$1;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final ACTION_NETWORK:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final INTRERRUPTION_STATUS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "AliveUpdateReceiver"

.field private static isChecked:Z


# instance fields
.field private networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->isChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 133
    return-void
.end method

.method private handleNetworkCheck(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 72
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aliveupdate/Configuration;->getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    .line 73
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "IS_AUTO_CHECK_OPENED"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, autocheck:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto check = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->judgeNetwork(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->getTimePeriod()J

    move-result-wide v1

    .line 83
    .local v1, timePeriod:J
    invoke-virtual {p0, v1, v2}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->isNeedStartCheck(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->startNetworkCheck(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private judgeNetwork(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 89
    iget-object v4, p0, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    invoke-virtual {v4, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v3

    .line 90
    .local v3, networkStatus:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->getCode()I

    move-result v4

    if-gez v4, :cond_1

    .line 97
    const-string v4, "the networkStatus.getCode < 0"

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/zte/update/data/DataManager;->getDownloadInfosByStatus(I)Ljava/util/Set;

    move-result-object v2

    .line 102
    .local v2, infoSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/zte/update/data/DownloadInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/update/data/DownloadInfo;

    .line 103
    .local v1, info:Lcom/zte/update/data/DownloadInfo;
    if-eqz v1, :cond_2

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To restart appname ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zte/update/data/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/zte/update/download/DownloadManager;->getInstance()Lcom/zte/update/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/zte/update/download/DownloadManager;->addTask(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0
.end method

.method private sendBootBroacast()V
    .locals 6

    .prologue
    .line 52
    const-string v3, "send app_service intent"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :try_start_0
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 56
    .local v2, ipm:Landroid/content/pm/IPackageManager;
    const-string v3, "com.zte.backup.mmi"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .end local v2           #ipm:Landroid/content/pm/IPackageManager;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.app_service.launch"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void

    .line 59
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startCheck(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 154
    sget-boolean v0, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->isChecked:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "info has been checked,return"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->isChecked:Z

    .line 161
    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->startCheck(I)V

    .line 162
    invoke-static {v1}, Lcom/zte/update/mgr/ServiceTasks;->startSelfCheck(I)V

    goto :goto_0
.end method


# virtual methods
.method getTimePeriod()J
    .locals 3

    .prologue
    .line 147
    const-wide/16 v1, 0x1

    .line 148
    .local v1, timePeriod:J
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPeriodType()Lcom/zte/aliveupdate/common/datatype/PeriodType;

    move-result-object v0

    .line 149
    .local v0, periodType:Lcom/zte/aliveupdate/common/datatype/PeriodType;
    invoke-virtual {v0}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->getTimePeriod()J

    move-result-wide v1

    .line 150
    return-wide v1
.end method

.method isNeedStartCheck(J)Z
    .locals 6
    .parameter "timePeriod"

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/aliveupdate/Configuration;->getLastCheckTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 139
    .local v0, currentTime:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last check time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aliveupdate/Configuration;->getLastCheckTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System.currentTimeMillis() - AliveUpdateApp.getLastUpdateTime()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timePeriod is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->sendBootBroacast()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->handleNetworkCheck(Landroid/content/Context;)V

    goto :goto_0
.end method

.method startNetworkCheck(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 111
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 113
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current net work info is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->isChecked:Z

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getNetWorkType()Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    move-result-object v1

    .line 119
    .local v1, netWorkType:Lcom/zte/aliveupdate/common/datatype/NetWorkType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current net work Type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v3, Lcom/zte/aliveupdate/main/AliveUpdateReceiver$1;->$SwitchMap$com$zte$aliveupdate$common$datatype$NetWorkType:[I

    invoke-virtual {v1}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 129
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-static {v3, v4}, Lcom/zte/aliveupdate/common/utils/AppUtils;->isWifiOnly(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    const-string v3, "start check"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->startCheck(Landroid/content/Context;)V

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-static {v3, v4}, Lcom/zte/aliveupdate/common/utils/AppUtils;->isWifiOr3G(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    const-string v3, "start check"

    invoke-static {p0, v3}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/zte/aliveupdate/main/AliveUpdateReceiver;->startCheck(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
