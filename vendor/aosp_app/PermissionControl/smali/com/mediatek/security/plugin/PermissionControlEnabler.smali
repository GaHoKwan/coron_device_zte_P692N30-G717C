.class public final Lcom/mediatek/security/plugin/PermissionControlEnabler;
.super Ljava/lang/Object;
.source "PermissionControlEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

.field private mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/security/plugin/CustomizedSwitchPreference;)V
    .locals 2
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/mediatek/security/plugin/PermissionControlEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/security/plugin/PermissionControlEnabler$1;-><init>(Lcom/mediatek/security/plugin/PermissionControlEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    .line 54
    iput-object p1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/security/plugin/PermissionControlEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/security/plugin/PermissionControlEnabler;)Lcom/mediatek/security/plugin/CustomizedSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    return-object v0
.end method

.method private setSwitchChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 84
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "PermControlEnabler"

    const-string v1, "Monkey is running"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    const-string v4, "PermControlEnabler"

    const-string v5, "Monkey is running"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local p2
    :cond_0
    :goto_0
    return v3

    .line 100
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    if-ne p1, v4, :cond_0

    .line 101
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 102
    .local v1, isChecked:Z
    const-string v4, "PermControlEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange, isChecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v1, :cond_2

    .line 104
    invoke-direct {p0, v1}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->setSwitchChecked(Z)V

    .line 105
    iget-object v4, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/mediatek/security/service/PermControlUtils;->enablePermissionControl(ZLandroid/content/Context;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "permission_switch_off_dlg_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 111
    .local v2, isShowDlg:Z
    :goto_1
    const-string v4, "PermControlEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange, isShowDlg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v2, :cond_4

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.security.SWITCH_OFF_CONTROL_FROM_SECURITY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    iget-object v4, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #isShowDlg:Z
    :cond_3
    move v2, v3

    .line 108
    goto :goto_1

    .line 124
    .restart local v2       #isShowDlg:Z
    :cond_4
    invoke-direct {p0, v1}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->setSwitchChecked(Z)V

    .line 125
    iget-object v4, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/mediatek/security/service/PermControlUtils;->enablePermissionControl(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "PermControlEnabler"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 81
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 59
    const-string v1, "PermControlEnabler"

    const-string v2, "resume()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "permission_control_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 65
    .local v0, isCheck:Z
    :cond_1
    const-string v1, "PermControlEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPermissionControlOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, v0}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->setSwitchChecked(Z)V

    .line 71
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchContentObserver:Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;

    iget-object v2, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 72
    return-void
.end method
