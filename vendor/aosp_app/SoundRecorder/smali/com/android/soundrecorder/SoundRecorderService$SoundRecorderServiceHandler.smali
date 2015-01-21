.class public Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;
.super Landroid/os/Handler;
.source "SoundRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundRecorderServiceHandler"
.end annotation


# static fields
.field public static final DISCARD_RECORD:I = 0x8

.field public static final GOON_PLAY:I = 0x5

.field public static final PAUSE_PLAY:I = 0x4

.field public static final PAUSE_REOCRD:I = 0x1

.field public static final SAVE_RECORD:I = 0x7

.field public static final START_PLAY:I = 0x3

.field public static final START_REOCRD:I = 0x0

.field public static final STOP_PLAY:I = 0x6

.field public static final STOP_REOCRD:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method public constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    .line 1495
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1496
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1510
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1541
    :goto_0
    return-void

    .line 1512
    :pswitch_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mParams:Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;
    invoke-static {v1}, Lcom/android/soundrecorder/SoundRecorderService;->access$1600(Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mFileSizeLimit:I
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorderService;->access$1700(Lcom/android/soundrecorder/SoundRecorderService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/soundrecorder/SoundRecorderService;->record(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)Z

    goto :goto_0

    .line 1515
    :pswitch_1
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->pauseRecord()Z

    goto :goto_0

    .line 1518
    :pswitch_2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopRecord()Z

    goto :goto_0

    .line 1521
    :pswitch_3
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->startPlayback()Z

    goto :goto_0

    .line 1524
    :pswitch_4
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->pausePlay()Z

    goto :goto_0

    .line 1527
    :pswitch_5
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->goonPlayback()Z

    goto :goto_0

    .line 1530
    :pswitch_6
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->stopPlay()Z

    goto :goto_0

    .line 1533
    :pswitch_7
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->saveRecord()Z

    goto :goto_0

    .line 1536
    :pswitch_8
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderServiceHandler;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->discardRecord()Z

    goto :goto_0

    .line 1510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
