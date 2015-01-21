.class Lcom/android/mms/ui/ClassifyGeneralFragment$5;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 5
    .parameter "limit"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$800(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$800(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result p1

    .line 586
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$800(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #calls: Lcom/android/mms/ui/ClassifyGeneralFragment;->setMmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$900(Lcom/android/mms/ui/ClassifyGeneralFragment;)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$600(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$600(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    const v4, 0x7f0b008a

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$602(Lcom/android/mms/ui/ClassifyGeneralFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mMMSHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$1000(Lcom/android/mms/ui/ClassifyGeneralFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ClassifyGeneralFragment$5$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ClassifyGeneralFragment$5$1;-><init>(Lcom/android/mms/ui/ClassifyGeneralFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    return-void

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$800(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$5;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    #getter for: Lcom/android/mms/ui/ClassifyGeneralFragment;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/ClassifyGeneralFragment;->access$800(Lcom/android/mms/ui/ClassifyGeneralFragment;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result p1

    goto :goto_0
.end method
