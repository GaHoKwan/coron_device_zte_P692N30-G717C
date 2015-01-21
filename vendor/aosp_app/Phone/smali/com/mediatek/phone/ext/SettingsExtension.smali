.class public Lcom/mediatek/phone/ext/SettingsExtension;
.super Ljava/lang/Object;
.source "SettingsExtension.java"


# static fields
.field public static final BUTTON_2G_ONLY:Ljava/lang/String; = "button_prefer_2g_key"

.field public static final BUTTON_NETWORK_MODE_EX_KEY:Ljava/lang/String; = "button_network_mode_ex_key"

.field public static final BUTTON_NETWORK_MODE_KEY:Ljava/lang/String; = "gsm_umts_preferred_network_mode_key"

.field public static final BUTTON_PLMN_LIST:Ljava/lang/String; = "button_plmn_key"

.field public static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeFeatureForOperator(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "prefSet"

    .prologue
    .line 69
    return-void
.end method

.method public customizePLMNFeature(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefSet"
    .parameter "plmnPreference"

    .prologue
    .line 77
    return-void
.end method

.method public dataEnableReminder(ZZLandroid/preference/PreferenceActivity;)V
    .locals 3
    .parameter "isDataEnabled"
    .parameter "isRoamingEnabled"
    .parameter "activity"

    .prologue
    .line 133
    const-string v1, "connectivity"

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    .local v0, connService:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 135
    const-string v1, "NetworkSettings"

    const-string v2, "mConnService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method public disableDataRoaming(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0
    .parameter "buttonDataRoam"
    .parameter "isEnabled"

    .prologue
    .line 152
    return-void
.end method

.method public disableNetworkSelectionPrefs(Landroid/preference/PreferenceActivity;Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .parameter "prefActivity"
    .parameter "phone"
    .parameter "airplaneModeEnabled"

    .prologue
    .line 265
    return-void
.end method

.method public getManualSelectDialogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "defaultMsg"

    .prologue
    .line 215
    return-object p1
.end method

.method public getRoamingMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "res"

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default getRoamingMessage with message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/ext/SettingsExtension;->log(Ljava/lang/String;)V

    .line 165
    return-object v0
.end method

.method public isRemoveRadioOffFor3GSwitchFlag()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public loadManualNetworkSelectionPreference(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "prefActivity"
    .parameter "preferenceScreen"

    .prologue
    .line 189
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 142
    const-string v0, "NetworkSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public needCustomizeNetworkSelection()Z
    .locals 2

    .prologue
    .line 179
    const-string v0, "NetworkSettings"

    const-string v1, "isNeedCustomize() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateAlertDialog(ILandroid/app/Activity;Landroid/os/Handler;)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"
    .parameter "activity"
    .parameter "timeoutHandler"

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public reloadPreference(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "prefActivity"
    .parameter "preferenceScreen"
    .parameter "buttonPreferredNetworkModeEx"
    .parameter "preference3GSwitch"
    .parameter "plmnPreference"

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public removeNMMode(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefsc"
    .parameter "buttonPreferredNetworkMode"
    .parameter "buttonPreferredGSMOnly"
    .parameter "buttonPreferredNetworkModeEx"

    .prologue
    .line 88
    return-void
.end method

.method public removeNMOp(Landroid/preference/PreferenceScreen;Z)V
    .locals 0
    .parameter "prefsc"
    .parameter "isShowPlmn"

    .prologue
    .line 96
    return-void
.end method

.method public removeNMOpFor3GSwitch(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefsc"
    .parameter "networkMode"

    .prologue
    .line 105
    return-void
.end method

.method public removeNMOpForMultiSim(Lcom/android/internal/telephony/Phone;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter
    .parameter "targetClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    return-void
.end method

.method public replaceSim1ToUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "simString"

    .prologue
    .line 200
    return-object p1
.end method

.method public replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "simString"
    .parameter "slotId"

    .prologue
    .line 208
    return-object p1
.end method

.method public replaceSimToCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "simString"

    .prologue
    .line 204
    return-object p1
.end method

.method public replaceSimToSimUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "simString"

    .prologue
    .line 192
    return-object p1
.end method

.method public replaceSimToUim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "simString"

    .prologue
    .line 196
    return-object p1
.end method

.method public setRoamingSummary(Landroid/preference/CheckBoxPreference;II)V
    .locals 1
    .parameter "f"
    .parameter "resIdOn"
    .parameter "resIdOff"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public shouldPublicRemoteBinder()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public switchPref(Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter "manuSelect"
    .parameter "autoSelect"

    .prologue
    .line 212
    return-void
.end method
