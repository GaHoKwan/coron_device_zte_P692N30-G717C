.class Lcom/android/soundrecorder/SoundRecorder$5;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 190
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$300(Lcom/android/soundrecorder/SoundRecorder;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 195
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$5;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z
    invoke-static {v1}, Lcom/android/soundrecorder/SoundRecorder;->access$300(Lcom/android/soundrecorder/SoundRecorder;)[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectEffectArrayTmp([Z)V

    .line 198
    :cond_0
    return-void
.end method
