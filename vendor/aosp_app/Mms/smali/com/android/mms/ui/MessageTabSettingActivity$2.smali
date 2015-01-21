.class Lcom/android/mms/ui/MessageTabSettingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MessageTabSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTabSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTabSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    #getter for: Lcom/android/mms/ui/MessageTabSettingActivity;->isFirst:Z
    invoke-static {v1}, Lcom/android/mms/ui/MessageTabSettingActivity;->access$000(Lcom/android/mms/ui/MessageTabSettingActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/MessageTabSettingActivity;->isFirst:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageTabSettingActivity;->access$002(Lcom/android/mms/ui/MessageTabSettingActivity;Z)Z

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :cond_2
    const-string v1, "MessageTabSettingActivity"

    const-string v2, "receive sim info update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageTabSettingActivity;->addFragment()V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSettingActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSettingActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/MessageTabSettingActivity;->isSimChanged:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageTabSettingActivity;->access$102(Lcom/android/mms/ui/MessageTabSettingActivity;Z)Z

    goto :goto_0
.end method
