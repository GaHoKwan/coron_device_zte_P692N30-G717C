.class public final Ltmsdk/common/module/netsetting/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    const-class v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 13
    .local v1, manager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :try_start_0
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getApnState()Z
    :try_end_0
    .catch Ltmsdk/common/exception/OperationSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->getAPNType(Ljava/lang/String;)I

    .line 19
    :try_start_1
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getCurUsedApn()Ljava/lang/String;
    :try_end_1
    .catch Ltmsdk/common/exception/OperationSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :goto_1
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    .line 24
    invoke-virtual {v1, v3}, Ltmsdk/common/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    .line 25
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->isMobileDataConnectivityActive()Z

    .line 26
    invoke-virtual {v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->isWifiActive()Z

    .line 28
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->switchTo(I)Z
    :try_end_2
    .catch Ltmsdk/common/exception/OperationSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    :goto_2
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, e:Ltmsdk/common/exception/OperationSecurityException;
    invoke-virtual {v0}, Ltmsdk/common/exception/OperationSecurityException;->printStackTrace()V

    goto :goto_0

    .line 20
    .end local v0           #e:Ltmsdk/common/exception/OperationSecurityException;
    :catch_1
    move-exception v0

    .line 21
    .restart local v0       #e:Ltmsdk/common/exception/OperationSecurityException;
    invoke-virtual {v0}, Ltmsdk/common/exception/OperationSecurityException;->printStackTrace()V

    goto :goto_1

    .line 29
    .end local v0           #e:Ltmsdk/common/exception/OperationSecurityException;
    :catch_2
    move-exception v0

    .line 30
    .restart local v0       #e:Ltmsdk/common/exception/OperationSecurityException;
    invoke-virtual {v0}, Ltmsdk/common/exception/OperationSecurityException;->printStackTrace()V

    goto :goto_2
.end method
