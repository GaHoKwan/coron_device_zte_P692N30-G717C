.class Lcom/android/utk/ToneDialog$1;
.super Landroid/os/Handler;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/ToneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/android/utk/ToneDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/utk/ToneDialog$1;->this$0:Lcom/android/utk/ToneDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/utk/ToneDialog$1;->this$0:Lcom/android/utk/ToneDialog;

    const/16 v1, 0xe

    #calls: Lcom/android/utk/ToneDialog;->sendResponse(I)V
    invoke-static {v0, v1}, Lcom/android/utk/ToneDialog;->access$000(Lcom/android/utk/ToneDialog;I)V

    .line 53
    iget-object v0, p0, Lcom/android/utk/ToneDialog$1;->this$0:Lcom/android/utk/ToneDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0xda
        :pswitch_0
    .end packed-switch
.end method
