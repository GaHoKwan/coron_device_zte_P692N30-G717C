.class Lcom/zte/engineer/ReciverTest$1;
.super Landroid/os/Handler;
.source "ReciverTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/ReciverTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/ReciverTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/ReciverTest;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$000(Lcom/zte/engineer/ReciverTest;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 63
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$100(Lcom/zte/engineer/ReciverTest;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 64
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$100(Lcom/zte/engineer/ReciverTest;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$100(Lcom/zte/engineer/ReciverTest;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$100(Lcom/zte/engineer/ReciverTest;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_1
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$100(Lcom/zte/engineer/ReciverTest;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 78
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$100(Lcom/zte/engineer/ReciverTest;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 79
    iget-object v1, p0, Lcom/zte/engineer/ReciverTest$1;->this$0:Lcom/zte/engineer/ReciverTest;

    #getter for: Lcom/zte/engineer/ReciverTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/zte/engineer/ReciverTest;->access$000(Lcom/zte/engineer/ReciverTest;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
