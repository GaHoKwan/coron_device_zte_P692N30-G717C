.class Lcom/android/soundrecorder/SoundRecorderService$7;
.super Landroid/os/Handler;
.source "SoundRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorderService;->setCurrentFilePath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$7;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1267
    const-string v0, "SR/SoundRecorderService"

    const-string v1, "<mFileObserverHandler handleMessage> reset()"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$7;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Lcom/android/soundrecorder/SoundRecorderService;->reset()Z

    .line 1269
    return-void
.end method
