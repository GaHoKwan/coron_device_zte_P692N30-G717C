.class public Lcom/android/systemui/statusbar/util/SIMHelper;
.super Ljava/lang/Object;
.source "SIMHelper.java"


# static fields
.field private static final MOBILE_ICON_COUNT:I = 0x4

.field private static final SIM_STATUS_COUNT:I = 0x9

.field public static final TAG:Ljava/lang/String; = "SIMHelper"

.field private static mGeminiSimNum:I

.field private static mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private static mTMEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private static sBaseband:Ljava/lang/String;

.field private static sITelephony:Lcom/android/internal/telephony/ITelephony;

.field private static sIsOptr:Ljava/lang/String;

.field private static sMobileIconResIds:[I

.field private static sSimInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static sSimStatusViews:[I

.field private static simInserted:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sIsOptr:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sBaseband:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mTMEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 48
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mGeminiSimNum:I

    .line 330
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 331
    const-string v0, "telephony.registry2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static checkSimCardDataConn()Z
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorState()I

    move-result v0

    .line 241
    .local v0, simState:I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 245
    :cond_0
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkSimCardDataConnBySlotId(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 213
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 216
    :cond_1
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v1

    .line 217
    .local v1, simState:I
    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 221
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getDataConnectionIconIdBySlotId(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v1, -0x1

    .line 197
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 198
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    if-nez v2, :cond_2

    .line 202
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->initMobileIcons()V

    .line 204
    :cond_2
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-eq v2, v1, :cond_0

    .line 207
    sget-object v1, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v1, v1, v2

    goto :goto_0
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1
    .parameter "context"

    .prologue
    .line 320
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mTMEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mTMEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 323
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->mTMEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method public static getDefaultSIM(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "businessType"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 327
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method public static getSIMColorIdBySlot(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 176
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, -0x1

    .line 179
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto :goto_0
.end method

.method public static getSIMIdBySlot(Landroid/content/Context;I)J
    .locals 3
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 167
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 168
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    .line 169
    const-wide/16 v1, 0x0

    .line 171
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_0
.end method

.method public static getSIMInfo(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 84
    sget-object v2, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    .line 87
    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 88
    .local v1, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 92
    .end local v1           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .parameter "context"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 118
    :goto_0
    return-object v1

    .line 106
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    .line 109
    :cond_2
    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    if-nez v3, :cond_3

    move-object v1, v2

    .line 110
    goto :goto_0

    .line 113
    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 114
    .local v1, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, p1, :cond_4

    goto :goto_0

    .end local v1           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_5
    move-object v1, v2

    .line 118
    goto :goto_0
.end method

.method public static getSIMInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 73
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    return-object v0
.end method

.method public static getSIMStateIcon(I)I
    .locals 2
    .parameter "simStatus"

    .prologue
    const/4 v0, -0x1

    .line 187
    if-le p0, v0, :cond_0

    const/16 v1, 0x9

    if-lt p0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    if-nez v0, :cond_2

    .line 191
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->initStatusIcons()V

    .line 193
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getSIMStateIcon(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 1
    .parameter "simInfo"

    .prologue
    .line 183
    iget v0, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMStateIcon(I)I

    move-result v0

    return v0
.end method

.method public static getSimIndicatorState()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 266
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 267
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 277
    :cond_0
    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 276
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getSimIndicatorStateGemini(I)I
    .locals 7
    .parameter "simId"

    .prologue
    const/4 v3, -0x1

    .line 283
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 284
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 285
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I

    move-result v1

    .line 286
    .local v1, mState:I
    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    const/4 v4, 0x2

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 289
    const-string v4, "SIMHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimIndicatorStateGemini called, fallback to normal and simId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    const/4 v1, 0x5

    .line 301
    .end local v1           #mState:I
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    move v1, v3

    .line 295
    goto :goto_0

    .line 297
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v3

    .line 299
    goto :goto_0

    .line 300
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v3

    .line 301
    goto :goto_0
.end method

.method private static getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    new-instance v1, Lcom/android/systemui/statusbar/util/SIMHelper$1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/util/SIMHelper$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    return-object v0
.end method

.method public static initMobileIcons()V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    .line 159
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    const/4 v1, 0x0

    const v2, 0x7f02007c

    aput v2, v0, v1

    .line 160
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    const/4 v1, 0x1

    const v2, 0x7f020081

    aput v2, v0, v1

    .line 161
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    const/4 v1, 0x2

    const v2, 0x7f02007f

    aput v2, v0, v1

    .line 162
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sMobileIconResIds:[I

    const/4 v1, 0x3

    const v2, 0x7f020082

    aput v2, v0, v1

    .line 164
    :cond_0
    return-void
.end method

.method public static initStatusIcons()V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    if-nez v0, :cond_0

    .line 145
    const/16 v0, 0x9

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    .line 146
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/4 v1, 0x1

    const v2, 0x202011d

    aput v2, v0, v1

    .line 147
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/4 v1, 0x2

    const v2, 0x202010a

    aput v2, v0, v1

    .line 148
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/4 v1, 0x3

    const v2, 0x2020103

    aput v2, v0, v1

    .line 149
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/4 v1, 0x4

    const v2, 0x2020124

    aput v2, v0, v1

    .line 150
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/4 v1, 0x6

    const v2, 0x2020122

    aput v2, v0, v1

    .line 151
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/4 v1, 0x7

    const v2, 0x20200fa

    aput v2, v0, v1

    .line 152
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimStatusViews:[I

    const/16 v1, 0x8

    const v2, 0x2020123

    aput v2, v0, v1

    .line 154
    :cond_0
    return-void
.end method

.method public static is3GSupported()Z
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sBaseband:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    const-string v0, "gsm.baseband.capability"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sBaseband:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sBaseband:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sBaseband:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sBaseband:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInternationalRoamingStatus(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, isRoaming:Z
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 408
    .local v2, simInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 409
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 422
    :cond_0
    :goto_0
    const-string v3, "SIMHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInternationalRoamingStatus called, isRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v0

    .line 411
    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 413
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 415
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v3, :cond_2

    .line 416
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0

    .line 418
    :cond_2
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, v6, :cond_0

    .line 419
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getDefault(Landroid/content/Context;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isMediatekSmartBookSupport()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public static isSimInserted(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v0, 0x0

    .line 367
    sget-object v1, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    if-nez v1, :cond_0

    .line 368
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->updateSimInsertedStatus()V

    .line 370
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    if-eqz v1, :cond_2

    .line 371
    if-ltz p0, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt p0, v1, :cond_1

    .line 372
    const-string v0, "SIMHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), SimInserted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    aget-boolean v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    aget-boolean v0, v0, p0

    .line 380
    :goto_0
    return v0

    .line 375
    :cond_1
    const-string v1, "SIMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInserted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), indexOutOfBound, arraysize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :cond_2
    const-string v1, "SIMHelper"

    const-string v2, "isSimInserted, simInserted is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSmartBookPluggedIn(Landroid/content/Context;)Z
    .locals 2
    .parameter "mContext"

    .prologue
    .line 358
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->isMediatekSmartBookSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 360
    .local v0, mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v1

    .line 362
    .end local v0           #mDisplayManager:Landroid/hardware/display/DisplayManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTelephonyDataConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 229
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 230
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 231
    const-string v1, "SIMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTelephonyDataConnected called, the data state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTelephonyDataConnectedBySimId(I)Z
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 307
    const/4 v2, 0x2

    :try_start_0
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 308
    const-string v2, "SIMHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTelephonyDataConnectedBySimId called, data is connected and simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    .line 311
    :cond_0
    const-string v2, "SIMHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTelephonyDataConnectedBySimId called, data is not connected and simId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 5
    .parameter "listener"
    .parameter "events"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 335
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 337
    .local v0, notifyNow:Ljava/lang/Boolean;
    if-nez p2, :cond_2

    .line 338
    sget-object v1, Lcom/android/systemui/statusbar/util/SIMHelper;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const-string v2, "SystemUI SIMHelper"

    invoke-virtual {p0}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 351
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-void

    .line 335
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 339
    .restart local v0       #notifyNow:Ljava/lang/Boolean;
    :cond_2
    if-ne v2, p2, :cond_3

    .line 340
    sget-object v1, Lcom/android/systemui/statusbar/util/SIMHelper;->mRegistry2:Lcom/android/internal/telephony/ITelephonyRegistry;

    const-string v2, "SystemUI SIMHelper"

    invoke-virtual {p0}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    goto :goto_1

    .line 346
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 341
    .restart local v0       #notifyNow:Ljava/lang/Boolean;
    :cond_3
    const/4 v1, 0x2

    if-ne v1, p2, :cond_4

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v1, v3, :cond_4

    .line 342
    const-string v1, "telephony.registry3"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    const-string v2, "SystemUI SIMHelper"

    invoke-virtual {p0}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    goto :goto_1

    .line 348
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 343
    .restart local v0       #notifyNow:Ljava/lang/Boolean;
    :cond_4
    if-ne v3, p2, :cond_0

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 344
    const-string v1, "telephony.registry4"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    const-string v2, "SystemUI SIMHelper"

    invoke-virtual {p0}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1
.end method

.method public static setDefaultSIM(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .parameter "context"
    .parameter "businessType"
    .parameter "simId"

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 67
    return-void
.end method

.method public static updateSIMInfos(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 140
    invoke-static {p0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/util/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 141
    return-void
.end method

.method public static updateSimInsertedStatus()V
    .locals 6

    .prologue
    .line 386
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 387
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    .line 389
    :try_start_0
    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    if-nez v3, :cond_0

    .line 390
    sget v3, Lcom/android/systemui/statusbar/util/SIMHelper;->mGeminiSimNum:I

    new-array v3, v3, [Z

    sput-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    .line 392
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v3, Lcom/android/systemui/statusbar/util/SIMHelper;->mGeminiSimNum:I

    if-ge v1, v3, :cond_1

    .line 393
    sget-object v3, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v4

    aput-boolean v4, v3, v1

    .line 394
    const-string v3, "SIMHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimInsertedStatus, simInserted("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/util/SIMHelper;->simInserted:[Z

    aget-boolean v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    .line 400
    :cond_2
    const-string v3, "SIMHelper"

    const-string v4, "updateSimInsertedStatus, phone is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
