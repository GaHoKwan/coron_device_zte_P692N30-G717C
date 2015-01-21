.class public Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;
.super Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;
.source "OP09CallSettingsConnection.java"


# static fields
.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb_key"

.field private static final BUTTON_CFC_KEY:Ljava/lang/String; = "button_cfc_key"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc_key"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry_key"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu_key"

.field private static final CDMA_CALL_OPTION_CLASS_NAME:Ljava/lang/String; = "com.mediatek.phone.plugin.CdmaAdditionalCallOptions"

.field private static final TAG:Ljava/lang/String; = "CallSettingsConnection"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/phone/ext/DefaultCallSettingsConnection;-><init>()V

    .line 31
    const-string v0, "CallSettingsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallSettingsConnectionExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getCdmaCallOptionClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.mediatek.phone.plugin.CdmaAdditionalCallOptions"

    return-object v0
.end method

.method public setCallForwardPrefsTitle(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .parameter "prefSet"

    .prologue
    .line 51
    const-string v5, "CallSettingsConnection"

    const-string v6, "OP09 setCallForwardPrefsTitle"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v5, "button_cfu_key"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 53
    .local v4, buttonCFU:Landroid/preference/Preference;
    const-string v5, "button_cfb_key"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 54
    .local v0, buttonCFB:Landroid/preference/Preference;
    const-string v5, "button_cfnry_key"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 55
    .local v3, buttonCFNRy:Landroid/preference/Preference;
    const-string v5, "button_cfnrc_key"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 56
    .local v2, buttonCFNRc:Landroid/preference/Preference;
    const-string v5, "button_cfc_key"

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 58
    .local v1, buttonCFC:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 59
    iget-object v5, p0, Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;->mContext:Landroid/content/Context;

    const v6, 0x7f0900ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    .line 62
    iget-object v5, p0, Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;->mContext:Landroid/content/Context;

    const v6, 0x7f0900ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    if-eqz v3, :cond_2

    .line 65
    iget-object v5, p0, Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;->mContext:Landroid/content/Context;

    const v6, 0x7f0900ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    :cond_2
    if-eqz v2, :cond_3

    .line 68
    iget-object v5, p0, Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;->mContext:Landroid/content/Context;

    const v6, 0x7f0900af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_3
    if-eqz v1, :cond_4

    .line 71
    iget-object v5, p0, Lcom/mediatek/phone/plugin/callsetting/OP09CallSettingsConnection;->mContext:Landroid/content/Context;

    const v6, 0x7f0900b0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    :cond_4
    return-void
.end method

.method public startCallSettingsActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.op09.plugin"

    const-string v2, "com.mediatek.phone.plugin.callsetting.CallSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "CallSettingsConnection"

    const-string v2, "CallSettingsOP09Extension start activity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    const-string v1, "CallSettingsConnection"

    const-string v2, "CallSettingsOP09Extension end activity"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 45
    const-string v1, "CallSettingsConnection"

    const-string v2, "CallSettingsOP09Extension  activity finish"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
