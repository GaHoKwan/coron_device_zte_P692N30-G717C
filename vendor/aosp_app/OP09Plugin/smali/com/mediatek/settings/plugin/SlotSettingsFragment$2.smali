.class Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SlotSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/SlotSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, action:Ljava/lang/String;
    const-string v1, "SlotSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #calls: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$500(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    const-string v1, "com.mediatek.intent.action.START_RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mNetworkInfoPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$600(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #getter for: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->mManualNetworkPref:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$700(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #calls: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$500(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    goto :goto_0

    .line 221
    :cond_4
    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #calls: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateSimInsertedState()V
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$800(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    .line 224
    iget-object v1, p0, Lcom/mediatek/settings/plugin/SlotSettingsFragment$2;->this$0:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    #calls: Lcom/mediatek/settings/plugin/SlotSettingsFragment;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->access$500(Lcom/mediatek/settings/plugin/SlotSettingsFragment;)V

    goto :goto_0
.end method
