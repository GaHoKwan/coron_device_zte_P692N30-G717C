.class public abstract Ltmsdk/common/TMSBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/TMSBootReceiver$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v1, Ltmsdk/common/TMSBootReceiver$1;

    invoke-direct {v1, p0, p1}, Ltmsdk/common/TMSBootReceiver$1;-><init>(Ltmsdk/common/TMSBootReceiver;Landroid/content/Context;)V

    const-string v2, "TMSBootReceiveThread"

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method
