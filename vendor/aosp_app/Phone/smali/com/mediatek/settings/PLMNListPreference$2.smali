.class Lcom/mediatek/settings/PLMNListPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "PLMNListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/PLMNListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/PLMNListPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/PLMNListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/mediatek/settings/PLMNListPreference;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->access$202(Lcom/mediatek/settings/PLMNListPreference;Z)Z

    .line 101
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    #calls: Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$100(Lcom/mediatek/settings/PLMNListPreference;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/mediatek/settings/PLMNListPreference;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/PLMNListPreference;->access$302(Lcom/mediatek/settings/PLMNListPreference;I)I

    .line 104
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    #calls: Lcom/mediatek/settings/PLMNListPreference;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$100(Lcom/mediatek/settings/PLMNListPreference;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    #getter for: Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/PLMNListPreference;->access$400(Lcom/mediatek/settings/PLMNListPreference;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "ACTION_SIM_STATE_CHANGED received"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    #getter for: Lcom/mediatek/settings/PLMNListPreference;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/PLMNListPreference;->access$400(Lcom/mediatek/settings/PLMNListPreference;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isSimStateReady(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string v1, "Settings/PLMNListPreference"

    const-string v2, "Activity finished"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/mediatek/settings/PLMNListPreference$2;->this$0:Lcom/mediatek/settings/PLMNListPreference;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->goUpToTopLevelSetting(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0
.end method
