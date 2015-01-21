.class public final Ltmsdk/common/module/powersaving/PowerSavingManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private AQ:Ltmsdk/common/module/powersaving/d;

.field private AR:Ltmsdk/common/module/powersaving/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getBatteryInfoHelper()Ltmsdk/common/module/powersaving/IBatteryInfoHelper;
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ltmsdk/common/module/powersaving/PowerSavingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AR:Ltmsdk/common/module/powersaving/c;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ltmsdk/common/module/powersaving/c;

    invoke-direct {v0}, Ltmsdk/common/module/powersaving/c;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AR:Ltmsdk/common/module/powersaving/c;

    .line 80
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AR:Ltmsdk/common/module/powersaving/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {v0}, Ltmsdk/common/module/powersaving/d;->getBatteryInfoHelper()Ltmsdk/common/module/powersaving/IBatteryInfoHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Ltmsdk/common/module/powersaving/PowerSavingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/16 v0, 0x64

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {v0}, Ltmsdk/common/module/powersaving/d;->getBatteryLevel()I

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    new-instance v0, Ltmsdk/common/module/powersaving/d;

    invoke-direct {v0}, Ltmsdk/common/module/powersaving/d;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    .line 23
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/powersaving/d;->onCreate(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/powersaving/PowerSavingManager;->a(Ltmsdk/common/BaseManager;)V

    .line 27
    const v0, 0x1d4e6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 28
    return-void
.end method

.method public registerPowerSavingEventListener(Ltmsdk/common/module/powersaving/PowerSavingEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 35
    invoke-static {}, Ltmsdk/common/module/powersaving/PowerSavingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/powersaving/d;->a(Ltmsdk/common/module/powersaving/PowerSavingEventListener;)V

    goto :goto_0
.end method

.method public setPowerSavingConfig(Ltmsdk/common/module/powersaving/PowerSavingConfig;Z)V
    .locals 1
    .parameter "config"
    .parameter "isClose"

    .prologue
    .line 56
    invoke-static {}, Ltmsdk/common/module/powersaving/PowerSavingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {v0, p1, p2}, Ltmsdk/common/module/powersaving/d;->setPowerSavingConfig(Ltmsdk/common/module/powersaving/PowerSavingConfig;Z)V

    goto :goto_0
.end method

.method public unRegisterPowerSavingEventListener(Ltmsdk/common/module/powersaving/PowerSavingEventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 45
    invoke-static {}, Ltmsdk/common/module/powersaving/PowerSavingManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/PowerSavingManager;->AQ:Ltmsdk/common/module/powersaving/d;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/powersaving/d;->b(Ltmsdk/common/module/powersaving/PowerSavingEventListener;)V

    goto :goto_0
.end method
