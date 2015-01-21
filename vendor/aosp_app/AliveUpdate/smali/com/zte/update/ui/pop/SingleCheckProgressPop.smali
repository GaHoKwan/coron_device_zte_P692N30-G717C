.class public Lcom/zte/update/ui/pop/SingleCheckProgressPop;
.super Lcom/zte/update/ui/pop/ProgressPop;
.source "SingleCheckProgressPop.java"


# instance fields
.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/zte/update/ui/pop/ProgressPop;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/zte/update/ui/pop/SingleCheckProgressPop$1;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/pop/SingleCheckProgressPop$1;-><init>(Lcom/zte/update/ui/pop/SingleCheckProgressPop;)V

    iput-object v0, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->handler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method protected dismissSelf()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method

.method protected handleSingleCheckResult([Ljava/lang/Object;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 65
    aget-object v0, p1, v3

    .line 66
    .local v0, mainKey:Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    .local v1, num:I
    if-lez v1, :cond_0

    .line 69
    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->startAppInfoActivity(Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected regist()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 41
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->registerObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 42
    return-void
.end method

.method protected unRegist()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 84
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 86
    return-void
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->unRegist()V

    .line 48
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->dismissSelf()V

    .line 61
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->handleSingleCheckResult([Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v1, p0, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
