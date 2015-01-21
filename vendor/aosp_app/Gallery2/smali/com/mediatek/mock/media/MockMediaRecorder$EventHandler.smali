.class Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;
.super Landroid/os/Handler;
.source "MockMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mock/media/MockMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private mMediaRecorder:Lcom/mediatek/mock/media/MockMediaRecorder;

.field final synthetic this$0:Lcom/mediatek/mock/media/MockMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/mediatek/mock/media/MockMediaRecorder;Lcom/mediatek/mock/media/MockMediaRecorder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mr"
    .parameter "looper"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    .line 573
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    iput-object p2, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->mMediaRecorder:Lcom/mediatek/mock/media/MockMediaRecorder;

    .line 575
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x7ce

    .line 593
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 594
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$300(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$300(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->mMediaRecorder:Lcom/mediatek/mock/media/MockMediaRecorder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;->onInfo(Lcom/mediatek/mock/media/MockMediaRecorder;II)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->mMediaRecorder:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mNativeContext:I
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$400(Lcom/mediatek/mock/media/MockMediaRecorder;)I

    move-result v0

    if-nez v0, :cond_2

    .line 599
    const-string v0, "MockMediaRecorder"

    const-string v1, "mediarecorder went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 602
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 619
    const-string v0, "MockMediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mOnErrorListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$500(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mOnErrorListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$500(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->mMediaRecorder:Lcom/mediatek/mock/media/MockMediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/mock/media/MockMediaRecorder$OnErrorListener;->onError(Lcom/mediatek/mock/media/MockMediaRecorder;II)V

    goto :goto_0

    .line 613
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$300(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mOnInfoListener:Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;
    invoke-static {v0}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$300(Lcom/mediatek/mock/media/MockMediaRecorder;)Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$EventHandler;->mMediaRecorder:Lcom/mediatek/mock/media/MockMediaRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/mock/media/MockMediaRecorder$OnInfoListener;->onInfo(Lcom/mediatek/mock/media/MockMediaRecorder;II)V

    goto :goto_0

    .line 602
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
