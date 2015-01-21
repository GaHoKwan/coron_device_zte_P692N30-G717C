.class public interface abstract Lcom/android/camera/manager/SettingManager$SettingListener;
.super Ljava/lang/Object;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingListener"
.end annotation


# virtual methods
.method public abstract onRestorePreferencesClicked()V
.end method

.method public abstract onSettingContainerShowing(Z)V
.end method

.method public abstract onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V
.end method

.method public abstract onVoiceCommandChanged(I)V
.end method
