.class public Lcom/android/quicksearchbox/preferences/SearchableItemsActivity;
.super Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;
.source "SearchableItemsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f060004

    return v0
.end method

.method protected handlePreferenceGroup(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/LegacySearchSettingsActivityBase;->getController()Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/preferences/PreferenceControllerFactory;->handlePreference(Landroid/preference/Preference;)V

    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 35
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplication;->isHoneycombOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 38
    :cond_0
    return-void
.end method
