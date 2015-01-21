.class Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;
.super Landroid/os/FileObserver;
.source "SoundRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingFileObserver"
.end annotation


# instance fields
.field private mHasSendMessage:Z

.field private mWatchingPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method public constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    .line 1229
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 1223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mWatchingPath:Ljava/lang/String;

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mHasSendMessage:Z

    .line 1230
    iput-object p2, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mWatchingPath:Ljava/lang/String;

    .line 1231
    return-void
.end method

.method public constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "mask"

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    .line 1234
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 1223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mWatchingPath:Ljava/lang/String;

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mHasSendMessage:Z

    .line 1235
    iput-object p2, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mWatchingPath:Ljava/lang/String;

    .line 1236
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "path"

    .prologue
    .line 1240
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<RecordingFileObserver.onEvent> event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mHasSendMessage:Z

    if-nez v0, :cond_1

    .line 1242
    const/16 v0, 0x400

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x800

    if-ne v0, p1, :cond_1

    .line 1244
    :cond_0
    const-string v0, "SR/SoundRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<RecordingFileObserver.onEvent> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mWatchingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been deleted/renamed/moved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #getter for: Lcom/android/soundrecorder/SoundRecorderService;->mFileObserverHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorderService;->access$1500(Lcom/android/soundrecorder/SoundRecorderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorderService$RecordingFileObserver;->mHasSendMessage:Z

    .line 1250
    :cond_1
    return-void
.end method
