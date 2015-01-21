.class public Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;
.super Landroid/os/Binder;
.source "SoundRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundRecorderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorderService;


# direct methods
.method public constructor <init>(Lcom/android/soundrecorder/SoundRecorderService;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/soundrecorder/SoundRecorderService;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorderService$SoundRecorderBinder;->this$0:Lcom/android/soundrecorder/SoundRecorderService;

    return-object v0
.end method
