.class public Lcom/mediatek/settings/NoNetworkPopUpService;
.super Landroid/app/Service;
.source "NoNetworkPopUpService.java"


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_TIME:I = 0x1d4c0

.field private static final DELAY_TIME_KEY:Ljava/lang/String; = "delay_time_key"

.field private static final NETWORK_POP_UP_MSG:I = 0x0

.field private static final NETWORK_POP_UP_MSG_SIM_1:I = 0x1

.field private static final NETWORK_POP_UP_MSG_SIM_2:I = 0x2

.field private static final NETWORK_POP_UP_MSG_SIM_3:I = 0x3

.field private static final NETWORK_POP_UP_MSG_SIM_4:I = 0x4

.field private static final NETWORK_PUP_UP_MSG_GEMINI:[I = null

.field public static final NO_SERVICE:Ljava/lang/String; = "no_service"

.field public static final NO_SERVICE_KEY:Ljava/lang/String; = "no_service_key"

.field private static final TAG:Ljava/lang/String; = "Settings/NoNetworkPopUpService"


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mDelayTime:I

.field private mDualSimMode:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsShouldShow:Z

.field private final mNetworkResponse:Landroid/os/Handler;

.field private mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReminderType:I

.field private mSP:Landroid/content/SharedPreferences;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/settings/NoNetworkPopUpService;->NETWORK_PUP_UP_MSG_GEMINI:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mAirplaneModeEnabled:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDualSimMode:I

    .line 44
    iput v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mReminderType:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIsShouldShow:Z

    .line 58
    iput v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I

    .line 66
    new-instance v0, Lcom/mediatek/settings/NoNetworkPopUpService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NoNetworkPopUpService$1;-><init>(Lcom/mediatek/settings/NoNetworkPopUpService;)V

    iput-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    .line 96
    new-instance v0, Lcom/mediatek/settings/NoNetworkPopUpService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NoNetworkPopUpService$2;-><init>(Lcom/mediatek/settings/NoNetworkPopUpService;)V

    iput-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/mediatek/settings/NoNetworkPopUpService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NoNetworkPopUpService$3;-><init>(Lcom/mediatek/settings/NoNetworkPopUpService;)V

    iput-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/NoNetworkPopUpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NoNetworkPopUpService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/NoNetworkPopUpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIsShouldShow:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/settings/NoNetworkPopUpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIsShouldShow:Z

    return p1
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mediatek/settings/NoNetworkPopUpService;->NETWORK_PUP_UP_MSG_GEMINI:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/NoNetworkPopUpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/NoNetworkPopUpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/settings/NoNetworkPopUpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/settings/NoNetworkPopUpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/settings/NoNetworkPopUpService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/settings/NoNetworkPopUpService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/NoNetworkPopUpService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/NoNetworkPopUpService;->startNWActivity(II)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 229
    const-string v0, "Settings/NoNetworkPopUpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NoNetworkPopUpService]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private startNWActivity(II)V
    .locals 3
    .parameter "msg"
    .parameter "simId"

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, it:Landroid/content/Intent;
    const-string v1, "no_service"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "simId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :cond_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const v5, 0x1d4c0

    const/4 v2, 0x1

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 112
    const-string v1, "[create network pop up service]"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->log(Ljava/lang/String;)V

    .line 114
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    .line 121
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "delay_time_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "delay_time_key"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "no_service_key"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "no_service_key"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIsShouldShow:Z

    .line 138
    :goto_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 139
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v4, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 140
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mAirplaneModeEnabled:Z

    .line 142
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDualSimMode:I

    .line 146
    :cond_1
    return-void

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "delay_time_key"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    iput v5, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mDelayTime:I

    goto :goto_0

    .line 132
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "no_service_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    iput-boolean v2, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mIsShouldShow:Z

    goto :goto_1

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    move v1, v3

    .line 140
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 156
    const-string v1, "[destroy network pop up service]"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NoNetworkPopUpService;->log(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/mediatek/settings/NoNetworkPopUpService;->NETWORK_PUP_UP_MSG_GEMINI:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;

    sget-object v2, Lcom/mediatek/settings/NoNetworkPopUpService;->NETWORK_PUP_UP_MSG_GEMINI:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mNetworkResponse:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/settings/NoNetworkPopUpService;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 169
    :cond_2
    return-void
.end method
