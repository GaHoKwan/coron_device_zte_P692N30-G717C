.class Lcom/android/musicfx/ActivityMusic$4;
.super Ljava/lang/Object;
.source "ActivityMusic.java"

# interfaces
.implements Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/musicfx/ActivityMusic;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/android/musicfx/seekbar/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$200(Lcom/android/musicfx/ActivityMusic;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/musicfx/ActivityMusic;->access$300(Lcom/android/musicfx/ActivityMusic;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mAudioSession:I
    invoke-static {v2}, Lcom/android/musicfx/ActivityMusic;->access$400(Lcom/android/musicfx/ActivityMusic;)I

    move-result v2

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 352
    return-void
.end method

.method public onStartTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/android/musicfx/seekbar/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$200(Lcom/android/musicfx/ActivityMusic;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/musicfx/ActivityMusic;->access$300(Lcom/android/musicfx/ActivityMusic;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mAudioSession:I
    invoke-static {v2}, Lcom/android/musicfx/ActivityMusic;->access$400(Lcom/android/musicfx/ActivityMusic;)I

    move-result v2

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/android/musicfx/seekbar/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/musicfx/ActivityMusic;->access$200(Lcom/android/musicfx/ActivityMusic;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/musicfx/ActivityMusic;->access$300(Lcom/android/musicfx/ActivityMusic;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic$4;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mAudioSession:I
    invoke-static {v2}, Lcom/android/musicfx/ActivityMusic;->access$400(Lcom/android/musicfx/ActivityMusic;)I

    move-result v2

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 371
    :cond_0
    return-void
.end method
