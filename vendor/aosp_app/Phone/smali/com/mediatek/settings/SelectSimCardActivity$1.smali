.class Lcom/mediatek/settings/SelectSimCardActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectSimCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/SelectSimCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/SelectSimCardActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/SelectSimCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const-string v4, "SelectSimCardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 57
    .local v3, state:I
    const-string v4, "slotId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, slotId:I
    const-string v4, "SelectSimCardActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim card "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eq v2, v7, :cond_0

    .line 60
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    move-result-object v1

    .line 61
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1, v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimIndicator(I)V

    .line 79
    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v2           #slotId:I
    .end local v3           #state:I
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->isNoSimInserted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->dealNoSimCardIn()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    #calls: Lcom/mediatek/settings/SelectSimCardActivity;->initPreferenceScreen()V
    invoke-static {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->access$000(Lcom/mediatek/settings/SelectSimCardActivity;)V

    goto :goto_0

    .line 75
    :cond_3
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
