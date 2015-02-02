.class public Lcom/mediatek/engineermode/DeviceRegister;
.super Landroid/preference/PreferenceActivity;
.source "DeviceRegister.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DMAGENT:Ljava/lang/String; = "DmAgent"

.field private static final KEY_SMS_REGISTER_SWITCH:Ljava/lang/String; = "ct_sms_register_switch"

.field private static final TAG:Ljava/lang/String; = "EM/DeviceRegister"

.field private static final TURN_OFF:Ljava/lang/String; = "Off"

.field private static final TURN_ON:Ljava/lang/String; = "On"


# instance fields
.field private mDMAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mListPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getSavedCTAValue()I
    .locals 6

    .prologue
    .line 59
    iget-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mDMAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v3, :cond_0

    .line 60
    const-string v3, "EM/DeviceRegister"

    const-string v4, "getSavedCTAValue DMAgent null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, 0x0

    .line 76
    :goto_0
    return v2

    .line 64
    :cond_0
    const/4 v2, 0x1

    .line 66
    .local v2, savedCTA:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mDMAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v3}, Lcom/mediatek/common/dm/DmAgent;->getRegisterSwitch()[B

    move-result-object v0

    .line 67
    .local v0, cta:[B
    if-eqz v0, :cond_1

    .line 68
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 75
    .end local v0           #cta:[B
    :cond_1
    :goto_1
    const-string v3, "EM/DeviceRegister"

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

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EM/DeviceRegister"

    const-string v4, "RemoteException "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "EM/DeviceRegister"

    const-string v4, "NumberFormatException "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setCTAValue(Ljava/lang/String;)V
    .locals 4
    .parameter "cta"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/mediatek/engineermode/DeviceRegister;->mDMAgent:Lcom/mediatek/common/dm/DmAgent;

    if-nez v1, :cond_0

    .line 81
    const-string v1, "EM/DeviceRegister"

    const-string v2, "setCTAValue DMAgent null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/DeviceRegister;->mDMAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/common/dm/DmAgent;->setRegisterSwitch([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const-string v1, "EM/DeviceRegister"

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

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EM/DeviceRegister"

    const-string v2, "setCTAValue RemoteException!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v3, 0x7f030030

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 32
    const-string v3, "DmAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    .local v0, iBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mDMAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 35
    const-string v3, "ct_sms_register_switch"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mListPreference:Landroid/preference/ListPreference;

    .line 36
    iget-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 37
    invoke-direct {p0}, Lcom/mediatek/engineermode/DeviceRegister;->getSavedCTAValue()I

    move-result v1

    .line 38
    .local v1, savedCTAValue:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v2, "On"

    .line 39
    .local v2, summary:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v3, p0, Lcom/mediatek/engineermode/DeviceRegister;->mListPreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 41
    return-void

    .line 38
    .end local v2           #summary:Ljava/lang/String;
    :cond_0
    const-string v2, "Off"

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ct_sms_register_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/mediatek/engineermode/DeviceRegister;->setCTAValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/DeviceRegister;->getSavedCTAValue()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 51
    .local v1, isEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/mediatek/engineermode/DeviceRegister;->mListPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    if-eqz v1, :cond_3

    const-string v2, "On"

    .line 53
    .local v2, summary:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/mediatek/engineermode/DeviceRegister;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    .end local v1           #isEnabled:Z
    .end local v2           #summary:Ljava/lang/String;
    :cond_0
    return v3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v4, "EM/DeviceRegister"

    const-string v5, "setCTAValue NumberFormatException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_1
    move v1, v3

    .line 50
    goto :goto_1

    .line 51
    .restart local v1       #isEnabled:Z
    :cond_2
    const-string v4, "0"

    goto :goto_2

    .line 52
    :cond_3
    const-string v2, "Off"

    goto :goto_3
.end method
