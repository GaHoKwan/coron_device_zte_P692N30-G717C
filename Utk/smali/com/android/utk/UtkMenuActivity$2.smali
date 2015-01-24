.class Lcom/android/utk/UtkMenuActivity$2;
.super Landroid/os/Handler;
.source "UtkMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utk/UtkMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/utk/UtkMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/utk/UtkMenuActivity$2;->this$0:Lcom/android/utk/UtkMenuActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity$2;->this$0:Lcom/android/utk/UtkMenuActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/utk/UtkMenuActivity;->mAcceptUsersInput:Z
    invoke-static {v0, v1}, Lcom/android/utk/UtkMenuActivity;->access$102(Lcom/android/utk/UtkMenuActivity;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/utk/UtkMenuActivity$2;->this$0:Lcom/android/utk/UtkMenuActivity;

    const/16 v1, 0x14

    #calls: Lcom/android/utk/UtkMenuActivity;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/utk/UtkMenuActivity;->access$200(Lcom/android/utk/UtkMenuActivity;I)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
