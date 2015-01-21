.class public Lcom/mediatek/apst/target/receiver/DaemonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DaemonReceiver.java"


# static fields
.field public static final ACTION_START_MAIN_SERVICE:Ljava/lang/String; = "com.mediatek.apst.target.action.START_MAIN_SERVICE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, strAction:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 79
    new-array v6, v11, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    const-string v7, "intent.getAction() returns null."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v6, "com.mediatek.apst.target.action.START_MAIN_SERVICE"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/mediatek/apst/target/service/MainService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v3, newIntent:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/mediatek/apst/target/ftp/FtpService;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v2, intentFtp:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    new-array v6, v11, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    const-string v7, "Starting APST Daemon, version 2.1306.0"

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v2           #intentFtp:Landroid/content/Intent;
    .end local v3           #newIntent:Landroid/content/Intent;
    :cond_2
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    const-string v6, "android.intent.extra.UID"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 111
    .local v5, uid:I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.android.contacts"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 113
    .local v0, contactsAppUid:I
    if-ne v0, v5, :cond_0

    .line 114
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const-string v7, "Contacts package data cleared!"

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "SYNC_NEED_REINIT"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 121
    .end local v0           #contactsAppUid:I
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-array v6, v11, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v6, v12, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/NullPointerException;
    new-array v6, v11, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v6, v12, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
