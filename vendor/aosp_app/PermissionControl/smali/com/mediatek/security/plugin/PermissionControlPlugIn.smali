.class public Lcom/mediatek/security/plugin/PermissionControlPlugIn;
.super Lcom/mediatek/settings/ext/DefaultPermissionControlExt;
.source "PermissionControlPlugIn.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabler:Lcom/mediatek/security/plugin/PermissionControlEnabler;

.field private mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ext/DefaultPermissionControlExt;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v1, Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    invoke-direct {v1, p1}, Lcom/mediatek/security/plugin/CustomizedSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    .line 22
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Lcom/mediatek/security/plugin/CustomizedSwitchPreference;->setTitle(I)V

    .line 23
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Lcom/mediatek/security/plugin/CustomizedSwitchPreference;->setSummary(I)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.security.PERMISSION_CONTROL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/mediatek/security/plugin/CustomizedSwitchPreference;->setIntent(Landroid/content/Intent;)V

    .line 33
    new-instance v1, Lcom/mediatek/security/plugin/PermissionControlEnabler;

    iget-object v2, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    invoke-direct {v1, p1, v2}, Lcom/mediatek/security/plugin/PermissionControlEnabler;-><init>(Landroid/content/Context;Lcom/mediatek/security/plugin/CustomizedSwitchPreference;)V

    iput-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mEnabler:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    .line 34
    iput-object p1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
    .locals 2
    .parameter "prefGroup"

    .prologue
    .line 38
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 40
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mSwitchPrf:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/security/service/PermControlUtils;->isInHouseEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/security/plugin/CustomizedSwitchPreference;->setEnabled(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public enablerPause()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mEnabler:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mEnabler:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    invoke-virtual {v0}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->pause()V

    .line 54
    :cond_0
    return-void
.end method

.method public enablerResume()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mEnabler:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlPlugIn;->mEnabler:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    invoke-virtual {v0}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->resume()V

    .line 48
    :cond_0
    return-void
.end method
