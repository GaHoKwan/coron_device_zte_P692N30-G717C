.class Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;
.super Landroid/os/Handler;
.source "ContactDeletionInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/ContactDeletionInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressHandler"
.end annotation


# instance fields
.field final mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;


# direct methods
.method private constructor <init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;)V
    .locals 2
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 478
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    #getter for: Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->access$200(Lcom/android/contacts/interactions/ContactDeletionInteraction;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->mDialog:Landroid/app/ProgressDialog;

    .line 477
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Lcom/android/contacts/interactions/ContactDeletionInteraction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;)V

    return-void
.end method


# virtual methods
.method public cancelProgressDialogIfNeeded()V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    const-string v0, "deleteContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment not added, ignore the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 496
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->this$0:Lcom/android/contacts/interactions/ContactDeletionInteraction;

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction$ProgressHandler;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
