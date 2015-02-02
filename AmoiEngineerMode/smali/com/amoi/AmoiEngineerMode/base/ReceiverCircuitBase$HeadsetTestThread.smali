.class public Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;
.super Ljava/lang/Thread;
.source "ReceiverCircuitBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeadsetTestThread"
.end annotation


# static fields
.field private static final SAMPLE_RATE:I = 0x1f40


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;


# direct methods
.method protected constructor <init>(Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x1f40

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 152
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    iput-boolean v1, v4, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->isTesting:Z

    .line 153
    const/16 v4, -0x13

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 156
    invoke-static {v2, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 159
    .local v5, bufferSize:I
    add-int/lit16 v5, v5, 0x2800

    .line 160
    new-instance v0, Landroid/media/AudioRecord;

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 163
    .local v0, record:Landroid/media/AudioRecord;
    new-instance v6, Landroid/media/AudioTrack;

    move v8, v2

    move v9, v3

    move v10, v3

    move v11, v5

    move v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 168
    .local v6, track:Landroid/media/AudioTrack;
    invoke-virtual {v6, v2}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 169
    new-array v13, v5, [B

    .line 170
    .local v13, buffer:[B
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 172
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 173
    const/4 v0, 0x0

    .line 174
    new-instance v0, Landroid/media/AudioRecord;

    .end local v0           #record:Landroid/media/AudioRecord;
    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 178
    .restart local v0       #record:Landroid/media/AudioRecord;
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 179
    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase$HeadsetTestThread;->this$0:Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;

    iget-boolean v1, v1, Lcom/amoi/AmoiEngineerMode/base/ReceiverCircuitBase;->isTesting:Z

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0, v13, v7, v5}, Landroid/media/AudioRecord;->read([BII)I

    .line 182
    array-length v1, v13

    invoke-virtual {v6, v13, v7, v1}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 187
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 188
    const/4 v0, 0x0

    .line 190
    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    .line 191
    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    .line 192
    const/4 v6, 0x0

    .line 193
    return-void
.end method
