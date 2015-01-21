.class public Lcom/zte/retrieve/receiver/ApplicationMsgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationMsgReceiver.java"


# static fields
.field public static final BROADCAST_HEARTY_SERVICE_START:Ljava/lang/String; = "com.zte.heartyservice.intent.broadcast.autorun.state"

.field public static final BROADCAST_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 34
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcom/zte/retrieve/receiver/BootReceiver;

    invoke-direct {v0, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, bootReceiver:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-class v6, Lcom/zte/retrieve/receiver/NetStateReceiver;

    invoke-direct {v3, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v3, netStateReceiver:Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 40
    const-string v6, "retrieve get msg android.intent.action.PACKAGE_REMOVED"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, packageName:Ljava/lang/String;
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 44
    .local v2, isUpdate:Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "receive packageName is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isUpdate flag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 45
    const-string v6, "package:com.zte.heartyservice"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    .line 46
    const-string v6, "disable retrieve service and clear data"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 48
    new-instance v6, Lcom/zte/retrieve/utils/ConfigManager;

    invoke-direct {v6, p1}, Lcom/zte/retrieve/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/zte/retrieve/utils/ConfigManager;->clear()Z

    .line 50
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/zte/retrieve/controller/Controller;->stopService(Landroid/content/Context;)V

    .line 55
    :try_start_0
    const-string v6, "com.zte.retrieve"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2           #isUpdate:Z
    .end local v4           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.zte.heartyservice.intent.broadcast.autorun.state"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    const-string v6, "heartyService start and notify retrieve"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5, v0, v10, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 81
    invoke-virtual {v5, v3, v10, v10}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 84
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const-string v6, "retrieve is open,start service"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    .line 97
    :cond_1
    return-void

    .line 56
    .restart local v2       #isUpdate:Z
    .restart local v4       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "retrieve delete itself failed e ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5, v0, v11, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 60
    invoke-virtual {v5, v3, v11, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "package:com.zte.retrieve"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->isActive()Z

    move-result v6

    if-nez v6, :cond_3

    .line 65
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/retrieve/controller/Controller;->isVersionSecondUpdateThreeWithLocalOpen()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 66
    :cond_3
    const-string v6, "Retrieve update ! and retrieve is open,start service"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/zte/retrieve/controller/Controller;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v6, "Retrieve update ! and retrieve is NOT OPEN,no need to start service"

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
