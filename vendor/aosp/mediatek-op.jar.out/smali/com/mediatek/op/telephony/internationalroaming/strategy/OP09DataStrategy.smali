.class public Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;
.super Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;
.source "OP09DataStrategy.java"


# static fields
.field private static final CT_MCC:Ljava/lang/String; = "460"

.field private static final CT_NET:Ljava/lang/String; = "ctnet"

.field private static final CT_NW_03:Ljava/lang/String; = "46003"

.field private static final CT_NW_12:Ljava/lang/String; = "46012"

.field private static final CT_NW_13:Ljava/lang/String; = "46013"

.field private static final CT_WAP:Ljava/lang/String; = "ctwap"

.field private static final CT_WAP_PORT:Ljava/lang/String; = "80"

.field private static final CT_WAP_PROXY:Ljava/lang/String; = "10.0.0.200"

.field private static final MACAO_MCC_MNC:Ljava/lang/String; = "45502"

.field private static final PREFERAPN_NO_UPDATE_URI_SIM1:Landroid/net/Uri; = null

.field private static final PREFERAPN_NO_UPDATE_URI_SIM2:Landroid/net/Uri; = null

.field private static final SELECTION_QUERY_CT_MAINLAND_APN:Ljava/lang/String; = "apn = \'ctwap\' and mcc = \'460\' and type like \'%default%\' and proxy = \'10.0.0.200\' and sourcetype <> 1"

.field private static final SELECTION_QUERY_CT_MAINLAND_MACAO_APN:Ljava/lang/String; = "apn = \'ctwap\' and (mcc = \'460\' or mcc = \'455\') and type like \'%default%\' and sourcetype <> 1"

.field private static final SELECTION_QUERY_VODAFONE_APN:Ljava/lang/String; = "apn = \'ctnet\' and mcc = \'204\' and type = \'default\'"

.field private static final TAG:Ljava/lang/String; = "[OP09DataStrategy]"

.field private static final VODAFONE:Ljava/lang/String; = "20404"

.field private static final VODAFONE_MCC:Ljava/lang/String; = "204"

.field private static final VODAFONE_MNC:Ljava/lang/String; = "04"


# instance fields
.field private mTelephonyProviderExt:Lcom/mediatek/common/telephony/ITelephonyProviderExt;

.field private mWapApnProxyExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "content://telephony/carriers_sim1/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->PREFERAPN_NO_UPDATE_URI_SIM1:Landroid/net/Uri;

    .line 92
    const-string v0, "content://telephony/carriers_sim2/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->PREFERAPN_NO_UPDATE_URI_SIM2:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "controller"
    .parameter "context"
    .parameter "dualModePhone"
    .parameter "gsmPhone"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;-><init>(Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 102
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    iput-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mTelephonyProviderExt:Lcom/mediatek/common/telephony/ITelephonyProviderExt;

    .line 104
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->wapApnProxyExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    .line 105
    return-void
.end method

.method private disableDataForRoaming(I)V
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v6, 0x0

    .line 384
    const-string v4, "Disable data when first roaming"

    invoke-virtual {p0, v4}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 385
    iget-object v4, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 387
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 389
    if-ltz p1, :cond_1

    const/4 v4, 0x1

    if-gt p1, v4, :cond_1

    .line 391
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/provider/Telephony$SIMInfo;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v2

    .line 399
    .local v2, simId:J
    iget-object v4, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2, v3}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 401
    .end local v2           #simId:J
    :cond_1
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDefaultDataSlotId()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-boolean v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mIsICardImsiReady:Z

    if-nez v2, :cond_0

    .line 277
    const-string v2, "Imsi is not ready"

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 278
    const/4 v1, -0x1

    .line 292
    :goto_0
    return v1

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 283
    .local v0, retVal:Z
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataSlotId, MOBILE_DATA, returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 285
    const/4 v1, -0x1

    .line 286
    .local v1, slotId:I
    if-eqz v0, :cond_1

    .line 287
    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_setting"

    const/4 v4, -0x4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 291
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data defuault slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 281
    .end local v0           #retVal:Z
    .end local v1           #slotId:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getPlmnFromImsiIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "plmn"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Telephony properties are not ready yet, phoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mDualModePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mDualModePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 301
    iget-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mDualPhoneCdmaImsi:Ljava/lang/String;

    .line 308
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plmnNumeric:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 309
    return-object p1

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mDualModePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 303
    iget-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mDualPhoneGsmImsi:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_3
    iget-object p1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mOpNumeric:Ljava/lang/String;

    goto :goto_0
