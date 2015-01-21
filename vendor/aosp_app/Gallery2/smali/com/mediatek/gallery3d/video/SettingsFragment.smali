.class public Lcom/mediatek/gallery3d/video/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final STEP_OPTION:Ljava/lang/String; = "selected_step_option"

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/SettingsFragment"


# instance fields
.field private mSettings:Landroid/content/SharedPreferences;

.field private mStepOtion:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsFragment;->mStepOtion:Landroid/preference/ListPreference;

    .line 64
    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsFragment;->mSettings:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "Gallery2/VideoPlayer/SettingsFragment"

    const-string v1, "onCreate() entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsFragment;->mSettings:Landroid/content/SharedPreferences;

    .line 71
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 72
    const-string v0, "selected_step_option"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsFragment;->mStepOtion:Landroid/preference/ListPreference;

    .line 73
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsFragment;->mStepOtion:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    const-string v0, "Gallery2/VideoPlayer/SettingsFragment"

    const-string v1, "onCreate() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
