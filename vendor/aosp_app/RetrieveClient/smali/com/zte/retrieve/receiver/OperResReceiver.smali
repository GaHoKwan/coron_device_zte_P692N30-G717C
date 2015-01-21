.class public Lcom/zte/retrieve/receiver/OperResReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OperResReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    return-void
.end method

.method public sendOperResultReport(ILjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "rescode"
    .parameter "url"
    .parameter "context"

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zte/retrieve/receiver/OperResReceiver$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/zte/retrieve/receiver/OperResReceiver$1;-><init>(Lcom/zte/retrieve/receiver/OperResReceiver;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method
