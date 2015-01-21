.class Lcom/android/mms/ui/MessagingPreferenceActivity$3$1$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1$1;->this$2:Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "Recycler"

    const-string v1, "mMmsLimitListener"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1$1;->this$2:Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    iget-object v1, v1, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 793
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1$1;->this$2:Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1$1;->this$2:Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 796
    :cond_0
    return-void
.end method
