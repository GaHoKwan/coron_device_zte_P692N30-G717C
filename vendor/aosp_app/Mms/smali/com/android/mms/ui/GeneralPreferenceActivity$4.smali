.class Lcom/android/mms/ui/GeneralPreferenceActivity$4;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GeneralPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GeneralPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 5
    .parameter "limit"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$400(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$400(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result p1

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$400(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #calls: Lcom/android/mms/ui/GeneralPreferenceActivity;->setSmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$500(Lcom/android/mms/ui/GeneralPreferenceActivity;)V

    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$600(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$600(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    iget-object v1, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    const v4, 0x7f0b008a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$602(Lcom/android/mms/ui/GeneralPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mSMSHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$700(Lcom/android/mms/ui/GeneralPreferenceActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/GeneralPreferenceActivity$4$1;-><init>(Lcom/android/mms/ui/GeneralPreferenceActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    return-void

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$400(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/GeneralPreferenceActivity$4;->this$0:Lcom/android/mms/ui/GeneralPreferenceActivity;

    #getter for: Lcom/android/mms/ui/GeneralPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/GeneralPreferenceActivity;->access$400(Lcom/android/mms/ui/GeneralPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result p1

    goto :goto_0
.end method
