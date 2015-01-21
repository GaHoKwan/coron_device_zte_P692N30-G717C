.class public Ltmsdk/common/module/powersaving/PowerSavingEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 64
    return-void
.end method

.method public onCloseBlueTooth(Z)V
    .locals 0
    .parameter "isPowerSavingSetting"

    .prologue
    .line 49
    return-void
.end method

.method public onCloseMobileNetwork(Z)V
    .locals 0
    .parameter "isPowerSavingSetting"

    .prologue
    .line 33
    return-void
.end method

.method public onCloseWifi(Z)V
    .locals 0
    .parameter "isPowerSavingSetting"

    .prologue
    .line 17
    return-void
.end method

.method public onFinishBatteryCharging(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 85
    return-void
.end method

.method public onOpenBlueTooth(Z)V
    .locals 0
    .parameter "isPowerSavingSetting"

    .prologue
    .line 57
    return-void
.end method

.method public onOpenMobileNetwork(Z)V
    .locals 0
    .parameter "isPowerSavingSetting"

    .prologue
    .line 41
    return-void
.end method

.method public onOpenWifi(Z)V
    .locals 0
    .parameter "isPowerSavingSetting"

    .prologue
    .line 25
    return-void
.end method

.method public onStartBatteryCharging(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 71
    return-void
.end method

.method public onStopBatteryCharging(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 78
    return-void
.end method
