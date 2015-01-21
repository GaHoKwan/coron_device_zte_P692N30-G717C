.class public Lcom/mediatek/settings/plugin/OP09SimManagementExtImp;
.super Lcom/mediatek/settings/ext/DefaultSimManagementExt;
.source "OP09SimManagementExtImp.java"


# static fields
.field private static final CDMA_FILTERS:[Landroid/text/InputFilter; = null

.field private static final DOUBLE_SIM_CARD:I = 0x2

.field private static final GSM_FILTERS:[Landroid/text/InputFilter; = null

.field private static final KEY_GPRS_SIM_SETTING:Ljava/lang/String; = "gprs_sim_setting"

.field private static final KEY_ROAMING_SETTING:Ljava/lang/String; = "roaming_settings"

.field private static final SIM_NUMBER_MAX_LEN_CDMA:I = 0xf

.field private static final SIM_NUMBER_MAX_LEN_GSM:I = 0x13

.field private static final SINGLE_SIM_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimManagementExtImp"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/settings/plugin/OP09SimManagementExtImp;->CDMA_FILTERS:[Landroid/text/InputFilter;

    .line 31
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/settings/plugin/OP09SimManagementExtImp;->GSM_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultSimManagementExt;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeSimColorEditPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 40
    return-void
.end method

.method public customizeSmsChoiceArray(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, smsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    return-void
.end method

.method public customizeVoiceChoiceArray(Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter "voipAvailable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, voiceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 57
    return-void
.end method

.method public enableSwitchForSimInfoPref()Z
    .locals 2

    .prologue
    .line 78
    const-string v0, "SimManagementExtImp"

    const-string v1, "enableSwitchForSimInfoPref return false"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public updateDefaultSettingsItem(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter "prefGroup"

    .prologue
    .line 61
    const-string v1, "gprs_sim_setting"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 62
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/mediatek/settings/ext/DefaultSimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 70
    const-string v1, "roaming_settings"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_0
    return-void
.end method

.method public updateSimNumberMaxLength(Landroid/preference/EditTextPreference;I)V
    .locals 3
    .parameter "editTextPreference"
    .parameter "slotId"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    .line 86
    .local v0, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/plugin/OP09SimManagementExtImp;->CDMA_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    .end local v0           #telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0       #telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/plugin/OP09SimManagementExtImp;->GSM_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method
