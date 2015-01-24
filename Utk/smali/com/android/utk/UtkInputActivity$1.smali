.class Lcom/android/utk/UtkInputActivity$1;
.super Landroid/os/Handler;
.source "UtkInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utk/UtkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/utk/UtkInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/utk/UtkInputActivity$1;->this$0:Lcom/android/utk/UtkInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/utk/UtkInputActivity$1;->this$0:Lcom/android/utk/UtkInputActivity;

    const/16 v1, 0x14

    #calls: Lcom/android/utk/UtkInputActivity;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/utk/UtkInputActivity;->access$000(Lcom/android/utk/UtkInputActivity;I)V

    .line 80
    iget-object v0, p0, Lcom/android/utk/UtkInputActivity$1;->this$0:Lcom/android/utk/UtkInputActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
