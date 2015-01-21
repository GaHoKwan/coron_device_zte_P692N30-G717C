.class Lcom/android/soundrecorder/SoundRecorderService$2;
.super Ljava/lang/Object;
.source "SoundRecorderService.java"

# interfaces
.implements Lcom/android/soundrecorder/SoundRecorderService$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorderService;->setAllListenerSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$2;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$2;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/soundrecorder/ErrorHandle;->showErrorInfoInToast(Landroid/content/Context;I)V

    .line 403
    return-void
.end method
