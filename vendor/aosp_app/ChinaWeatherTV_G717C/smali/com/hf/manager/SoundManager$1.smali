.class Lcom/hf/manager/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/manager/SoundManager;->playSound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/manager/SoundManager;


# direct methods
.method constructor <init>(Lcom/hf/manager/SoundManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/manager/SoundManager$1;->this$0:Lcom/hf/manager/SoundManager;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/hf/manager/SoundManager$1;->this$0:Lcom/hf/manager/SoundManager;

    #getter for: Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;
    invoke-static {v0}, Lcom/hf/manager/SoundManager;->access$0(Lcom/hf/manager/SoundManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/hf/manager/SoundManager$1;->this$0:Lcom/hf/manager/SoundManager;

    #getter for: Lcom/hf/manager/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/hf/manager/SoundManager;->access$1(Lcom/hf/manager/SoundManager;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lcom/hf/manager/SoundManager$1;->this$0:Lcom/hf/manager/SoundManager;

    #getter for: Lcom/hf/manager/SoundManager;->mKillSoundQueue:Ljava/util/Vector;
    invoke-static {v0}, Lcom/hf/manager/SoundManager;->access$0(Lcom/hf/manager/SoundManager;)Ljava/util/Vector;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 124
    :cond_0
    return-void
.end method
