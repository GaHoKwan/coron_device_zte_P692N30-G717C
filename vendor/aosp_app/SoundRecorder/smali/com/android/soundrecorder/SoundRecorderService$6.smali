.class Lcom/android/soundrecorder/SoundRecorderService$6;
.super Landroid/content/BroadcastReceiver;
.source "SoundRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorderService;->registerBroadcastReceivcer()V
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
    .line 1068
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$6;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$6;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    #calls: Lcom/android/soundrecorder/SoundRecorderService;->receiveBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/soundrecorder/SoundRecorderService;->access$1400(Lcom/android/soundrecorder/SoundRecorderService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 1072
    return-void
.end method
