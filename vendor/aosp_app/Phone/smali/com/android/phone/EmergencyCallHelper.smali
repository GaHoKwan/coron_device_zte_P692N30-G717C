.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# static fields
.field private static final DBG:Z = true

.field private static final DISCONNECT:I = 0x3

.field static final DUALSIM_OFF:I = 0x0

.field static final DUALSIM_ON:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final DUAL_SIMS_MODE_ON:I = 0x0

.field public static final MAX_NUM_RETRIES:I = 0x6

.field private static final PHONE_STATE_CHANGED:I = 0x5

.field private static final RETRY_TIMEOUT:I = 0x4

.field private static final SEND_ECC_CALL:I = 0x6

.field private static final SERVICE_STATE_CHANGED:I = 0x2

.field private static final SERVICE_STATE_CHANGED2:I = 0x66

.field private static final SERVICE_STATE_CHANGED3:I = 0xca

.field private static final SERVICE_STATE_CHANGED4:I = 0x12e

.field private static final SERVICE_STATE_CHANGED_GEMINI:[I = null

.field static final SIM1_ONLY:I = 0x1

.field static final SIM2_ONLY:I = 0x2

.field private static final START_SEQUENCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmergencyCallHelper"

.field public static final TIME_BETWEEN_RETRIES:J = 0x3a98L

.field public static final WAKE_LOCK_TIMEOUT:J = 0x493e0L


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceAvailabeSlot:I

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 660
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    .line 671
    const/4 v0, 0x1

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotCount()I

    move-result v1

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/phone/EmergencyCallHelper;->DUAL_SIMS_MODE_ON:I

    return-void

    .line 660
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 1
    .parameter "callController"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    .line 100
    const-string v0, "EmergencyCallHelper constructor..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 102
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 103
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 104
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    return-void
.end method

.method private cancelRetryTimer()V
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 595
    const-string v1, "cleanup()..."

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 600
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v1, p0, v2}, Lcom/mediatek/phone/gemini/GeminiRegister;->unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 601
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, callManager:Ljava/lang/Object;
    invoke-static {v0, p0}, Lcom/mediatek/phone/gemini/GeminiRegister;->unregisterForDisconnect(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 603
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 606
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const-string v1, "- releasing wake lock"

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 617
    return-void
.end method

.method private getBestSlotForDualSimMode(I)I
    .locals 9
    .parameter "mode"

    .prologue
    .line 761
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getDefaultSlot()I

    move-result v1

    .line 762
    .local v1, bestSlot:I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v3

    .line 763
    .local v3, geminiSlots:[I
    move-object v0, v3

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget v4, v0, v5

    .line 764
    .local v4, gs:I
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    and-int v2, p1, v7

    .line 765
    .local v2, dualSim:I
    if-lez v2, :cond_1

    .line 766
    move v1, v4

    .line 770
    .end local v2           #dualSim:I
    .end local v4           #gs:I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBestSlotForDualSimMode, mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bestSlot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 771
    return v1

    .line 763
    .restart local v2       #dualSim:I
    .restart local v4       #gs:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private getProperDualSimMode(I)I
    .locals 11
    .parameter "originMode"

    .prologue
    .line 729
    const/4 v8, 0x0

    .line 730
    .local v8, mode:I
    iget-object v9, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 731
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 732
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProperDualSimMode, No sim inserted, return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/EmergencyCallHelper;->DUAL_SIMS_MODE_ON:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 733
    sget v9, Lcom/android/phone/EmergencyCallHelper;->DUAL_SIMS_MODE_ON:I

    .line 756
    :goto_0
    return v9

    .line 735
    :cond_1
    if-eqz v7, :cond_4

    .line 736
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 737
    .local v1, geminiSlots:[I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 738
    .local v5, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object v0, v1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v6, :cond_2

    aget v2, v0, v4

    .line 739
    .local v2, gs:I
    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v9, v2, :cond_3

    .line 740
    const/4 v9, 0x1

    shl-int/2addr v9, v2

    or-int/2addr v8, v9

    .line 741
    goto :goto_1

    .line 738
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 747
    .end local v0           #arr$:[I
    .end local v1           #geminiSlots:[I
    .end local v2           #gs:I
    .end local v4           #i$:I
    .end local v5           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v6           #len$:I
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getProperDualSimMode, mode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 752
    and-int v9, v8, p1

    if-eqz v9, :cond_5

    .line 753
    move v8, p1

    :cond_5
    move v9, v8

    .line 756
    goto :goto_0
.end method

.method private getProperDualSimMode(II)I
    .locals 6
    .parameter "slot"
    .parameter "dualSimMode"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, mode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperDualSimMode slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v0

    .line 906
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 907
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperDualSimMode (no sim) return mode  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 908
    add-int/lit8 v2, p1, 0x1

    .line 932
    :goto_0
    return v2

    .line 913
    :cond_1
    if-nez p2, :cond_3

    .line 915
    add-int/lit8 v1, p1, 0x1

    .line 931
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperDualSimMode return mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    move v2, v1

    .line 932
    goto :goto_0

    .line 916
    :cond_3
    if-ne p2, v4, :cond_5

    .line 917
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v4, :cond_4

    .line 918
    const/4 v1, 0x1

    goto :goto_1

    .line 919
    :cond_4
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v5, :cond_2

    .line 920
    const/4 v1, 0x3

    goto :goto_1

    .line 922
    :cond_5
    if-ne p2, v5, :cond_7

    .line 923
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v4, :cond_6

    .line 924
    const/4 v1, 0x3

    goto :goto_1

    .line 925
    :cond_6
    add-int/lit8 v2, p1, 0x1

    if-ne v2, v5, :cond_2

    .line 926
    const/4 v1, 0x2

    goto :goto_1

    .line 928
    :cond_7
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 929
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private getSysDualSimMode()I
    .locals 4

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, dualSimMode:I
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 718
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private hangupAllCallsWhenEcc()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 851
    const-string v11, "hangupAllCallsWhenEcc()..."

    invoke-direct {p0, v11}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 852
    iget-object v11, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    .line 853
    .local v8, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v8, v11, :cond_5

    .line 854
    iget-object v11, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 855
    .local v7, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 856
    .local v5, connection:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, activeCallAddress:Ljava/lang/String;
    :goto_0
    iget-object v11, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 859
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 860
    .local v3, bgconnection:Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, bgCallAddress:Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 867
    .local v9, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isEccCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 877
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getCallManager()Ljava/lang/Object;

    move-result-object v4

    .line 878
    .local v4, callManager:Ljava/lang/Object;
    const/4 v10, 0x5

    invoke-static {v4, p0, v10}, Lcom/mediatek/phone/gemini/GeminiRegister;->registerForDisconnect(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 880
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hangupAllEx()Z

    .line 881
    const-string v10, "Waiting for disconnect exist calls."

    invoke-direct {p0, v10}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    const/4 v10, 0x1

    .line 888
    .end local v0           #activeCallAddress:Ljava/lang/String;
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #bgCallAddress:Ljava/lang/String;
    .end local v3           #bgconnection:Lcom/android/internal/telephony/Connection;
    .end local v4           #callManager:Ljava/lang/Object;
    .end local v5           #connection:Lcom/android/internal/telephony/Connection;
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #ringingCall:Lcom/android/internal/telephony/Call;
    :goto_2
    return v10

    .restart local v5       #connection:Lcom/android/internal/telephony/Connection;
    .restart local v7       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v10

    .line 856
    goto :goto_0

    .restart local v0       #activeCallAddress:Ljava/lang/String;
    .restart local v1       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #bgconnection:Lcom/android/internal/telephony/Connection;
    :cond_4
    move-object v2, v10

    .line 860
    goto :goto_1

    .line 883
    .restart local v2       #bgCallAddress:Ljava/lang/String;
    .restart local v4       #callManager:Ljava/lang/Object;
    .restart local v9       #ringingCall:Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v6

    .line 884
    .local v6, e:Lcom/android/internal/telephony/CallStateException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "catch exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 888
    .end local v0           #activeCallAddress:Ljava/lang/String;
    .end local v1           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #bgCallAddress:Ljava/lang/String;
    .end local v3           #bgconnection:Lcom/android/internal/telephony/Connection;
    .end local v4           #callManager:Ljava/lang/Object;
    .end local v5           #connection:Lcom/android/internal/telephony/Connection;
    .end local v6           #e:Lcom/android/internal/telephony/CallStateException;
    .end local v7           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v9           #ringingCall:Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private isSlotPowerOff(I)Z
    .locals 10
    .parameter "slotId"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 780
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 781
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 782
    .local v1, gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 783
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 793
    .end local v1           #gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    :goto_0
    return v6

    .restart local v1       #gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_1
    move v6, v7

    .line 783
    goto :goto_0

    .line 785
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 786
    .local v2, geminiSlots:[I
    move-object v0, v2

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 787
    .local v3, gs:I
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eq v8, v9, :cond_3

    move v6, v7

    .line 788
    goto :goto_0

    .line 786
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 793
    .end local v0           #arr$:[I
    .end local v1           #gPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v2           #geminiSlots:[I
    .end local v3           #gs:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4
    iget-object v8, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eq v8, v9, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method private isValidSlot(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    const/4 v0, 0x1

    .line 985
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 797
    const-string v0, "EmergencyCallHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void
.end method

.method private needSetDualSimMode(I)Z
    .locals 12
    .parameter "lastMode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 676
    iget-object v11, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v11}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 677
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 678
    :cond_0
    const/4 v4, 0x0

    .line 679
    .local v4, hasSimInserted:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 680
    .local v2, geminiSlots:[I
    move-object v0, v2

    .local v0, arr$:[I
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget v3, v0, v5

    .line 681
    .local v3, gs:I
    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v11, v3}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    move v4, v10

    .line 680
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v4, v9

    .line 681
    goto :goto_1

    .line 683
    .end local v3           #gs:I
    :cond_3
    if-nez v4, :cond_4

    .line 685
    const-string v10, "needSetDualSimMode, false, no sim inserted"

    invoke-direct {p0, v10}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 699
    .end local v0           #arr$:[I
    .end local v2           #geminiSlots:[I
    .end local v4           #hasSimInserted:Z
    .end local v5           #i$:I
    .end local v7           #len$:I
    :goto_2
    return v9

    .line 690
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 691
    .local v6, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v11, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    shl-int v11, v10, v11

    and-int v1, p1, v11

    .line 692
    .local v1, dualSim:I
    if-lez v1, :cond_5

    .line 694
    const-string v10, "needSetDualSimMode, false, follow settings mode"

    invoke-direct {p0, v10}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 698
    .end local v1           #dualSim:I
    .end local v6           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    const-string v9, "needSetDualSimMode, true"

    invoke-direct {p0, v9}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    move v9, v10

    .line 699
    goto :goto_2
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 326
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 327
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 328
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: connection \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 331
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_0

    .line 334
    const-string v2, "- onDisconnect: OUT_OF_SERVICE, need to retry..."

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 351
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string v2, "==> Disconnect event; clean up..."

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_0
.end method

.method private onRetryTimeout(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 357
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 358
    .local v0, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 359
    .local v1, slot:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->isSlotPowerOff(I)Z

    move-result v2

    .line 360
    .local v2, slotPowerOff:Z
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRetryTimeout():  phone state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service state(PowerOff)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumRetriesSoFar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 375
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_0

    .line 376
    const-string v3, "- onRetryTimeout: Call is active!  Cleaning up..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 408
    :goto_0
    return-void

    .line 381
    :cond_0
    if-nez v2, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v3, p0, v4}, Lcom/mediatek/phone/gemini/GeminiRegister;->unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 389
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v3}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 391
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    .line 407
    :goto_1
    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->displayCallScreen(Z)V

    goto :goto_0

    .line 396
    :cond_1
    const-string v3, "- Trying (again) to turn on the radio..."

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 402
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 238
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 239
    .local v3, state:Landroid/telephony/ServiceState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged()...  new state = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 258
    iget v4, p1, Landroid/os/Message;->what:I

    sget-object v6, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v4, v6}, Lcom/mediatek/phone/gemini/GeminiRegister;->getSlotIdByRegisterEvent(I[I)I

    move-result v0

    .line 259
    .local v0, iSlotId:I
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    move v1, v5

    .line 261
    .local v1, okToCall:Z
    :goto_0
    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    if-eq v4, v7, :cond_0

    .line 262
    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    if-eq v4, v0, :cond_0

    .line 263
    const/4 v1, 0x0

    .line 267
    :cond_0
    if-eqz v1, :cond_5

    .line 269
    const-string v4, "onServiceStateChanged: ok to call!"

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v6, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v4, p0, v6}, Lcom/mediatek/phone/gemini/GeminiRegister;->unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 275
    iget v4, p1, Landroid/os/Message;->what:I

    sget-object v6, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v4, v6}, Lcom/mediatek/phone/gemini/GeminiRegister;->getSlotIdByRegisterEvent(I[I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/EmergencyCallHelper;->mServiceAvailabeSlot:I

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged slotId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/phone/EmergencyCallHelper;->mServiceAvailabeSlot:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->hangupAllCallsWhenEcc()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    :goto_1
    return-void

    .line 259
    .end local v1           #okToCall:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 286
    .restart local v1       #okToCall:Z
    :cond_2
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 290
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 294
    iget v4, p1, Landroid/os/Message;->what:I

    sget-object v6, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v4, v6}, Lcom/mediatek/phone/gemini/GeminiRegister;->getSlotIdByRegisterEvent(I[I)I

    move-result v2

    .line 295
    .local v2, slotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged slotId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 296
    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    if-ne v4, v2, :cond_4

    .line 297
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    .line 300
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneGlobals;->displayCallScreen(Z)V

    goto :goto_1

    .line 302
    :cond_4
    const-string v4, "onServiceStateChange: the waiting radio isn\'t ready for ecc"

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 314
    .end local v2           #slotId:I
    :cond_5
    const-string v4, "onServiceStateChanged: not ready to call yet, keep waiting..."

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private placeEmergencyCall(I)V
    .locals 10
    .parameter "simId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 484
    const-string v0, "placeEmergencyCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Ljava/lang/Object;

    move-result-object v7

    .line 494
    .local v7, callManager:Ljava/lang/Object;
    const/4 v0, 0x3

    invoke-static {v7, p0, v0}, Lcom/mediatek/phone/gemini/GeminiRegister;->registerForDisconnect(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- placing call to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    move-object v5, v3

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCallGemini(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;I)I

    move-result v8

    .line 506
    .local v8, callStatus:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- PhoneUtils.placeCallGemini() returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 520
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 529
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v9, 0x0

    .line 534
    .local v9, success:Z
    :goto_1
    if-eqz v9, :cond_1

    .line 535
    const-string v0, "==> Success from PhoneUtils.placeCall()!"

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 548
    :goto_2
    return-void

    .line 508
    .end local v8           #callStatus:I
    .end local v9           #success:Z
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v8

    .line 514
    .restart local v8       #callStatus:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- PhoneUtils.placeCall() returned status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :pswitch_0
    const/4 v9, 0x1

    .line 523
    .restart local v9       #success:Z
    goto :goto_1

    .line 543
    :cond_1
    const-string v0, "==> Failure."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_2

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private powerOnRadio()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 420
    const-string v5, "- powerOnRadio()..."

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 424
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v6, Lcom/android/phone/EmergencyCallHelper;->SERVICE_STATE_CHANGED_GEMINI:[I

    invoke-static {v5, p0, v6}, Lcom/mediatek/phone/gemini/GeminiRegister;->registerForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V

    .line 428
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->getSysDualSimMode()I

    move-result v1

    .line 429
    .local v1, dualSimMode:I
    const/4 v0, 0x0

    .line 431
    .local v0, bOffAirplaneMode:Z
    const-string v5, "EmergencyCallHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualSimMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_1

    .line 433
    const-string v5, "==> Turning off airplane mode..."

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 436
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 442
    const/4 v0, 0x1

    .line 452
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 454
    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    invoke-direct {p0, v5, v1}, Lcom/android/phone/EmergencyCallHelper;->getProperDualSimMode(II)I

    move-result v4

    .line 455
    .local v4, newmode:I
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "mode"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "power on radio for mSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  with dualsimMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 474
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #newmode:I
    :goto_1
    return-void

    .line 443
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-nez v5, :cond_0

    .line 448
    const-string v5, "==> (Apparently) not in airplane mode; manually powering radio on..."

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 449
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 462
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->getProperDualSimMode(I)I

    move-result v2

    .line 463
    .local v2, expMode:I
    if-eqz v0, :cond_3

    if-eqz v0, :cond_4

    if-eq v2, v1, :cond_4

    .line 464
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send broadcast to turn on radio with mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "mode"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 471
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    const-string v5, "do nothing."

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private scheduleRetryOrBailOut()V
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleRetryOrBailOut()...  mNumRetriesSoFar is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 560
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 561
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 565
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    const-string v0, "- Scheduling another retry..."

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 569
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    goto :goto_0
.end method

.method private startRetryTimer()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3a98

    const/4 v5, 0x4

    .line 620
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->getSysDualSimMode()I

    move-result v0

    .line 630
    .local v0, dualSimMode:I
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->getBestSlotForDualSimMode(I)I

    move-result v2

    .line 632
    .local v2, slot:I
    iget v3, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 633
    iget v2, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    .line 636
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 637
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    .end local v0           #dualSimMode:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #slot:I
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSequenceInternal(): msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 183
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startSequenceInternal: Got mNumber: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 195
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 199
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 200
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 204
    const-string v1, "- startSequenceInternal: acquiring wake lock"

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 213
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 221
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 225
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v2, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallUiState;->setProgressIndication(Lcom/android/phone/InCallUiState$ProgressIndicationType;)V

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->handleMessageMTK(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 115
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 132
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 123
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 126
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 129
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x66 -> :sswitch_1
        0xca -> :sswitch_1
        0x12e -> :sswitch_1
    .end sparse-switch
.end method

.method public handleMessageMTK(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    .line 802
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 839
    const-string v4, "EmergencyCallHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage not from MTK :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v2, 0x0

    .line 843
    .local v2, messageFound:Z
    :goto_0
    return v2

    .line 808
    .end local v2           #messageFound:Z
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 809
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: PHONE_STATE_CHANGED with state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 810
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 813
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getCallManager()Ljava/lang/Object;

    move-result-object v0

    .line 814
    .local v0, callManager:Ljava/lang/Object;
    invoke-static {v0, p0}, Lcom/mediatek/phone/gemini/GeminiRegister;->unregisterForDisconnect(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 820
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 821
    .local v1, message:Landroid/os/Message;
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 825
    .end local v0           #callManager:Ljava/lang/Object;
    .end local v1           #message:Landroid/os/Message;
    :goto_1
    const/4 v2, 0x1

    .line 826
    .restart local v2       #messageFound:Z
    goto :goto_0

    .line 823
    .end local v2           #messageFound:Z
    :cond_0
    const-string v4, "handleMessage: PHONE_STATE_CHANGED continue waiting..."

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 829
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    :pswitch_1
    const-string v4, "send the ecc call!"

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 831
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v4}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 832
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 833
    iget v4, p0, Lcom/android/phone/EmergencyCallHelper;->mServiceAvailabeSlot:I

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall(I)V

    .line 834
    const/4 v2, 0x1

    .line 835
    .restart local v2       #messageFound:Z
    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startEmergencyCallExt(Ljava/lang/String;I)V
    .locals 7
    .parameter "number"
    .parameter "slot"

    .prologue
    const/4 v4, 0x1

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startEmergencyCallExt: number == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  slot == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 938
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    .line 940
    if-gez p2, :cond_1

    .line 941
    const-string v4, "startEmergencyCallExt: slot error!"

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 948
    invoke-direct {p0, p2}, Lcom/android/phone/EmergencyCallHelper;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 949
    iput p2, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    .line 950
    const/4 v2, 0x1

    .line 951
    .local v2, isRadioOn:Z
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v5, v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v5, :cond_2

    .line 952
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 953
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget v5, p0, Lcom/android/phone/EmergencyCallHelper;->mSlot:I

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v2

    .line 955
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startEmergencyCallExt (dualsim) isRadioOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 964
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_1
    if-eqz v2, :cond_4

    .line 966
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v1, eccIntent:Landroid/content/Intent;
    const-string v4, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v4, v1}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 970
    const-string v4, "startEmergencyCallExt: post this request to CallController."

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 958
    .end local v1           #eccIntent:Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    move v2, v4

    .line 960
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startEmergencyCallExt (single sim) isRadioOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 958
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 972
    :cond_4
    const-string v5, "startEmergencyCallExt: place call after turn on radio."

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 974
    .local v3, msg:Landroid/os/Message;
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEmergencyCallFromAirplaneModeSequence(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->log(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    return-void
.end method
