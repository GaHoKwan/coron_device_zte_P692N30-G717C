.class Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$2;
.super Landroid/os/Handler;
.source "WifiOppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 220
    :pswitch_0
    const-string v0, "WifiIncomingFileConfirmActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppIncomingFileConfirmActivity;->finish()V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
