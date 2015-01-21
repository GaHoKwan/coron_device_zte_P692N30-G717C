.class final Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
.super Lcom/android/systemui/statusbar/util/StateTracker;
.source "QuickSettingsConnectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimConnStateTracker"
.end annotation


# static fields
.field private static final ALL_RADIO_OFF:I


# instance fields
.field private mCurrentState:I

.field private mGprsTargSim:Z

.field private mHasSim:Z

.field private mIsAirlineMode:Z

.field private mIsMmsOngoing:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1247
    iput-object p1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StateTracker;-><init>()V

    .line 1248
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mGprsTargSim:Z

    .line 1249
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsAirlineMode:Z

    .line 1250
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mHasSim:Z

    .line 1251
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsMmsOngoing:Z

    .line 1252
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;-><init>(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mGprsTargSim:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsMmsOngoing:Z

    return v0
.end method

.method private enterNextState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1345
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterNextState state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    packed-switch p1, :pswitch_data_0

    .line 1385
    :goto_0
    return-void

    .line 1354
    :pswitch_0
    const-string v0, "QuickSettingsConnectionModel"

    const-string v1, "No Sim or one Sim do nothing!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1357
    :pswitch_1
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to switch from Sim1 to Sim2! mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    .line 1359
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto :goto_0

    .line 1362
    :pswitch_2
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to switch from Sim1 to Sim2! mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    .line 1364
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto :goto_0

    .line 1367
    :pswitch_3
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to switch from Sim2 to Sim1! mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iput v3, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    .line 1369
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto :goto_0

    .line 1372
    :pswitch_4
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to switch from Sim2 to Sim1! mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iput v4, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    .line 1374
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto/16 :goto_0

    .line 1377
    :pswitch_5
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to switch from Sim1 to Sim2! mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto/16 :goto_0

    .line 1381
    :pswitch_6
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to switch from Sim2 to Sim1! mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto/16 :goto_0

    .line 1346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private getSIMEnableState(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsAirlineMode:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllRadioOff()Z
    .locals 4

    .prologue
    .line 1257
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsAirlineMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1260
    .local v0, isAllRadioOff:Z
    :goto_0
    const-string v1, "QuickSettingsConnectionModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return v0

    .line 1257
    .end local v0           #isAllRadioOff:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRadioOff(I)Z
    .locals 8
    .parameter "SlotId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1276
    const/4 v1, 0x1

    .line 1278
    .local v1, isRadioOff:Z
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1279
    .local v2, mTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1281
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 1289
    .end local v2           #mTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v5, "QuickSettingsConnectionModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileStateTracker: isRadioOff() is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isAllRadioOff()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .restart local v2       #mTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    move v1, v4

    .line 1281
    goto :goto_0

    .line 1286
    .end local v2           #mTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1287
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "QuickSettingsConnectionModel"

    const-string v6, "MobileStateTracker: isRadioOff() mTelephony exception"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSimInsertedWithUnAvaliable(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1270
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isRadioOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mobileStateToFiveState()I
    .locals 8

    .prologue
    .line 1540
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gprs_connection_setting"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 1541
    .local v4, simSlotId:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1542
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1543
    .local v2, dataState:Z
    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 1547
    :cond_0
    const-string v5, "QuickSettingsConnectionModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SimConnStateToFiveState simSlotId is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmConn is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    if-eqz v2, :cond_2

    .line 1551
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mDataTimerHandler2:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4600(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1552
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 1553
    .local v3, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v3, :cond_1

    .line 1554
    const-string v5, "QuickSettingsConnectionModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SimConnStateTracker mobileStateToFiveState error for simInfo, slotId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v1, -0x2

    .line 1563
    .end local v3           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v1

    .line 1558
    .restart local v3       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    const/4 v1, 0x1

    .line 1559
    .local v1, currentState:I
    goto :goto_0

    .line 1560
    .end local v1           #currentState:I
    .end local v3           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mDataTimerHandler2:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4600(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1561
    const/4 v1, 0x0

    .restart local v1       #currentState:I
    goto :goto_0
.end method

.method private switchDataDefaultSIM(I)V
    .locals 13
    .parameter "slotId"

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 1389
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #calls: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->isWifiOnlyDevice()Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$100(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1391
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->setIsUserSwitching(Z)V

    .line 1396
    :cond_0
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mGprsTargSim:Z

    .line 1397
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1398
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1399
    .local v2, cmConn:Z
    if-eqz v1, :cond_1

    .line 1400
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 1403
    :cond_1
    if-eqz v2, :cond_5

    .line 1404
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mDataTimerHandler2:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4600(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d1

    const-wide/16 v10, 0x7530

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1406
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #calls: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->isWifiOnlyDevice()Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$100(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1408
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnIcon:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4400(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1409
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getInterMedateResource()I

    move-result v5

    .line 1410
    .local v5, resId:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 1411
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1412
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1414
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnTileView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$400(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 1418
    .end local v5           #resId:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSwitchingGifView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 1419
    .local v3, frameDrawable:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1420
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1422
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMIdBySlot(Landroid/content/Context;I)J

    move-result-wide v6

    .line 1423
    .local v6, simId:J
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1424
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "simid"

    invoke-virtual {v4, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1425
    const-string v8, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1426
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1427
    const-string v8, "QuickSettingsConnectionModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchDataDefaultSIM() sendBroadcast slotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", simId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    .end local v3           #frameDrawable:Landroid/graphics/drawable/AnimationDrawable;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #simId:J
    :goto_0
    return-void

    .line 1429
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gprs_connection_setting"

    add-int/lit8 v10, p1, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1430
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMIdBySlot(Landroid/content/Context;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1431
    .local v0, changeSimId:Ljava/lang/Long;
    iget-object v8, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "gprs_connection_sim_setting"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1432
    const-string v8, "QuickSettingsConnectionModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchDataDefaultSIM() just change Provider, slotId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", changeSimId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1335
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSIMEnableState(I)Z

    move-result v0

    .line 1336
    .local v0, sim1Enable:Z
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSIMEnableState(I)Z

    move-result v1

    .line 1338
    .local v1, sim2Enable:Z
    const-string v4, "QuickSettingsConnectionModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimConnStateTracker getActualState sim1Enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sim2Enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mHasSim:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getEnabledResource()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public getDisabledResource()I
    .locals 1

    .prologue
    .line 1573
    const v0, 0x7f02007b

    return v0
.end method

.method public getEnabledResource()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1577
    iget-object v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1578
    .local v0, simSlotId:I
    if-gez v0, :cond_0

    .line 1579
    const-string v2, "QuickSettingsConnectionModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimConnStateTracker getEnabledResource error, selected simSlotId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->IC_SIM_CONNECT_INDICATOR:[I

    iget v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getImageButtonView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4400(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1613
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterMedateResource()I
    .locals 1

    .prologue
    .line 1596
    const v0, 0x7f0200c5

    return v0
.end method

.method public getIsUserSwitching()Z
    .locals 1

    .prologue
    .line 1323
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    return v0
.end method

.method public getSwitchingGifView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1601
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnSwitchIngGifView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4700(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1602
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1604
    .local v0, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnSwitchIngGifView:Landroid/widget/ImageView;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4702(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1605
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4800(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnSwitchIngGifView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4700(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1606
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnSwitchIngGifView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4700(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1608
    .end local v0           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnSwitchIngGifView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4700(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v1

    return-object v1
.end method

.method public getTileView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnTileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$400(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isClickable()Z
    .locals 3

    .prologue
    .line 1327
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClickable(), Sim mobile mHasSim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mHasSim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAirlineMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsAirlineMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsMmsOngoing is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsMmsOngoing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsUserSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mHasSim:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isAllRadioOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsMmsOngoing:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/util/StateTracker;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1443
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isRadioOff(I)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSIMEnableState(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    .line 1446
    .local v3, sim1Enable:Z
    :goto_0
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isRadioOff(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getSIMEnableState(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    .line 1449
    .local v5, sim2Enable:Z
    :goto_1
    const/4 v2, 0x0

    .line 1450
    .local v2, sim1Conn:Z
    const/4 v4, 0x0

    .line 1451
    .local v4, sim2Conn:Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gprs_connection_setting"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 1452
    .local v6, slotId:I
    const-string v7, "QuickSettingsConnectionModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimConnStateTracker slotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    if-nez v6, :cond_5

    .line 1454
    const/4 v2, 0x1

    .line 1458
    :goto_2
    const-string v7, "QuickSettingsConnectionModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimConnStateTracker onActualStateChange sim1Enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sim2Enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    if-nez v3, :cond_0

    if-eqz v5, :cond_14

    .line 1461
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1462
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 1463
    .local v1, cmConn:Z
    if-eqz v0, :cond_1

    .line 1464
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 1466
    :cond_1
    if-gez v6, :cond_7

    .line 1467
    const-string v7, "QuickSettingsConnectionModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimConnStateTracker slotId <= 0, selected slotId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isRadioOff(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1469
    const-string v7, "QuickSettingsConnectionModel"

    const-string v8, "SimConnStateTracker Open Sim1 DataConn..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    .line 1537
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #cmConn:Z
    :cond_2
    :goto_3
    return-void

    .line 1443
    .end local v2           #sim1Conn:Z
    .end local v3           #sim1Enable:Z
    .end local v4           #sim2Conn:Z
    .end local v5           #sim2Enable:Z
    .end local v6           #slotId:I
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1446
    .restart local v3       #sim1Enable:Z
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1456
    .restart local v2       #sim1Conn:Z
    .restart local v4       #sim2Conn:Z
    .restart local v5       #sim2Enable:Z
    .restart local v6       #slotId:I
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 1471
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #cmConn:Z
    :cond_6
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isRadioOff(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1472
    const-string v7, "QuickSettingsConnectionModel"

    const-string v8, "SimConnStateTracker Open Sim2 DataConn..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->switchDataDefaultSIM(I)V

    goto :goto_3

    .line 1477
    :cond_7
    const-string v7, "QuickSettingsConnectionModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SimConnStateTracker onActualStateChange, cm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cmConn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sim1Enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sim2Enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sim1Conn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sim2Conn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", slotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    if-eqz v1, :cond_e

    .line 1480
    if-eqz v3, :cond_a

    if-eqz v5, :cond_a

    .line 1481
    if-eqz v2, :cond_9

    .line 1482
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    .line 1535
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #cmConn:Z
    :cond_8
    :goto_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    .line 1536
    invoke-direct {p0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mobileStateToFiveState()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/util/StateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1484
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #cmConn:Z
    :cond_9
    const/4 v7, 0x5

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1486
    :cond_a
    if-nez v3, :cond_c

    if-eqz v5, :cond_c

    .line 1487
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isSimInsertedWithUnAvaliable(I)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v2, :cond_b

    .line 1489
    const/16 v7, 0x9

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1491
    :cond_b
    const/4 v7, 0x7

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1493
    :cond_c
    if-eqz v3, :cond_8

    if-nez v5, :cond_8

    .line 1494
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isSimInsertedWithUnAvaliable(I)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v4, :cond_d

    .line 1496
    const/16 v7, 0xb

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1498
    :cond_d
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1502
    :cond_e
    if-eqz v3, :cond_10

    if-eqz v5, :cond_10

    .line 1503
    if-eqz v2, :cond_f

    .line 1504
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1506
    :cond_f
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1508
    :cond_10
    if-nez v3, :cond_12

    if-eqz v5, :cond_12

    .line 1509
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isSimInsertedWithUnAvaliable(I)Z

    move-result v7

    if-eqz v7, :cond_11

    if-eqz v2, :cond_11

    .line 1511
    const/16 v7, 0x9

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1513
    :cond_11
    const/4 v7, 0x6

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1515
    :cond_12
    if-eqz v3, :cond_8

    if-nez v5, :cond_8

    .line 1516
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isSimInsertedWithUnAvaliable(I)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v4, :cond_13

    .line 1518
    const/16 v7, 0xb

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1520
    :cond_13
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto :goto_4

    .line 1525
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #cmConn:Z
    :cond_14
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isSimInsertedWithUnAvaliable(I)Z

    move-result v7

    if-eqz v7, :cond_15

    if-eqz v2, :cond_15

    .line 1527
    const/16 v7, 0xa

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto/16 :goto_4

    .line 1528
    :cond_15
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isSimInsertedWithUnAvaliable(I)Z

    move-result v7

    if-eqz v7, :cond_16

    if-eqz v4, :cond_16

    .line 1530
    const/16 v7, 0xc

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto/16 :goto_4

    .line 1532
    :cond_16
    const/16 v7, 0x8

    iput v7, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    goto/16 :goto_4
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1295
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v2}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/util/StateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->setIsUserSwitching(Z)V

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnTileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$400(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4400(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #calls: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->stopFrameAnim()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$4500(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)V

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mSimConnStateTracker:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;
    invoke-static {v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$300(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->this$0:Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;

    #getter for: Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;->access$000(Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/util/StateTracker;->setImageViewResources(Landroid/content/Context;)V

    .line 1301
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 1569
    const-string v0, "QuickSettingsConnectionModel"

    const-string v1, "SimConnStateTracker requestStateChange do nothing."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return-void
.end method

.method public setAirlineMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1309
    const-string v0, "QuickSettingsConnectionModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim Connect setAirlineMode called, enabled is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsAirlineMode:Z

    .line 1312
    return-void
.end method

.method public setHasSim(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1304
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mHasSim:Z

    .line 1305
    return-void
.end method

.method public setIsMmsOngoing(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1315
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mIsMmsOngoing:Z

    .line 1316
    return-void
.end method

.method public setIsUserSwitching(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1319
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/util/StateTracker;->mIsUserSwitching:Z

    .line 1320
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1438
    iget v0, p0, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->mCurrentState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/toolbar/QuickSettingsConnectionModel$SimConnStateTracker;->enterNextState(I)V

    .line 1439
    return-void
.end method
