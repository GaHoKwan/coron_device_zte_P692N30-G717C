.class Lcom/android/mms/ui/MmsPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MmsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 573
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 576
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    #calls: Lcom/android/mms/ui/MmsPreferenceActivity;->setMessagePreferences()V
    invoke-static {v1}, Lcom/android/mms/ui/MmsPreferenceActivity;->access$000(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    .line 577
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    #calls: Lcom/android/mms/ui/MmsPreferenceActivity;->setListPrefSummary()V
    invoke-static {v1}, Lcom/android/mms/ui/MmsPreferenceActivity;->access$100(Lcom/android/mms/ui/MmsPreferenceActivity;)V

    .line 579
    :cond_0
    return-void
.end method