.class final Ltmsdkobf/ie$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/ie;->reportChannelInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic qN:Ltmsdkobf/kf;


# direct methods
.method constructor <init>(Ltmsdkobf/kf;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ltmsdkobf/ie$2;->qN:Ltmsdkobf/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 55
    invoke-static {}, Ltmsdkobf/ie;->ce()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Ltmsdkobf/ie;->cJ()Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    invoke-static {v7}, Ltmsdkobf/ie;->l(Z)Z

    .line 61
    :cond_0
    const-wide/16 v4, 0x2710

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const-class v4, Ltmsdkobf/lk;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdkobf/lk;

    .line 66
    .local v3, wm:Ltmsdkobf/lk;
    invoke-virtual {v3}, Ltmsdkobf/lk;->gn()I

    move-result v2

    .line 67
    .local v2, result:I
    if-nez v2, :cond_2

    .line 68
    iget-object v4, p0, Ltmsdkobf/ie$2;->qN:Ltmsdkobf/kf;

    const-string v5, "reportlc"

    invoke-virtual {v4, v5, v6, v6}, Ltmsdkobf/kf;->a(Ljava/lang/String;ZZ)V

    .line 77
    :cond_1
    :goto_1
    invoke-static {v7}, Ltmsdkobf/ie;->m(Z)Z

    .line 78
    return-void

    .line 62
    .end local v2           #result:I
    .end local v3           #wm:Ltmsdkobf/lk;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #result:I
    .restart local v3       #wm:Ltmsdkobf/lk;
    :cond_2
    invoke-static {}, Ltmsdkobf/ie;->ce()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Ltmsdkobf/ie;->cJ()Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-static {v6}, Ltmsdkobf/ie;->l(Z)Z

    goto :goto_1
.end method
