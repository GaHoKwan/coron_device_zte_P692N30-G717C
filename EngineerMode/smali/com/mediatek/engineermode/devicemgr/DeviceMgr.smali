.class public Lcom/mediatek/engineermode/devicemgr/DeviceMgr;
.super Landroid/preference/PreferenceActivity;
.source "DeviceMgr.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DM_SWITCH_DIALOG:I = 0x0

.field private static final KEY_DM_CONFIGURATION_SWITCH:Ljava/lang/String; = "dm_conf_switch"

.field private static final KEY_SMS_AUTO_REG:Ljava/lang/String; = "sms_auto_reg"

.field private static final STR_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final STR_DMAGENT:Ljava/lang/String; = "DmAgent"

.field private static final STR_DM_CONF_PRODUCTIVE:Ljava/lang/String; = "Productive Environment"

.field private static final STR_DM_CONF_TEST:Ljava/lang/String; = "Test Environment"

.field private static final STR_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final TAG:Ljava/lang/String; = "EM/devmgr"


# instance fields
.field private mAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mDmConfigSwitch:I

.field private mListPreferDmConfSwitch:Landroid/preference/ListPreference;

.field private mListPreferSmsAutoReg:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/devicemgr/DeviceMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/devicemgr/DeviceMgr;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->setSwitchValue(I)V

    return-void
.end method

.method private getSavedCTA()I
    .locals 6

    .prologue
    .line 164
    iget-object v3, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v3, :cond_0

    .line 165
    const-string v3, "EM/devmgr"

    const-string v4, "get CTA failed, agent is null!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    .line 181
    :goto_0
    return v2

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 170
    .local v2, savedCTA:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->getRegisterSwitch()[B

    move-result-object v0

    .line 171
    .local v0, cta:[B
    if-eqz v0, :cond_1

    .line 172
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 180
    .end local v0           #cta:[B
    :cond_1
    :goto_1
    const-string v3, "EM/devmgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get savedCTA = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EM/devmgr"

    const-string v4, "get cta cmcc switch failed, readCTA failed!"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "EM/devmgr"

    const-string v4, "number format exception. "

    invoke-static {v3, v4, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getSwitchValue()I
    .locals 7

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, dmConfSwitch:I
    iget-object v4, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v4, :cond_0

    .line 201
    const-string v4, "EM/devmgr"

    const-string v5, "get dm conf switch failed, agent is null!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 216
    .end local v0           #dmConfSwitch:I
    .local v1, dmConfSwitch:I
    :goto_0
    return v1

    .line 205
    .end local v1           #dmConfSwitch:I
    .restart local v0       #dmConfSwitch:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v4}, Lcom/mediatek/common/dm/DmAgent;->getSwitchValue()[B

    move-result-object v3

    .line 206
    .local v3, switchData:[B
    if-eqz v3, :cond_1

    .line 207
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 215
    .end local v3           #switchData:[B
    :cond_1
    :goto_1
    const-string v4, "EM/devmgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get getSwitchValue = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 216
    .end local v0           #dmConfSwitch:I
    .restart local v1       #dmConfSwitch:I
    goto :goto_0

    .line 209
    .end local v1           #dmConfSwitch:I
    .restart local v0       #dmConfSwitch:I
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "EM/devmgr"

    const-string v5, "get dm conf switch failed, getSwitchValue failed!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 213
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v4, "EM/devmgr"

    const-string v5, "number format exception. "

    invoke-static {v4, v5, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private reboot()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method private setSavedCTA(Ljava/lang/String;)V
    .locals 4
    .parameter "cta"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v1, :cond_0

    .line 186
    const-string v1, "EM/devmgr"

    const-string v2, "save CTA switch value failed, agent is null!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/dm/DmAgent;->setRegisterSwitch([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_1
    const-string v1, "EM/devmgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save CTA ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EM/devmgr"

    const-string v2, "save CTA switch failed, writeCTA failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private setSwitchValue(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v2, :cond_0

    .line 221
    const-string v2, "EM/devmgr"

    const-string v3, "save dm conf switch failed, agent is null!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, switchString:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/dm/DmAgent;->setSwitchValue([B)Z

    .line 227
    const-string v2, "EM/devmgr"

    const-string v3, "dm conf switch is set."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    const-string v3, "1"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/dm/DmAgent;->setDmSwitchValue([B)Z

    .line 231
    const-string v2, "EM/devmgr"

    const-string v3, "dm pending flag is set."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    const-string v3, "1"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/dm/DmAgent;->setSmsRegSwitchValue([B)Z

    .line 234
    const-string v2, "EM/devmgr"

    const-string v3, "sms reg pending flag is set."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    const-string v2, "EM/devmgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSwitchValue ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EM/devmgr"

    const-string v3, "save dm conf switch failed, setSwitchValue failed!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v2, "EM/devmgr"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const v2, 0x7f030031

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 85
    const-string v2, "DmAgent"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 88
    const-string v2, "sms_auto_reg"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferSmsAutoReg:Landroid/preference/ListPreference;

    .line 90
    const-string v2, "dm_conf_switch"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferDmConfSwitch:Landroid/preference/ListPreference;

    .line 93
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferSmsAutoReg:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferDmConfSwitch:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-direct {p0}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->getSavedCTA()I

    move-result v1

    .line 97
    .local v1, savedCTA:I
    iget-object v3, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferSmsAutoReg:Landroid/preference/ListPreference;

    if-ne v1, v5, :cond_0

    const-string v2, "Enabled"

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    const-string v2, "EM/devmgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListPreferSmsAutoReg.setValue is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferSmsAutoReg:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->getSwitchValue()I

    move-result v2

    iput v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    .line 102
    iget-object v3, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferDmConfSwitch:Landroid/preference/ListPreference;

    iget v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    if-ne v2, v5, :cond_1

    const-string v2, "Productive Environment"

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    const-string v2, "EM/devmgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListPreferDmConfSwitch.setValue is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferDmConfSwitch:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    return-void

    .line 97
    :cond_0
    const-string v2, "Disabled"

    goto :goto_0

    .line 102
    :cond_1
    const-string v2, "Test Environment"

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v2, "EM/devmgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create dialog with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08028e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "You have to reboot to apply this change."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v2, 0x7f080291

    new-instance v3, Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;-><init>(Lcom/mediatek/engineermode/devicemgr/DeviceMgr;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const/high16 v2, 0x104

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 159
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-object v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, key:Ljava/lang/String;
    const-string v5, "EM/devmgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange with key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v5, "sms_auto_reg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 121
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->setSavedCTA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->getSavedCTA()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 126
    .local v1, isEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferSmsAutoReg:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    const-string v5, "1"

    :goto_2
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    if-eqz v1, :cond_3

    const-string v3, "Enabled"

    .line 128
    .local v3, summary:Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mListPreferSmsAutoReg:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    .end local v1           #isEnabled:Z
    .end local v3           #summary:Ljava/lang/String;
    :cond_0
    :goto_4
    return v4

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/devmgr"

    const-string v6, "set sms auto reg exception. "

    invoke-static {v5, v6, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    move v1, v4

    .line 125
    goto :goto_1

    .line 126
    .restart local v1       #isEnabled:Z
    :cond_2
    const-string v5, "0"

    goto :goto_2

    .line 127
    :cond_3
    const-string v3, "Disabled"

    goto :goto_3

    .line 129
    .end local v1           #isEnabled:Z
    .restart local p2
    :cond_4
    const-string v5, "dm_conf_switch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    .line 131
    const-string v5, "EM/devmgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_DM_CONFIGURATION_SWITCH mDmConfigSwitch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4
.end method
