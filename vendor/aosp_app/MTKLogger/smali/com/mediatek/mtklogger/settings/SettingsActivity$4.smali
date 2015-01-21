.class Lcom/mediatek/mtklogger/settings/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/settings/SettingsActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$700(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "tagLogEnable"

    iget-object v4, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mTaglogEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$600(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "modem_exception_path"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mExceptionReporterEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$800(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mExceptionReporterEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$800(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mTaglogEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$600(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    iget-object v0, v0, Lcom/mediatek/mtklogger/settings/SettingsActivity;->mExceptionHistory:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    iget-object v3, v0, Lcom/mediatek/mtklogger/settings/SettingsActivity;->mExceptionHistory:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mExceptionReporterEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$800(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mTaglogEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$600(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mTaglogEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$600(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "log2server_dialog_show"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 255
    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mExceptionReporterEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$800(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$4;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "log2server_dialog_show"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
