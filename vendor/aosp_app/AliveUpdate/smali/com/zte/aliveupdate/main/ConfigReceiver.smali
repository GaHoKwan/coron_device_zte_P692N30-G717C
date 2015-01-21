.class public Lcom/zte/aliveupdate/main/ConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigReceiver.java"


# static fields
.field private static final ACTION_CHANGE_CONFIG:Ljava/lang/String; = "com.zte.AliveUpdate.AliveUpdateService.Config"

.field private static final ACTION_CHANGE_FROM:Ljava/lang/String; = "andorid.aciton.aliveupdate.CHANGE_FROM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeConfig(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 29
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v0

    .line 30
    .local v0, config:Lcom/zte/aliveupdate/Configuration;
    const-string v2, "isCommerical"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 31
    .local v1, isCommerical:Z
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/zte/aliveupdate/Configuration;->setCommericlServer()V

    .line 38
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/zte/aliveupdate/Configuration;->setTestServer()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.zte.AliveUpdate.AliveUpdateService.Config"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-direct {p0, p2}, Lcom/zte/aliveupdate/main/ConfigReceiver;->changeConfig(Landroid/content/Intent;)V

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string v2, "andorid.aciton.aliveupdate.CHANGE_FROM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, text:Ljava/lang/String;
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->changeBuildModel(Ljava/lang/String;)V

    goto :goto_0
.end method
