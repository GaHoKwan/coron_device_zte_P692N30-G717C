.class Lcom/android/soundrecorder/OnScreenHint$1;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/OnScreenHint;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/soundrecorder/OnScreenHint$1;->this$0:Lcom/android/soundrecorder/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint$1;->this$0:Lcom/android/soundrecorder/OnScreenHint;

    #calls: Lcom/android/soundrecorder/OnScreenHint;->handleShow()V
    invoke-static {v0}, Lcom/android/soundrecorder/OnScreenHint;->access$000(Lcom/android/soundrecorder/OnScreenHint;)V

    .line 89
    return-void
.end method
