.class Lcom/android/deskclock/AlarmKlaxon$4;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmKlaxon;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    .line 548
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 549
    const-string v0, "audio focus gain ..."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/android/deskclock/AlarmKlaxon;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 557
    :cond_2
    const-string v0, "audio focus loss ..."

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/android/deskclock/AlarmKlaxon;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$700(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$700(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/android/deskclock/AlarmKlaxon;->access$800(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$4;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$600(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method
