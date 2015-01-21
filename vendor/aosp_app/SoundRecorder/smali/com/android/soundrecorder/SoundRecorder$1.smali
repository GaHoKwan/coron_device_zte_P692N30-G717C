.class Lcom/android/soundrecorder/SoundRecorder$1;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 148
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onServiceConnected> Service connected"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    check-cast p2, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;->getService()Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v1

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$002(Lcom/android/soundrecorder/SoundRecorder;Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService;

    .line 150
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->initWhenHaveService()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$100(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 151
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 155
    const-string v0, "SR/SoundRecorder"

    const-string v1, "<onServiceDisconnected> Service dis connected"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const/4 v1, 0x0

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$002(Lcom/android/soundrecorder/SoundRecorder;Lcom/android/soundrecorder/SoundRecorderService;)Lcom/android/soundrecorder/SoundRecorderService;

    .line 157
    return-void
.end method
