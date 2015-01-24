.class Lcom/android/utk/UtkDialogActivity$1;
.super Landroid/os/Handler;
.source "UtkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utk/UtkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/utk/UtkDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/utk/UtkDialogActivity$1;->this$0:Lcom/android/utk/UtkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/android/utk/UtkDialogActivity$1;->this$0:Lcom/android/utk/UtkDialogActivity;

    iget-object v0, v0, Lcom/android/utk/UtkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    if-nez v0, :cond_0

    .line 54
    const-string v0, "handleMessage user clear false"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/utk/UtkDialogActivity$1;->this$0:Lcom/android/utk/UtkDialogActivity;

    const/16 v1, 0xd

    #calls: Lcom/android/utk/UtkDialogActivity;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/utk/UtkDialogActivity;->access$000(Lcom/android/utk/UtkDialogActivity;I)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/utk/UtkDialogActivity$1;->this$0:Lcom/android/utk/UtkDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
