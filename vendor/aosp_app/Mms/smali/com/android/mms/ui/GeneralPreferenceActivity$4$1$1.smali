.class Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;->this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;->this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    iget-object v1, v1, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$4;

    iget-object v1, v1, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 506
    invoke-static {}, Lcom/android/mms/util/Recycler;->getWapPushRecycler()Lcom/android/mms/util/Recycler$WapPushRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;->this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    iget-object v1, v1, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$4;

    iget-object v1, v1, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 508
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;->this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    iget-object v0, v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$4;

    iget-object v0, v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$600(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;->this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    iget-object v0, v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$4;

    iget-object v0, v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$600(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1$1;->this$2:Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    iget-object v0, v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;->this$1:Lcom/android/mms/ui/GeneralPreferenceActivity$4;

    iget-object v0, v0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$600(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 511
    :cond_0
    return-void
.end method