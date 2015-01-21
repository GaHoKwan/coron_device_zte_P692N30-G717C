.class public Lcom/zte/update/ui/pop/ProgressPop;
.super Lcom/zte/update/ui/pop/AbstractPopoupWindow;
.source "ProgressPop.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;


# instance fields
.field handler:Landroid/os/Handler;

.field progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 36
    const v0, 0x7f030007

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;-><init>(Landroid/content/Context;I)V

    .line 27
    new-instance v0, Lcom/zte/update/ui/pop/ProgressPop$1;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/pop/ProgressPop$1;-><init>(Lcom/zte/update/ui/pop/ProgressPop;)V

    iput-object v0, p0, Lcom/zte/update/ui/pop/ProgressPop;->handler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method protected dismissSelf()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "progress popwindow dismiss"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/zte/update/ui/pop/ProgressPop;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
.end method

.method protected regist()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 52
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 53
    return-void
.end method

.method protected unRegist()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 70
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 71
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/ProgressPop;->regist()V

    .line 45
    invoke-super {p0}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;->update()V

    .line 48
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/ProgressPop;->unRegist()V

    .line 58
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/ProgressPop;->dismissSelf()V

    .line 61
    return-void
.end method
