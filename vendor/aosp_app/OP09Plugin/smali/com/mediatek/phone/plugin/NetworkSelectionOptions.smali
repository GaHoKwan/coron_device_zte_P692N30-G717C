.class public Lcom/mediatek/phone/plugin/NetworkSelectionOptions;
.super Ljava/lang/Object;
.source "NetworkSelectionOptions.java"


# static fields
.field private static final APN_SETTINGS_CLASS:Ljava/lang/String; = "com.android.settings.ApnSettings"

.field private static final APN_SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final CT_PAN_KEY:Ljava/lang/String; = "pref_ct_apn_key"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSelectionOptions"

.field private static final MANUAL_NETWORK_SELECTION_KEY:Ljava/lang/String; = "manual_network_selection"

.field private static final NETWORK_SELECTION_CLASS:Ljava/lang/String; = "com.mediatek.settings.plugin.ManualNetworkSelection"

.field private static final NETWORK_SELECTION_PACKAGE:Ljava/lang/String; = "com.android.phone"


# instance fields
.field private mOP09Context:Landroid/content/Context;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "op09Context"
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->mOP09Context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 48
    iput-object p3, p0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->create()V

    .line 50
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    .local v0, prefAPN:Landroid/preference/PreferenceScreen;
    const-string v2, "pref_ct_apn_key"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->mOP09Context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v1, targetIntent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ApnSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 61
    iget-object v2, p0, Lcom/mediatek/phone/plugin/NetworkSelectionOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 62
    return-void
.end method
