.class Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$2;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initSoundRecord(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$2;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$2;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #calls: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updateTimeTextView()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$1(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V

    .line 100
    return-void
.end method
