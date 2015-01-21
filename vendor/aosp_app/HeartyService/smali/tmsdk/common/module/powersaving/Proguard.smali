.class public final Ltmsdk/common/module/powersaving/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 4

    .prologue
    .line 8
    const-class v2, Ltmsdk/common/module/powersaving/PowerSavingManager;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/powersaving/PowerSavingManager;

    .line 9
    .local v1, manager:Ltmsdk/common/module/powersaving/PowerSavingManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ltmsdk/common/module/powersaving/PowerSavingManager;->setPowerSavingConfig(Ltmsdk/common/module/powersaving/PowerSavingConfig;Z)V

    .line 11
    invoke-virtual {v1}, Ltmsdk/common/module/powersaving/PowerSavingManager;->getBatteryInfoHelper()Ltmsdk/common/module/powersaving/IBatteryInfoHelper;

    move-result-object v0

    .line 12
    .local v0, batteryInfoHelper:Ltmsdk/common/module/powersaving/IBatteryInfoHelper;
    invoke-interface {v0}, Ltmsdk/common/module/powersaving/IBatteryInfoHelper;->getMaxPowerUseHours()D

    .line 13
    invoke-interface {v0}, Ltmsdk/common/module/powersaving/IBatteryInfoHelper;->getCallRemainHours()D

    .line 14
    invoke-interface {v0}, Ltmsdk/common/module/powersaving/IBatteryInfoHelper;->getContinueRemainHours()D

    .line 15
    return-void
.end method
