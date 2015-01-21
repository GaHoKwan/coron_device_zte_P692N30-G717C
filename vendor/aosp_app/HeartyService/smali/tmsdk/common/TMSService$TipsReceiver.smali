.class public Ltmsdk/common/TMSService$TipsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/TMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsReceiver"
.end annotation


# instance fields
.field final synthetic xq:Ltmsdk/common/TMSService;


# direct methods
.method public constructor <init>(Ltmsdk/common/TMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ltmsdk/common/TMSService$TipsReceiver;->xq:Ltmsdk/common/TMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, action:Ljava/lang/String;
    const-string v4, "action_verify"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-static {}, Ltmsdkobf/lz;->hm()Ltmsdkobf/lz;

    move-result-object v4

    invoke-static {v4}, Ltmsdkobf/ly;->a(Ltmsdkobf/mf;)V

    .line 61
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v4

    new-instance v5, Ltmsdk/common/TMSService$TipsReceiver$1;

    invoke-direct {v5, p0}, Ltmsdk/common/TMSService$TipsReceiver$1;-><init>(Ltmsdk/common/TMSService$TipsReceiver;)V

    const-string v6, "getCloudService"

    invoke-virtual {v4, v5, v6}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v4, "action_direct_verify"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, cmdInfo:Ltmsdkobf/bn;
    :try_start_0
    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ltmsdkobf/bn;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    if-eqz v2, :cond_0

    .line 76
    invoke-static {v2}, Ltmsdkobf/ly;->b(Ltmsdkobf/bn;)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    .local v3, e:Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method
