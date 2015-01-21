.class Lcom/android/mms/ui/SmsPreferenceActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 783
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mSmsLocation:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$500(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 785
    .local v1, locationDialog:Landroid/app/Dialog;
    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$600(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$600(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #getter for: Lcom/android/mms/ui/SmsPreferenceActivity;->mNumberTextDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$600(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 789
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 792
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 793
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #calls: Lcom/android/mms/ui/SmsPreferenceActivity;->setMessagePreferences()V
    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$700(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 794
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    #calls: Lcom/android/mms/ui/SmsPreferenceActivity;->setListPrefSummary()V
    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->access$800(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 796
    :cond_2
    return-void
.end method
