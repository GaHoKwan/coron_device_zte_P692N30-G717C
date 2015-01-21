.class final Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RoamDataStateTracker"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mSimId:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1464
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mContext:Landroid/content/Context;

    .line 1461
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    .line 1462
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mSimId:J

    .line 1465
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mContext:Landroid/content/Context;

    .line 1466
    invoke-static {p2, v3}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1467
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 1468
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mSimId:J

    .line 1470
    :cond_0
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 1487
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1489
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1490
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :cond_0
    if-eqz p1, :cond_1

    .line 1498
    const/4 v2, 0x1

    .line 1502
    .local v2, roamingState:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v3, v2, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1503
    .end local v2           #roamingState:I
    :goto_1
    return-void

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "QuickSettings"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1500
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #roamingState:I
    goto :goto_0
.end method


# virtual methods
.method public checkEnabled(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1479
    const v0, 0x7f02009f

    if-ne p1, v0, :cond_0

    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    .line 1484
    :goto_0
    return-void

    .line 1482
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    goto :goto_0
.end method

.method public toggleState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1473
    const-string v3, "QuickSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RoamDataStateTracker toggleState : should enable = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    .line 1475
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$RoamDataStateTracker;->setDataRoaming(Z)V

    .line 1476
    return-void

    :cond_0
    move v0, v2

    .line 1473
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1474
    goto :goto_1
.end method
