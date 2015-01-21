.class public Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;
.super Ljava/lang/Object;
.source "BluetoothSimapSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/activity/AssembledPreferenceActivity$AssemblyPreference;


# static fields
.field private static final KEY_PROFILE:Ljava/lang/String; = "profile_key_for_dialog"

.field private static final KEY_SHOW_DIALOG:Ljava/lang/String; = "show_alert_dialog"

.field private static final KEY_SIMAP_SERVER_CATEGORY:Ljava/lang/String; = "simap_server_category"

.field private static final KEY_SIMAP_SERVER_ENABLE:Ljava/lang/String; = "simap_server_enable"

.field private static final KEY_SIMAP_SERVER_SIM_INDEX:Ljava/lang/String; = "simap_server_sim_index"

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIM_NUM:I = 0x0

.field private static final MSG_SIM_STATE_CHECK:I = 0x64

.field private static final PROFILE_BASE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSimapSettings"

.field private static final mSimIndexSummary:[I


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEntryValueIndex:[I

.field private mProfileKey:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimapCategory:Landroid/preference/PreferenceCategory;

.field private mSimapHandler:Landroid/os/Handler;

.field private mSimapServerConn:Landroid/content/ServiceConnection;

.field private mSimapServerEnable:Landroid/preference/CheckBoxPreference;

.field private mSimapServerSimIndex:Landroid/preference/ListPreference;

.field private mSimapService:Landroid/bluetooth/IBluetoothSimap;

.field private mSimapUICallback:Landroid/bluetooth/IBluetoothSimapCallback;

.field private parentActivity:Landroid/preference/PreferenceActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->MAX_SIM_NUM:I

    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimIndexSummary:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5dt 0x1t 0x7t 0x7ft
        0x5et 0x1t 0x7t 0x7ft
        0x5ft 0x1t 0x7t 0x7ft
        0x60t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mProfileKey:I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    .line 111
    sget v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->MAX_SIM_NUM:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mEntryValueIndex:[I

    .line 118
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$1;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapUICallback:Landroid/bluetooth/IBluetoothSimapCallback;

    .line 132
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$2;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerConn:Landroid/content/ServiceConnection;

    .line 190
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$3;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings$4;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;Landroid/bluetooth/IBluetoothSimap;)Landroid/bluetooth/IBluetoothSimap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/bluetooth/IBluetoothSimapCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapUICallback:Landroid/bluetooth/IBluetoothSimapCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private getAvailSimId()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->MAX_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 307
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->isSimExist(I)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 308
    add-int/lit8 v1, v0, 0x1

    .line 310
    :cond_0
    return v1

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAvailableSimNum()I
    .locals 4

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, i:I
    const/4 v1, 0x0

    .line 281
    .local v1, simNum:I
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->MAX_SIM_NUM:I

    if-ge v0, v2, :cond_1

    .line 282
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->isSimExist(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return v1
.end method

.method private getEntryValueIndex(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mEntryValueIndex:[I

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mEntryValueIndex:[I

    aget v0, v0, p1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBtEnabled()Z
    .locals 2

    .prologue
    .line 575
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 576
    .local v0, bt:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 577
    const/4 v1, 0x0

    .line 579
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private setEntryValueIndex(II)V
    .locals 1
    .parameter "slotId"
    .parameter "valueId"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mEntryValueIndex:[I

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mEntryValueIndex:[I

    aput p2, v0, p1

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceResourceId()I
    .locals 1

    .prologue
    .line 259
    const v0, 0x7f040002

    return v0
.end method

.method public handleCheckSimState()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 314
    const/4 v4, 0x0

    .line 315
    .local v4, simNum:I
    const/4 v1, 0x0

    .line 316
    .local v1, i:I
    const/4 v3, 0x1

    .line 317
    .local v3, simIndex:I
    const/4 v6, 0x4

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 319
    .local v5, slot:[I
    const/4 v1, 0x0

    :goto_0
    sget v6, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->MAX_SIM_NUM:I

    if-ge v1, v6, :cond_1

    .line 320
    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->isSimExist(I)Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 322
    aput v9, v5, v1

    .line 319
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    aput v10, v5, v1

    goto :goto_1

    .line 329
    :cond_1
    const-string v6, "BluetoothSimapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-le v4, v9, :cond_5

    .line 333
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v6, :cond_4

    .line 334
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothSimap;->getSIMIndex()I

    move-result v3

    .line 335
    add-int/lit8 v6, v3, -0x1

    aget v6, v5, v6

    if-nez v6, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->getAvailSimId()I

    move-result v3

    .line 341
    :cond_2
    :goto_2
    const-string v6, "BluetoothSimapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_3
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    add-int/lit8 v7, v3, -0x1

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->getEntryValueIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 348
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    sget-object v7, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimIndexSummary:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 349
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 350
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 376
    :cond_3
    :goto_4
    return-void

    .line 339
    :cond_4
    :try_start_1
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "handleCheckSimState mSimapService = null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "getSIMIndex error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 353
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    if-ne v4, v9, :cond_7

    .line 354
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->getAvailSimId()I

    move-result v3

    .line 356
    :try_start_2
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v6, :cond_6

    .line 357
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v6, v3}, Landroid/bluetooth/IBluetoothSimap;->selectSIM(I)Z

    .line 362
    :goto_5
    const-string v6, "BluetoothSimapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 366
    :goto_6
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    add-int/lit8 v7, v3, -0x1

    invoke-direct {p0, v7}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->getEntryValueIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 367
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    sget-object v7, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimIndexSummary:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 368
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 360
    :cond_6
    :try_start_3
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "handleCheckSimState mSimapService = null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 363
    :catch_1
    move-exception v0

    .line 364
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "getSIMIndex error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 370
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    if-nez v4, :cond_3

    .line 371
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    if-eqz v6, :cond_3

    .line 372
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    .line 373
    .local v2, ret:Z
    const-string v6, "BluetoothSimapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMAP: removePreference mSimapServerSimIndex...return: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 317
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public isSimExist(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 266
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    .line 267
    .local v0, mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    .line 269
    .local v1, simState:I
    const-string v3, "BluetoothSimapSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim current state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-ne v1, v2, :cond_0

    .line 271
    const/4 v2, 0x0

    .line 273
    :cond_0
    return v2
.end method

.method public onCreate(Landroid/preference/PreferenceActivity;)V
    .locals 13
    .parameter "parentActivity"

    .prologue
    const/4 v12, 0x1

    .line 379
    const-string v9, "BluetoothSimapSettings"

    const-string v10, "onCreate..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, i:I
    const/4 v8, 0x0

    .line 382
    .local v8, slotId:I
    iput-object p1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    .line 384
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v10, "simap_server_enable"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    .line 385
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v10, "simap_server_sim_index"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    .line 386
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    const-string v10, "simap_server_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapCategory:Landroid/preference/PreferenceCategory;

    .line 387
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->getAvailableSimNum()I

    move-result v0

    .line 388
    .local v0, availableSimNum:I
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 389
    .local v6, mTmpEntries:[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 390
    .local v7, mTmpEntriesValue:[Ljava/lang/CharSequence;
    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 391
    .local v4, mEntries:[Ljava/lang/CharSequence;
    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 392
    .local v5, mEntriesValue:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 394
    sget v9, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->MAX_SIM_NUM:I

    if-lt v8, v9, :cond_2

    .line 410
    :cond_0
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v9, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 411
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v9, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 413
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    if-nez v9, :cond_4

    .line 415
    :cond_1
    const-string v9, "BluetoothSimapSettings"

    const-string v10, "[BT][SIMAP] Can\'t find SIMAP preferences."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 450
    :goto_1
    return-void

    .line 397
    :cond_2
    invoke-virtual {p0, v8}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->isSimExist(I)Z

    move-result v9

    if-ne v9, v12, :cond_3

    .line 399
    aget-object v9, v6, v8

    aput-object v9, v4, v3

    .line 400
    aget-object v9, v7, v8

    aput-object v9, v5, v3

    .line 401
    invoke-direct {p0, v8, v3}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->setEntryValueIndex(II)V

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 408
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 406
    :cond_3
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->setEntryValueIndex(II)V

    goto :goto_2

    .line 421
    :cond_4
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 422
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 427
    const-string v9, "BluetoothSimapSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIMAP bindService: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Landroid/bluetooth/IBluetoothSimap;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    new-instance v10, Landroid/content/Intent;

    const-class v11, Landroid/bluetooth/IBluetoothSimap;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 431
    .local v1, bindSimap:Z
    if-nez v1, :cond_5

    .line 432
    const-string v9, "BluetoothSimapSettings"

    const-string v10, "SIMAP Service binding failed."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_5
    new-instance v2, Landroid/content/IntentFilter;

    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 448
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v9, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v10, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 484
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "onDestroy()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapUICallback:Landroid/bluetooth/IBluetoothSimapCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSimap;->unregisterCallback(Landroid/bluetooth/IBluetoothSimapCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->parentActivity:Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    :goto_1
    return-void

    .line 495
    :cond_1
    :try_start_2
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "unregisterCallback(mSimapUICallback) failed: null mSimapService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSimapSettings"

    const-string v3, "unregisterCallback(mSimapUICallback) error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 504
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "BluetoothSimapSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][SIMAP] Exception triggered when unbinding service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    .line 520
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, sdState:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, key:Ljava/lang/String;
    const-string v6, "BluetoothSimapSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange(), key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v6, "simap_server_enable"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 528
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    if-nez v6, :cond_0

    .line 529
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "mSimapService is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local p2
    :goto_0
    return v5

    .line 534
    .restart local p2
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 536
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothSimap;->enableService()Z

    .line 538
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "Enable the UI, waiting for SIMAP enable result."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "Enable/disable SIMAP server failed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothSimap;->disableService()V

    .line 543
    const-string v6, "BluetoothSimapSettings"

    const-string v7, "Disable the UI, waiting for SIMAP disable result."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v6, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 554
    :cond_2
    const-string v5, "simap_server_sim_index"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 556
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 557
    .local v4, value:I
    const-string v5, "BluetoothSimapSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMAP Server SIM index Changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v5, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v5, v4}, Landroid/bluetooth/IBluetoothSimap;->selectSIM(I)Z

    .line 560
    iget-object v5, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerSimIndex:Landroid/preference/ListPreference;

    sget-object v6, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimIndexSummary:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 570
    .end local v4           #value:I
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 562
    :catch_1
    move-exception v1

    .line 563
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "BluetoothSimapSettings"

    const-string v6, "Could not parse SIMAP Server SIM index value."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "prefScreen"
    .parameter "pref"

    .prologue
    .line 510
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mSimapServerEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 513
    const-string v1, "BluetoothSimapSettings"

    const-string v2, "SIMAP Server Checkbox is Clicked."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 459
    const-string v0, "profile_key_for_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mProfileKey:I

    .line 461
    const-string v0, "show_alert_dialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mProfileKey:I

    if-eqz v0, :cond_0

    .line 465
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 477
    const-string v0, "BluetoothSimapSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "show_alert_dialog"

    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    const-string v0, "profile_key_for_dialog"

    iget v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapSettings;->mProfileKey:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    :cond_0
    return-void
.end method
