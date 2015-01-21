.class public final Lcom/mediatek/settings/plugin/DataConnectionEnabler;
.super Ljava/lang/Object;
.source "DataConnectionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ALL_RADIO_OFF:I = 0x0

.field static final ATTACH_DATA_CONN_TIME_OUT:I = 0x7530

.field static final DATA_SWITCH_TIME_OUT_MSG:I = 0x3e8

.field static final DETACH_DATA_CONN_TIME_OUT:I = 0x2710

.field static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "DataConnectionEnabler"

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDataConnectionObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDataConnectActing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;-><init>(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/plugin/DataConnectionEnabler$2;-><init>(Lcom/mediatek/settings/plugin/DataConnectionEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mDataConnectionObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler$3;-><init>(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mContext:Landroid/content/Context;

    .line 104
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 105
    iput-object p2, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/plugin/DataConnectionEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V

    return-void
.end method

.method static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 208
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 210
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 212
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method public static getSimIndicator(Landroid/content/ContentResolver;I)I
    .locals 8
    .parameter "resolver"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    .line 245
    const-string v5, "DataConnectionEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimIndicator---slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v4, v3

    .line 248
    .local v4, isAirplaneOn:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 249
    const-string v5, "DataConnectionEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAirplaneOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    :goto_1
    return v3

    .line 246
    .end local v4           #isAirplaneOn:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 252
    .restart local v4       #isAirplaneOn:Z
    :cond_2
    const/4 v3, -0x1

    .line 254
    .local v3, indicator:I
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 255
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_1

    .line 258
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "DataConnectionEnabler"

    const-string v6, "RemoteException"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 261
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v5, "DataConnectionEnabler"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static getSimIndicator(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 217
    const-string v0, "DataConnectionEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimIndicator---slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p1}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isTargetSlotRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "DataConnectionEnabler"

    const-string v1, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getSimIndicator(Landroid/content/ContentResolver;I)I

    move-result v0

    goto :goto_0
.end method

.method private static hasSlotRadioOnNotLocked(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, slot:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 185
    invoke-static {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isTargetSlotRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getSimIndicator(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 190
    :goto_1
    return v1

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static isGPRSEnable(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, isMMSProcess:Z
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 168
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 169
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 170
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 172
    .local v5, state:Landroid/net/NetworkInfo$State;
    const-string v8, "DataConnectionEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mms state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v5, v8, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v8, :cond_2

    :cond_0
    move v2, v7

    .line 177
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #state:Landroid/net/NetworkInfo$State;
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isRadioOff(Landroid/content/Context;)Z

    move-result v3

    .line 178
    .local v3, isRadioOff:Z
    if-nez v3, :cond_3

    invoke-static {p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->hasSlotRadioOnNotLocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v7

    .line 179
    .local v1, hasSimUnLocked:Z
    :goto_1
    const-string v8, "DataConnectionEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isMMSProcess="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isRadioOff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", hasSimUnLocked="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    return v7

    .end local v1           #hasSimUnLocked:Z
    .end local v3           #isRadioOff:Z
    .restart local v4       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v5       #state:Landroid/net/NetworkInfo$State;
    :cond_2
    move v2, v6

    .line 173
    goto :goto_0

    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v5           #state:Landroid/net/NetworkInfo$State;
    .restart local v3       #isRadioOff:Z
    :cond_3
    move v1, v6

    .line 178
    goto :goto_1

    .restart local v1       #hasSimUnLocked:Z
    :cond_4
    move v7, v6

    .line 180
    goto :goto_2
.end method

.method static isRadioOff(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 203
    .local v0, isAllRadioOff:Z
    :cond_0
    :goto_0
    const-string v1, "DataConnectionEnabler"

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

    .line 204
    return v0

    .line 198
    .end local v0           #isAllRadioOff:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTargetSlotRadioOn(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 228
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 229
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 235
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DataConnectionEnabler"

    const-string v3, "isTargetSlotRadioOn query error, return false"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSwitcherState()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isGPRSEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 154
    .local v0, enabled:Z
    :goto_0
    const-string v1, "DataConnectionEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSwitcherState enalbed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    return-void

    .line 153
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z

    .line 144
    iget-object v2, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    const-string v0, "DataConnectionEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and do switch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    return-void

    .line 144
    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "DataConnectionEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state is not changed, do nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mDataConnectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mDataConnectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V

    .line 121
    const-string v0, "DataConnectionEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume mConnectivityManager.getMobileDataEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    .line 134
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V

    goto :goto_0
.end method
