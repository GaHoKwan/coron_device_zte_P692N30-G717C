.class Ltmsdk/common/TMSBootReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/TMSBootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xg:Landroid/content/Context;

.field final synthetic xh:Ltmsdk/common/TMSBootReceiver;


# direct methods
.method constructor <init>(Ltmsdk/common/TMSBootReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Ltmsdk/common/TMSBootReceiver$1;->xh:Ltmsdk/common/TMSBootReceiver;

    iput-object p2, p0, Ltmsdk/common/TMSBootReceiver$1;->xg:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    new-instance v0, Ltmsdkobf/jq;

    invoke-direct {v0}, Ltmsdkobf/jq;-><init>()V

    .line 35
    .local v0, cpu:Ltmsdkobf/jq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Ltmsdkobf/jq;->d(II)V

    .line 36
    new-instance v3, Ltmsdk/common/TMSBootReceiver$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ltmsdk/common/TMSBootReceiver$a;-><init>(Ltmsdk/common/TMSBootReceiver$1;)V

    iget-object v4, p0, Ltmsdk/common/TMSBootReceiver$1;->xg:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ltmsdk/common/TMSBootReceiver$a;->n(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Ltmsdkobf/jq;->d(II)V

    .line 37
    invoke-virtual {v0}, Ltmsdkobf/jq;->commit()V

    .line 38
    return-void

    :cond_0
    move v1, v2

    .line 36
    goto :goto_0
.end method
