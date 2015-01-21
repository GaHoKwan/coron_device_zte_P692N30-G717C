.class Lcom/zte/engineer/AudioLoopTest$1;
.super Ljava/lang/Thread;
.source "AudioLoopTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/AudioLoopTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/AudioLoopTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/AudioLoopTest;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/engineer/AudioLoopTest$1;->this$0:Lcom/zte/engineer/AudioLoopTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest$1;->this$0:Lcom/zte/engineer/AudioLoopTest;

    #getter for: Lcom/zte/engineer/AudioLoopTest;->running:Z
    invoke-static {v0}, Lcom/zte/engineer/AudioLoopTest;->access$000(Lcom/zte/engineer/AudioLoopTest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest$1;->this$0:Lcom/zte/engineer/AudioLoopTest;

    #getter for: Lcom/zte/engineer/AudioLoopTest;->soundeffect:Z
    invoke-static {v0}, Lcom/zte/engineer/AudioLoopTest;->access$100(Lcom/zte/engineer/AudioLoopTest;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/AudioLoopTest$1;->this$0:Lcom/zte/engineer/AudioLoopTest;

    #getter for: Lcom/zte/engineer/AudioLoopTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/zte/engineer/AudioLoopTest;->access$200(Lcom/zte/engineer/AudioLoopTest;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "SET_LOOPBACK_TYPE=21"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 80
    :cond_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method
