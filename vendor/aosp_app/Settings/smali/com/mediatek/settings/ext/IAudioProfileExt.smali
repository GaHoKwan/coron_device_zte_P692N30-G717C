.class public interface abstract Lcom/mediatek/settings/ext/IAudioProfileExt;
.super Ljava/lang/Object;
.source "IAudioProfileExt.java"


# virtual methods
.method public abstract addCustomizedPreference(Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract createView(I)Landroid/view/View;
.end method

.method public abstract getPrefImageView(I)Landroid/view/View;
.end method

.method public abstract getPrefRadioButton(I)Landroid/view/View;
.end method

.method public abstract getPreferenceSummary(I)Landroid/view/View;
.end method

.method public abstract getPreferenceTitle(I)Landroid/view/View;
.end method

.method public abstract isPrefEditable()Z
.end method

.method public abstract onAudioProfileSettingPaused(Landroid/preference/PreferenceFragment;)V
.end method

.method public abstract onAudioProfileSettingResumed(Landroid/preference/PreferenceFragment;)V
.end method

.method public abstract onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end method

.method public abstract setRingerVolume(Landroid/media/AudioManager;I)V
.end method

.method public abstract setRingtonePickerParams(Landroid/content/Intent;)V
.end method

.method public abstract setVolume(Landroid/media/AudioManager;II)V
.end method
