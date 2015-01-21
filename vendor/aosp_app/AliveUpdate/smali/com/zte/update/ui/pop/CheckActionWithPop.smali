.class public Lcom/zte/update/ui/pop/CheckActionWithPop;
.super Lcom/zte/update/ui/pop/ActionWithPop;
.source "CheckActionWithPop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/zte/update/ui/pop/ActionWithPop;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/CheckActionWithPop;->showProgressPop()V

    .line 22
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startCheck(I)V

    .line 25
    return-void
.end method
