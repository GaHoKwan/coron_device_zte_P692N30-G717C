.class public abstract Lcom/zte/update/ui/pop/ActionWithPop;
.super Ljava/lang/Object;
.source "ActionWithPop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/ui/pop/ActionWithPop$2;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/zte/update/ui/pop/ActionWithPop;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method protected abstract action()V
.end method

.method protected showDataNetworkAlertPop()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/zte/update/ui/pop/ActionWithPop$1;

    iget-object v1, p0, Lcom/zte/update/ui/pop/ActionWithPop;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/update/ui/pop/ActionWithPop$1;-><init>(Lcom/zte/update/ui/pop/ActionWithPop;Landroid/content/Context;)V

    .line 36
    .local v0, pop:Lcom/zte/update/ui/pop/DataNetworkAlertPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/DataNetworkAlertPop;->update()V

    .line 37
    return-void
.end method

.method protected showNetworkAlertPop()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/zte/update/ui/pop/NetworkAlertPop;

    iget-object v1, p0, Lcom/zte/update/ui/pop/ActionWithPop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/update/ui/pop/NetworkAlertPop;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, pop:Lcom/zte/update/ui/pop/NetworkAlertPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/NetworkAlertPop;->update()V

    .line 27
    return-void
.end method

.method protected showProgressPop()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/zte/update/ui/pop/ProgressPop;

    iget-object v1, p0, Lcom/zte/update/ui/pop/ActionWithPop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/update/ui/pop/ProgressPop;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, pop:Lcom/zte/update/ui/pop/ProgressPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/ProgressPop;->update()V

    .line 21
    return-void
.end method

.method public startAction()V
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/zte/aliveupdate/Configuration;->getConfig()Lcom/zte/aliveupdate/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/aliveupdate/Configuration;->getNetworkStrategy()Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    move-result-object v0

    .line 43
    .local v0, networkStrategy:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    iget-object v2, p0, Lcom/zte/update/ui/pop/ActionWithPop;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v1

    .line 46
    .local v1, status:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    sget-object v2, Lcom/zte/update/ui/pop/ActionWithPop$2;->$SwitchMap$com$zte$aliveupdate$common$utils$NetworkStrategy$NetworkStatus:[I

    invoke-virtual {v1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 56
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/ActionWithPop;->action()V

    .line 61
    :goto_0
    :pswitch_0
    return-void

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/ActionWithPop;->showNetworkAlertPop()V

    goto :goto_0

    .line 51
    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/ActionWithPop;->showDataNetworkAlertPop()V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
