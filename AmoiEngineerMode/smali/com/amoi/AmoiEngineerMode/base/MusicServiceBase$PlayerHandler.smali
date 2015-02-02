.class final Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;
.super Landroid/os/Handler;
.source "MusicServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;

    .line 173
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 174
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 182
    :pswitch_0
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase$PlayerHandler;->this$0:Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;

    iget-object v1, v1, Lcom/amoi/AmoiEngineerMode/base/MusicServiceBase;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "EngineerMode"

    const-string v2, "MusicServiceBaseerror to pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
