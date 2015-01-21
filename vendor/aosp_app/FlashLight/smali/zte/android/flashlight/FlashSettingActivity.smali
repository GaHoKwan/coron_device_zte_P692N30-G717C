.class public Lzte/android/flashlight/FlashSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "FlashSettingActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final OPEN_WITH_SHAKE:Ljava/lang/String; = "shake_sopen"

.field public static final SHAKE_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "zte.android.flashlight.settingPreference"

.field public static final SOUND_NOTIFY:Ljava/lang/String; = "sound_notify"

.field private static TAG:Ljava/lang/String;

.field private static mShareprf:Landroid/content/SharedPreferences;


# instance fields
.field mSensitivity:Landroid/preference/ListPreference;

.field mShake:Landroid/preference/CheckBoxPreference;

.field mSound:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "FlashSetting"

    sput-object v0, Lzte/android/flashlight/FlashSettingActivity;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lzte/android/flashlight/FlashSettingActivity;->mShareprf:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const-string v0, "zte.android.flashlight.settingPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lzte/android/flashlight/FlashSettingActivity;->mSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    iget-object v0, p0, Lzte/android/flashlight/FlashSettingActivity;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    iget-object v0, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    return-void
.end method

.method private setWindowState()V
    .locals 4

    .prologue
    .line 92
    sget-object v2, Lzte/android/flashlight/FlashSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "setWindowState"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lzte/android/flashlight/FlashSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 95
    .local v0, mWin:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 96
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 98
    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 100
    return-void
.end method

.method private updateChildPreferences()V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lzte/android/flashlight/FlashSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateChildPreferences mShake.isChecked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/android/flashlight/FlashSettingActivity;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lzte/android/flashlight/FlashSettingActivity;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0}, Lzte/android/flashlight/FlashSettingActivity;->setWindowState()V

    .line 52
    invoke-virtual {p0}, Lzte/android/flashlight/FlashSettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 53
    .local v0, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-static {p0}, Lzte/android/flashlight/FlashSettingActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "zte.android.flashlight.settingPreference"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 57
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lzte/android/flashlight/FlashSettingActivity;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lzte/android/flashlight/FlashSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v4, "sound_notify"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mSound:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v4, "shake_sopen"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mShake:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v4, "sensitivity"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    .line 64
    iget-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    .line 65
    invoke-virtual {p0}, Lzte/android/flashlight/FlashSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, weakOrStrong:Ljava/lang/String;
    iget-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 72
    .end local v3           #weakOrStrong:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lzte/android/flashlight/FlashSettingActivity;->updateChildPreferences()V

    .line 73
    return-void

    .line 69
    :cond_0
    iget-object v4, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    iget-object v5, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 87
    invoke-virtual {p0}, Lzte/android/flashlight/FlashSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lzte/android/flashlight/FlashSettingActivity;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 130
    sget-object v2, Lzte/android/flashlight/FlashSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lzte/android/flashlight/FlashSettingActivity;->mSound:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lzte/android/flashlight/FlashSettingActivity;->mSound:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    :goto_0
    return v1

    .line 135
    .restart local p2
    :cond_0
    iget-object v2, p0, Lzte/android/flashlight/FlashSettingActivity;->mShake:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 136
    iget-object v2, p0, Lzte/android/flashlight/FlashSettingActivity;->mShake:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 138
    .restart local p2
    :cond_1
    iget-object v1, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    move-object v0, p2

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, weakOrStrong:Ljava/lang/String;
    sget-object v1, Lzte/android/flashlight/FlashSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange weakOrStrong = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    iget-object v2, p0, Lzte/android/flashlight/FlashSettingActivity;->mSensitivity:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    .end local v0           #weakOrStrong:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lzte/android/flashlight/FlashSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 80
    invoke-direct {p0, p0}, Lzte/android/flashlight/FlashSettingActivity;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 113
    const-string v0, "shake_sopen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lzte/android/flashlight/FlashSettingActivity;->updateChildPreferences()V

    .line 116
    :cond_0
    return-void
.end method
