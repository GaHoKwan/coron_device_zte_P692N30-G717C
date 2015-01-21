.class public abstract Lcom/android/inputmethodcommon/InputMethodSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "InputMethodSettingsActivity.java"

# interfaces
.implements Lcom/android/inputmethodcommon/InputMethodSettingsInterface;


# instance fields
.field private final mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-direct {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 35
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->updateSubtypeEnabler()V

    .line 93
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(I)V

    .line 44
    return-void
.end method

.method public setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setInputMethodSettingsCategoryTitle(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public setSubtypeEnablerIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(I)V

    .line 76
    return-void
.end method

.method public setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerIcon(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setSubtypeEnablerTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(I)V

    .line 60
    return-void
.end method

.method public setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/inputmethodcommon/InputMethodSettingsActivity;->mSettings:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    invoke-virtual {v0, p1}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->setSubtypeEnablerTitle(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