.end method

.method private insertIrGsmApn(Landroid/net/Uri;)J
    .locals 13
    .parameter "geminiUri"

    .prologue
    .line 156
    const-wide/16 v6, -0x1

    .line 157
    .local v6, apnId:J
    const/4 v9, 0x0

    .line 160
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "apn = \'ctnet\' and mcc = \'204\' and type = \'default\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 162
    if-eqz v9, :cond_1

    .line 163
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find apn count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", search apnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    if-eqz v9, :cond_2

    .line 170
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_3

    .line 175
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v12, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, apnName:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v12, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "numeric"

    const-string v1, "20404"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "mcc"

    const-string v1, "204"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "mnc"

    const-string v1, "04"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "apn"

    const-string v1, "ctnet"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "type"

    const-string v1, "default"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "sourcetype"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    const-string v0, "bearer"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 188
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v11, p1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 189
    .local v10, insertResult:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 191
    new-instance v12, Landroid/content/ContentValues;

    .end local v12           #values:Landroid/content/ContentValues;
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .restart local v12       #values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    const-string v0, "name"

    invoke-virtual {v12, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "numeric"

    const-string v1, "20404"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "mcc"

    const-string v1, "204"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "mnc"

    const-string v1, "04"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "apn"

    const-string v1, "ctwap"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "type"

    const-string v1, "default,mms"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "mmsproxy"

    const-string v1, "10.0.0.200"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "mmsport"

    const-string v1, "80"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "mmsc"

    const-string v1, "http://mmsc.vnet.mobi"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "sourcetype"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    const-string v0, "bearer"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-virtual {v11, p1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 208
    .end local v8           #apnName:Ljava/lang/String;
    .end local v10           #insertResult:Landroid/net/Uri;
    .end local v11           #resolver:Landroid/content/ContentResolver;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertIrGsmApn: apnId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 209
    return-wide v6

    .line 169
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 170
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private popupAlertDialog()V
    .locals 4

    .prologue
    .line 411
    const-string v2, "popupAlertDialog for data enabled on roaming network."

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x205012e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 415
    const v2, 0x2050130

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 417
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 419
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 420
    return-void
.end method

.method private resetWapApnProxyIfNeeded()V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetWapApnProxyIfNeeded: mWapApnProxyExist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->setWapApnForSpecialCase(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    .line 247
    :cond_0
    return-void
.end method

.method private restoreWapApnProxyIfNeeded()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreWapApnProxyIfNeeded: mWapApnProxyExist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 251
    iget-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    if-nez v0, :cond_0

    .line 252
    const-string v0, "10.0.0.200"

    const-string v1, "80"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->setWapApnForSpecialCase(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mWapApnProxyExist:Z

    .line 255
    :cond_0
    return-void
.end method

.method private setFirstRoamingFlag(Z)V
    .locals 3
    .parameter "roaming"

    .prologue
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFirstRoamingFlagxx, roaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 405
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 406
    .local v0, roamingFlag:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_connection_first_roaming_flag"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    return-void

    .line 405
    .end local v0           #roamingFlag:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPreferedApn()Z
    .locals 15

    .prologue
    .line 314
    const-wide/16 v6, -0x1

    .line 317
    .local v6, apnId:J
    const/4 v8, 0x0

    .line 318
    .local v8, cursor:Landroid/database/Cursor;
    const-string v11, "00000"

    .line 319
    .local v11, plmnNumeric:Ljava/lang/String;
    const/4 v3, 0x0

    .line 320
    .local v3, selection:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v10

    .line 321
    .local v10, externalModemSlot:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferedApn: externalModemSlot = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 323
    if-nez v10, :cond_3

    .line 324
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 325
    sget-object v1, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 326
    .local v1, geminiUri:Landroid/net/Uri;
    sget-object v12, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->PREFERAPN_NO_UPDATE_URI_SIM1:Landroid/net/Uri;

    .line 333
    .local v12, preferApnUri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0, v11}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->getPlmnFromImsiIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 335
    const-string v2, "46003"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46012"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46013"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    :cond_0
    const-string v3, "apn = \'ctnet\' and mcc = \'460\' and type like \'%default%\'"

    .line 350
    :goto_1
    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v3, :cond_2

    .line 353
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 354
    if-eqz v8, :cond_1

    .line 355
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 360
    :cond_1
    if-eqz v8, :cond_2

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferedApn, apnId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 368
    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-lez v2, :cond_9

    .line 369
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->resetWapApnProxyIfNeeded()V

    .line 370
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v12, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 371
    .local v9, delResult:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferredApn: delete:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 373
    new-instance v14, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v14, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 374
    .local v14, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    invoke-virtual {v0, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 376
    .local v13, result:Landroid/net/Uri;
    const/4 v2, 0x1

    .line 379
    .end local v9           #delResult:I
    .end local v13           #result:Landroid/net/Uri;
    .end local v14           #values:Landroid/content/ContentValues;
    :goto_2
    return v2

    .line 328
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #geminiUri:Landroid/net/Uri;
    .end local v12           #preferApnUri:Landroid/net/Uri;
    :cond_3
    const-string v2, "gsm.sim.operator.numeric.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 329
    sget-object v1, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 330
    .restart local v1       #geminiUri:Landroid/net/Uri;
    sget-object v12, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->PREFERAPN_NO_UPDATE_URI_SIM2:Landroid/net/Uri;

    .restart local v12       #preferApnUri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 340
    :cond_4
    const-string v2, "45502"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    const-string v3, "apn = \'ctnet\' and mcc = \'455\' and type like \'%default%\'"

    goto/16 :goto_1

    .line 343
    :cond_5
    const-string v2, "20404"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->getDualModePhoneCardType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 345
    :cond_6
    invoke-direct {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->insertIrGsmApn(Landroid/net/Uri;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 347
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreferedApn,  but we don\'t care the plmn = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 360
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 379
    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setWapApnForSpecialCase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "proxy"
    .parameter "port"

    .prologue
    const/4 v5, 0x0

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWapApnForSpecialCase: proxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 260
    .local v1, updateResolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 261
    .local v2, updateValues:Landroid/content/ContentValues;
    const-string v3, "proxy"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, "port"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    .line 265
    .local v0, externalModemSlot:I
    if-nez v0, :cond_0

    .line 266
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "apn = \'ctwap\' and (mcc = \'460\' or mcc = \'455\') and type like \'%default%\' and sourcetype <> 1"

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "apn = \'ctwap\' and (mcc = \'460\' or mcc = \'455\') and type like \'%default%\' and sourcetype <> 1"

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wapApnProxyExists()Z
    .locals 9

    .prologue
    .line 218
    const/4 v8, 0x0

    .line 219
    .local v8, ret:Z
    const/4 v6, 0x0

    .line 220
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v7

    .line 221
    .local v7, externalModemSlot:I
    sget-object v1, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 222
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 223
    sget-object v1, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "apn = \'ctwap\' and mcc = \'460\' and type like \'%default%\' and proxy = \'10.0.0.200\' and sourcetype <> 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 230
    const/4 v8, 0x1

    .line 233
    :cond_1
    if-eqz v6, :cond_2

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wapApnProxyExists: ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 238
    return v8

    .line 233
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    const-string v0, "[OP09DataStrategy]"

    return-object v0
.end method

.method public insertGsmApnForDualModeCard()J
    .locals 4

    .prologue
    .line 145
    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->insertIrGsmApn(Landroid/net/Uri;)J

    move-result-wide v0

    .line 146
    .local v0, checkId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertGsmApnForDualModeCard: checkId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 147
    return-wide v0
.end method

.method public onRegisterHomeNetwork(Ljava/lang/String;)V
    .locals 3
    .parameter "plmn"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->onRegisterHomeNetwork(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->getDefaultDataSlotId()I

    move-result v0

    .line 135
    .local v0, slotId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegisterHomeNetwork: plmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->setFirstRoamingFlag(Z)V

    .line 138
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->restoreWapApnProxyIfNeeded()V

    .line 140
    :cond_0
    return-void
.end method

.method public onRegisterRoamingNetwork(Ljava/lang/String;)V
    .locals 4
    .parameter "plmn"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/mediatek/op/telephony/internationalroaming/strategy/DefaultDataStrategy;->onRegisterRoamingNetwork(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->setPreferedApn()Z

    .line 112
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->getDefaultDataSlotId()I

    move-result v1

    .line 113
    .local v1, slotId:I
    iget-object v2, p0, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->mController:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->getLastNetworkMcc()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, lastMcc:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegisterRoamingNetwork: plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lastMcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->logd(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "460"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "460"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->setFirstRoamingFlag(Z)V

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->popupAlertDialog()V

    .line 125
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/op/telephony/internationalroaming/strategy/OP09DataStrategy;->setFirstRoamingFlag(Z)V

    .line 128
    :cond_3
    return-void
.end method
