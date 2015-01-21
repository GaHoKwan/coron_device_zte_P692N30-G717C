.class Lcom/zte/engineer/SDcardTest$1;
.super Landroid/os/Handler;
.source "SDcardTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/SDcardTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/SDcardTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/SDcardTest;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/zte/engineer/SDcardTest$1;->this$0:Lcom/zte/engineer/SDcardTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest$1;->this$0:Lcom/zte/engineer/SDcardTest;

    #getter for: Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/zte/engineer/SDcardTest;->access$000(Lcom/zte/engineer/SDcardTest;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest$1;->this$0:Lcom/zte/engineer/SDcardTest;

    #getter for: Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/zte/engineer/SDcardTest;->access$000(Lcom/zte/engineer/SDcardTest;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest$1;->this$0:Lcom/zte/engineer/SDcardTest;

    #getter for: Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/zte/engineer/SDcardTest;->access$000(Lcom/zte/engineer/SDcardTest;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 236
    :cond_1
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest$1;->this$0:Lcom/zte/engineer/SDcardTest;

    #getter for: Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/zte/engineer/SDcardTest;->access$000(Lcom/zte/engineer/SDcardTest;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/zte/engineer/SDcardTest$1;->this$0:Lcom/zte/engineer/SDcardTest;

    #getter for: Lcom/zte/engineer/SDcardTest;->mRingManager:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/zte/engineer/SDcardTest;->access$000(Lcom/zte/engineer/SDcardTest;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
