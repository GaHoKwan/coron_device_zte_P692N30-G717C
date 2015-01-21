.class public Lcom/mediatek/phone/plugin/SettingsOP09Extension;
.super Lcom/mediatek/phone/ext/SettingsExtension;
.source "SettingsOP09Extension.java"


# static fields
.field private static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final APNSETTINGS_CLASS:Ljava/lang/String; = "com.android.settings.ApnSettings"

.field private static final CT_MANUAL_CLASS:Ljava/lang/String; = "com.mediatek.settings.plugin.ManualNetworkSelection"

.field private static final CT_PLUGIN_CLASS_MULTI_SIM:Ljava/lang/String; = "com.mediatek.phone.plugin.MultipleSimActivity"

.field private static final CT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.mediatek.op09.plugin"

.field private static final KEY_CT_APN:Ljava/lang/String; = "pref_ct_apn_key"

.field private static final KEY_DATA_CONN:Ljava/lang/String; = "data_connection_setting"

.field private static final KEY_MANUAL_NETWORK_SELECTION:Ljava/lang/String; = "manual_network_selection"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "OP09PhonePlugin"


# instance fields
.field private mOp09Context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/phone/ext/SettingsExtension;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->mOp09Context:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private getPreferenceClickIntent(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "preference"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, it:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "com.mediatek.op09.plugin"

    const-string v2, "com.mediatek.phone.plugin.MultipleSimActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "INIT_TITLE_NAME_STR"

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 202
    const-string v1, "TARGET_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "TARGET_CLASS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    return-object v0
.end method

.method private isRadioOn(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1
    .parameter "geminiPhone"
    .parameter "slot"

    .prologue
    .line 231
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disableNetworkSelectionPrefs(Landroid/preference/PreferenceActivity;Lcom/android/internal/telephony/Phone;Z)V
    .locals 10
    .parameter "prefActivity"
    .parameter "phone"
    .parameter "airplaneModeEnabled"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 212
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "manual_network_selection"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-nez v8, :cond_0

    .line 228
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v1, 0x0

    .line 216
    .local v1, isSlot1Insert:Z
    const/4 v3, 0x0

    .line 217
    .local v3, isSlot2Insert:Z
    const/4 v2, 0x0

    .line 218
    .local v2, isSlot1RadioOn:Z
    const/4 v4, 0x0

    .local v4, isSlot2RadioOn:Z
    move-object v0, p2

    .line 219
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 220
    .local v0, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    .line 221
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    .line 222
    invoke-direct {p0, v0, v7}, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->isRadioOn(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z

    move-result v2

    .line 223
    invoke-direct {p0, v0, v5}, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->isRadioOn(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z

    move-result v4

    .line 224
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :cond_2
    move v6, v5

    .line 225
    .local v6, simInserted:Z
    :goto_1
    if-nez p3, :cond_4

    if-eqz v6, :cond_4

    .line 226
    .local v5, networkSelectionEnable:Z
    :goto_2
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "manual_network_selection"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .end local v5           #networkSelectionEnable:Z
    .end local v6           #simInserted:Z
    :cond_3
    move v6, v7

    .line 224
    goto :goto_1

    .restart local v6       #simInserted:Z
    :cond_4
    move v5, v7

    .line 225
    goto :goto_2
.end method

.method public getManualSelectDialogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultMsg"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->mOp09Context:Landroid/content/Context;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadManualNetworkSelectionPreference(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "prefActivity"
    .parameter "preferenceScreen"

    .prologue
    .line 82
    const-string v1, "OP09PhonePlugin"

    const-string v2, "loadManualNetworkSelectionPreference() OP09"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;

    iget-object v1, p0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->mOp09Context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;-><init>(Landroid/content/Context;Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    .line 85
    .local v0, networkSelectionOptions:Lcom/mediatek/phone/plugin/NetworkSelectionOptions;
    return-void
.end method

.method public needCustomizeNetworkSelection()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "OP09PhonePlugin"

    const-string v1, "needCustomizeNetworkSelection()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 185
    const-string v0, "pref_ct_apn_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const-string v0, "pref_ct_apn_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 187
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-direct {p0, p2, v2, v3}, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->getPreferenceClickIntent(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 194
    :goto_0
    return v0

    .line 189
    :cond_0
    const-string v0, "manual_network_selection"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    const-string v0, "manual_network_selection"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_1

    .line 191
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.mediatek.op09.plugin"

    const-string v3, "com.mediatek.settings.plugin.ManualNetworkSelection"

    invoke-direct {p0, p2, v2, v3}, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->getPreferenceClickIntent(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadPreference(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "prefActivity"
    .parameter "preferenceScreen"
    .parameter "buttonPreferredNetworkModeEx"
    .parameter "preference3GSwitch"
    .parameter "plmnPreference"

    .prologue
    .line 162
    const-string v2, "OP09PhonePlugin"

    const-string v3, "reloadPreference() OP09"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->mOp09Context:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;-><init>(Landroid/content/Context;Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    .line 165
    .local v1, networkSelectionOptions:Lcom/mediatek/phone/plugin/NetworkSelectionOptions;
    if-eqz p3, :cond_0

    .line 166
    invoke-virtual {p2, p3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_0
    if-eqz p4, :cond_1

    .line 169
    invoke-virtual {p2, p4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_1
    if-eqz p5, :cond_2

    .line 172
    invoke-virtual {p2, p5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_2
    const-string v2, "data_connection_setting"

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 177
    .local v0, dataPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public replaceSim1ToUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "simString"

    .prologue
    .line 108
    const-string v0, "SIM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "SIM1"

    const-string v1, "UIM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_0
    const-string v0, "sim1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "sim1"

    const-string v1, "uim"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_1
    const-string v0, "OP09PhonePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op09 replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object p1
.end method

.method public replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "simString"
    .parameter "slotId"

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->replaceSimToUim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    .end local p1
    :goto_0
    return-object p1

    .line 138
    .restart local p1
    :cond_0
    const-string v0, "OP09PhonePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op09 replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public replaceSimToCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "simString"

    .prologue
    .line 120
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "SIM"

    const-string v1, "card"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    :cond_0
    const-string v0, "OP09PhonePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op09 replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object p1
.end method

.method public replaceSimToSimUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "simString"

    .prologue
    .line 88
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "SIM"

    const-string v1, "UIM/SIM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    :cond_0
    const-string v0, "OP09PhonePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op09 replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object p1
.end method

.method public replaceSimToUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "simString"

    .prologue
    .line 96
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_0
    const-string v0, "sim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "sim"

    const-string v1, "uim"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_1
    const-string v0, "OP09PhonePlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op09 replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object p1
.end method

.method public shouldPublicRemoteBinder()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public switchPref(Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 2
    .parameter "manuSelect"
    .parameter "autoSelect"

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->mOp09Context:Landroid/content/Context;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/phone/plugin/SettingsOP09Extension;->mOp09Context:Landroid/content/Context;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method
