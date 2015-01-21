.class public Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;
.super Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;
.source "ZTEScanSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/ui/CustomPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 22
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;->addPreferencesFromResource(I)V

    .line 24
    const-string v0, "virusdb_auto_update_enable"

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 26
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, key:Ljava/lang/String;
    const-string v1, "virusdb_auto_update_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
