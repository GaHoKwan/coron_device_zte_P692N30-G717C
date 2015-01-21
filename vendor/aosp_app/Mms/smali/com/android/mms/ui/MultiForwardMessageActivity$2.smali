.class Lcom/android/mms/ui/MultiForwardMessageActivity$2;
.super Landroid/os/Handler;
.source "MultiForwardMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$2;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 366
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$2;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$500(Lcom/android/mms/ui/MultiForwardMessageActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 372
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$2;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const/4 v4, -0x1

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$600(Lcom/android/mms/ui/MultiForwardMessageActivity;I)V

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 378
    .local v1, errorData:Landroid/os/Bundle;
    const-string v3, "ErrorDialogTitle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, title:Ljava/lang/String;
    const-string v3, "ErrorDialogMsg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, dlgMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$2;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$700(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
