.class Lcom/android/soundrecorder/SoundRecorder$4;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 178
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArrayTemp:[Z
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$300(Lcom/android/soundrecorder/SoundRecorder;)[Z

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z
    invoke-static {v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->access$202(Lcom/android/soundrecorder/SoundRecorder;[Z)[Z

    .line 183
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mSelectEffectArray:[Z
    invoke-static {v1}, Lcom/android/soundrecorder/SoundRecorder;->access$200(Lcom/android/soundrecorder/SoundRecorder;)[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorderService;->setSelectEffectArray([Z)V

    .line 186
    :cond_0
    return-void
.end method
