.class public Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;
.super Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mChecked:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;-><init>()V

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z

    return-object v0
.end method

.method private showPatternFeedBackDialog()V
    .locals 5

    .prologue
    .line 145
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z

    const/4 v2, 0x0

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternVibrate()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 146
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z

    const/4 v2, 0x1

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternShowTrack()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 147
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07004d

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->mChecked:[Z

    new-instance v4, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$3;-><init>(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0583

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0174

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0173

    new-instance v3, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$2;-><init>(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 168
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, key:Ljava/lang/String;
    const-string v4, "privacy_disguise_enable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->hasDisguisePassword()Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.zte.heartyservice.intent.action.ACTION_SET_DISGUISE_PASSWORD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 97
    const/4 v3, 0x0

    .line 115
    .end local v0           #enable:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 101
    .restart local p2
    :cond_1
    const-string v4, "privacy_notification_enable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    goto :goto_0

    .line 104
    :cond_2
    const-string v4, "privacy_backup_notice"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment$1;-><init>(Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, key:Ljava/lang/String;
    const-string v3, "privacy_pattern_feedback"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->showPatternFeedBackDialog()V

    .line 139
    :goto_0
    return v2

    .line 124
    :cond_0
    const-string v3, "privacy_backup"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zte.backup.action.privacy"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "startType"

    const-string v4, "backupPrivacy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "privacy_restore"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.zte.backup.action.privacy"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "startType"

    const-string v4, "restorePrivacy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 33
    invoke-super {p0}, Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;->onResume()V

    .line 34
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 35
    .local v5, preferenceScreen:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 39
    :cond_0
    const v6, 0x7f050001

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 42
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    const-string v6, "privacy_disguise_enable"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 45
    const-string v6, "privacy_disguise_password"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 47
    const-string v6, "privacy_enter_name"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :goto_0
    const-string v6, "privacy_pattern_feedback"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 61
    .local v3, prefPrivacyPatternFeedback:Landroid/preference/Preference;
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    const-string v6, "privacy_notification_enable"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPasswordType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 67
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_1
    const-string v6, "privacy_backup"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    .local v0, prefBackup:Landroid/preference/Preference;
    const-string v6, "privacy_restore"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 72
    .local v4, prefRestore:Landroid/preference/Preference;
    const-string v6, "privacy_backup_notice"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 74
    .local v1, prefBackupNotice:Landroid/preference/Preference;
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->isPrivacyBackupSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    :goto_1
    return-void

    .line 50
    .end local v0           #prefBackup:Landroid/preference/Preference;
    .end local v1           #prefBackupNotice:Landroid/preference/Preference;
    .end local v3           #prefPrivacyPatternFeedback:Landroid/preference/Preference;
    .end local v4           #prefRestore:Landroid/preference/Preference;
    :cond_2
    const-string v6, "privacy_disguise_enable"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 51
    .local v2, prefPrivacyDisguiseEnable:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "privacy_disguise_enable"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 57
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 79
    .end local v2           #prefPrivacyDisguiseEnable:Landroid/preference/CheckBoxPreference;
    .restart local v0       #prefBackup:Landroid/preference/Preference;
    .restart local v1       #prefBackupNotice:Landroid/preference/Preference;
    .restart local v3       #prefPrivacyPatternFeedback:Landroid/preference/Preference;
    .restart local v4       #prefRestore:Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method
