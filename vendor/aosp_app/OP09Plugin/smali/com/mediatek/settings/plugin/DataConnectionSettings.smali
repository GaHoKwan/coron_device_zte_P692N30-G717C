.class public Lcom/mediatek/settings/plugin/DataConnectionSettings;
.super Landroid/preference/PreferenceActivity;
.source "DataConnectionSettings.java"


# static fields
.field private static final PROGRESS_DIALOG:I = 0x3e8

.field private static final SIM_SLOT_1_KEY:Ljava/lang/String; = "data_connection_sim_slot_1"

.field private static final SIM_SLOT_2_KEY:Ljava/lang/String; = "data_connection_sim_slot_2"

.field private static final TAG:Ljava/lang/String; = "DataConnectionSettings"


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataConnectionEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

.field private mDataConnectionObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDataConnectActing:Z

.field private mProDlgMsgId:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

.field private mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mProDlgMsgId:I

    .line 50
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;-><init>(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings$2;-><init>(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/mediatek/settings/plugin/DataConnectionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/plugin/DataConnectionSettings$3;-><init>(Lcom/mediatek/settings/plugin/DataConnectionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/DataConnectionSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/plugin/DataConnectionSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/DataConnectionSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->hideProgressDlg()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V

    return-void
.end method

.method private static getDataConnectionSlotId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_setting"

    const-wide/16 v2, -0x4

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private handleDataConnectionChange(I)V
    .locals 4
    .parameter "newSlot"

    .prologue
    .line 216
    const-string v1, "DataConnectionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDataConnectionChange newSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-ltz p1, :cond_1

    invoke-static {p0, p1}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getSimIndicator(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 219
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v2, 0x12e

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getDataConnectionSlotId(Landroid/content/Context;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simid"

    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    iget-wide v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    if-ltz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->showDataConnDialog(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hideProgressDlg()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "DataConnectionSettings"

    const-string v1, "hideProgressDlg()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->dismissDialog(I)V

    .line 256
    return-void
.end method

.method private showDataConnDialog(Z)V
    .locals 4
    .parameter "isConnect"

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    .line 237
    .local v0, delaytime:J
    if-eqz p1, :cond_0

    .line 238
    const-wide/16 v0, 0x7530

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    const v2, 0x7f090074

    invoke-direct {p0, v2}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->showProgressDlg(I)V

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z

    .line 245
    return-void

    .line 240
    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method private showProgressDlg(I)V
    .locals 3
    .parameter "dialogMsg"

    .prologue
    .line 248
    const-string v0, "DataConnectionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDlg() with dialogMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput p1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mProDlgMsgId:I

    .line 250
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->showDialog(I)V

    .line 251
    return-void
.end method

.method private updateScreen()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 185
    iget-object v8, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z

    if-nez v8, :cond_0

    invoke-static {p0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isGPRSEnable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v1, v6

    .line 187
    .local v1, enabled:Z
    :goto_0
    invoke-static {v7}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isTargetSlotRadioOn(I)Z

    move-result v3

    .line 188
    .local v3, slot1RadioOn:Z
    invoke-static {v6}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->isTargetSlotRadioOn(I)Z

    move-result v5

    .line 189
    .local v5, slot2RadioOn:Z
    if-eqz v3, :cond_1

    invoke-static {p0, v7}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getSimIndicator(Landroid/content/Context;I)I

    move-result v8

    if-eq v8, v9, :cond_1

    move v2, v6

    .line 192
    .local v2, slot1NotLocked:Z
    :goto_1
    if-eqz v5, :cond_2

    invoke-static {p0, v6}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getSimIndicator(Landroid/content/Context;I)I

    move-result v8

    if-eq v8, v9, :cond_2

    move v4, v6

    .line 195
    .local v4, slot2NotLocked:Z
    :goto_2
    invoke-static {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getDataConnectionSlotId(Landroid/content/Context;)I

    move-result v0

    .line 196
    .local v0, dataConnectionId:I
    const-string v8, "DataConnectionSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSwitcherState enalbed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsDataConnectActing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot1RadioOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot2RadioOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot1NotLocked="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slot2NotLocked="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataConnectionId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v9, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    move v8, v6

    :goto_3
    invoke-virtual {v9, v8}, Lcom/mediatek/settings/plugin/RadioPreference;->setEnabled(Z)V

    .line 202
    iget-object v9, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v8, v6

    :goto_4
    invoke-virtual {v9, v8}, Lcom/mediatek/settings/plugin/RadioPreference;->setEnabled(Z)V

    .line 203
    if-nez v0, :cond_5

    .line 204
    iget-object v8, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {v8, v6}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    .line 205
    iget-object v6, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {v6, v7}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    .line 213
    :goto_5
    return-void

    .end local v0           #dataConnectionId:I
    .end local v1           #enabled:Z
    .end local v2           #slot1NotLocked:Z
    .end local v3           #slot1RadioOn:Z
    .end local v4           #slot2NotLocked:Z
    .end local v5           #slot2RadioOn:Z
    :cond_0
    move v1, v7

    .line 185
    goto/16 :goto_0

    .restart local v1       #enabled:Z
    .restart local v3       #slot1RadioOn:Z
    .restart local v5       #slot2RadioOn:Z
    :cond_1
    move v2, v7

    .line 189
    goto/16 :goto_1

    .restart local v2       #slot1NotLocked:Z
    :cond_2
    move v4, v7

    .line 192
    goto/16 :goto_2

    .restart local v0       #dataConnectionId:I
    .restart local v4       #slot2NotLocked:Z
    :cond_3
    move v8, v7

    .line 201
    goto :goto_3

    :cond_4
    move v8, v7

    .line 202
    goto :goto_4

    .line 206
    :cond_5
    if-ne v0, v6, :cond_6

    .line 207
    iget-object v8, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {v8, v7}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    .line 208
    iget-object v7, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {v7, v6}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    goto :goto_5

    .line 210
    :cond_6
    iget-object v6, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {v6, v7}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    .line 211
    iget-object v6, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {v6, v7}, Lcom/mediatek/settings/plugin/RadioPreference;->setChecked(Z)V

    goto :goto_5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->addPreferencesFromResource(I)V

    .line 104
    const-string v3, "data_connection_sim_slot_1"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/plugin/RadioPreference;

    iput-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    .line 105
    const-string v3, "data_connection_sim_slot_2"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/plugin/RadioPreference;

    iput-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    .line 106
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.START"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.STOP"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 112
    new-instance v3, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v3}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 113
    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v3, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 115
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 116
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x207000b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 117
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    new-instance v3, Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    .line 126
    iput-boolean v6, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z

    .line 127
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 180
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mProDlgMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 154
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->pause()V

    .line 149
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 159
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot1Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->handleDataConnectionChange(I)V

    .line 166
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mSlot2Preference:Lcom/mediatek/settings/plugin/RadioPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-direct {p0, v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->handleDataConnectionChange(I)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V

    .line 136
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings;->mDataConnectionEnabler:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->resume()V

    .line 139
    :cond_0
    return-void
.end method
