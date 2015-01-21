.class Lcom/android/mms/ui/ChatPreferenceActivity$2;
.super Landroid/os/Handler;
.source "ChatPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogUpdate:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$100(Lcom/android/mms/ui/ChatPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogUpdate:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$100(Lcom/android/mms/ui/ChatPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogSave:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$200(Lcom/android/mms/ui/ChatPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    #getter for: Lcom/android/mms/ui/ChatPreferenceActivity;->mChatDialogSave:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ChatPreferenceActivity;->access$200(Lcom/android/mms/ui/ChatPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 397
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$2;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
