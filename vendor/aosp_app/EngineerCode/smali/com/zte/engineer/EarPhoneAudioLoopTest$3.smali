.class Lcom/zte/engineer/EarPhoneAudioLoopTest$3;
.super Ljava/lang/Thread;
.source "EarPhoneAudioLoopTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/EarPhoneAudioLoopTest;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/EarPhoneAudioLoopTest;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$3;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$3;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    #getter for: Lcom/zte/engineer/EarPhoneAudioLoopTest;->running:Z
    invoke-static {v0}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->access$200(Lcom/zte/engineer/EarPhoneAudioLoopTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$3;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    #getter for: Lcom/zte/engineer/EarPhoneAudioLoopTest;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/zte/engineer/EarPhoneAudioLoopTest;->access$000(Lcom/zte/engineer/EarPhoneAudioLoopTest;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "SET_LOOPBACK_TYPE=22"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method
