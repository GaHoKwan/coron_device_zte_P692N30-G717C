.class Lcom/mediatek/mtklogger/settings/SettingsActivity$2;
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
    .line 206
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mMdSwitchPre:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$400(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 210
    .local v2, oldCheckState:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mMdSwitchPre:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$400(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mMdSwitchPre:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$400(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mMdSwitchPre:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$400(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 213
    .local v1, newCheckState:Z
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$100(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "modemlog_switch_bak"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$100(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "modemlog_switch_bak"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    const-class v5, Lcom/mediatek/mtklogger/settings/ModemLogSettings;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "isSwitchChecked"

    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mMdSwitchPre:Landroid/preference/SwitchPreference;
    invoke-static {v5}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$400(Lcom/mediatek/mtklogger/settings/SettingsActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #calls: Lcom/mediatek/mtklogger/settings/SettingsActivity;->setSdcardSize()V
    invoke-static {v3}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$200(Lcom/mediatek/mtklogger/settings/SettingsActivity;)V

    .line 219
    const-string v3, "sdcardSize"

    iget-object v5, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    #getter for: Lcom/mediatek/mtklogger/settings/SettingsActivity;->mSdcardSize:I
    invoke-static {v5}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->access$300(Lcom/mediatek/mtklogger/settings/SettingsActivity;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/SettingsActivity$2;->this$0:Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-virtual {v3, v0}, Lcom/mediatek/mtklogger/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    return v4

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newCheckState:Z
    :cond_0
    move v3, v4

    .line 210
    goto :goto_0
.end method
