.class Lcom/android/deskclock/AlarmKlaxon$3;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmKlaxon;->play(Lcom/android/deskclock/Alarm;)V
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
    .line 403
    iput-object p1, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 405
    const-string v0, "Error occurred while playing audio."

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 407
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 408
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmKlaxon;->access$602(Lcom/android/deskclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 410
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$700(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/deskclock/AlarmKlaxon;->access$700(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/AlarmKlaxon$3;->this$0:Lcom/android/deskclock/AlarmKlaxon;

    #getter for: Lcom/android/deskclock/AlarmKlaxon;->audioListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/android/deskclock/AlarmKlaxon;->access$800(Lcom/android/deskclock/AlarmKlaxon;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 414
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
