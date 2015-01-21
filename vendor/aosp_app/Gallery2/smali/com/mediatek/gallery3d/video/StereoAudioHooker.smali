.class public Lcom/mediatek/gallery3d/video/StereoAudioHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "StereoAudioHooker.java"


# static fields
.field private static final KEY_STEREO:Ljava/lang/String; = "EnableStereoOutput"

.field private static final LOG:Z = true

.field private static final MENU_STEREO_AUDIO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/StereoAudioHooker"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentStereoAudio:Z

.field private mIsInitedStereoAudio:Z

.field private mMenuStereoAudio:Landroid/view/MenuItem;

.field private mSystemStereoAudio:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private enableStereoAudio()V
    .locals 3

    .prologue
    .line 100
    const-string v0, "Gallery2/VideoPlayer/StereoAudioHooker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableStereoAudio() mIsInitedStereoAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mIsInitedStereoAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentStereoAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->getStereoAudio()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mSystemStereoAudio:Z

    .line 104
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mIsInitedStereoAudio:Z

    if-nez v0, :cond_0

    .line 105
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mSystemStereoAudio:Z

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mIsInitedStereoAudio:Z

    .line 112
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->updateStereoAudioIcon()V

    .line 113
    return-void

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->setStereoAudio(Z)V

    goto :goto_0
.end method

.method private getStereoAudio()Z
    .locals 6

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, isstereo:Z
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "EnableStereoOutput"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, stereo:Ljava/lang/String;
    const-string v1, "EnableStereoOutput=1"

    .line 66
    .local v1, key:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "EnableStereoOutput=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_0
    const-string v3, "Gallery2/VideoPlayer/StereoAudioHooker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStereoAudio() isstereo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stereo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EnableStereoOutput=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreStereoAudio()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mSystemStereoAudio:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->setStereoAudio(Z)V

    .line 117
    return-void
.end method

.method private setStereoAudio(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnableStereoOutput="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 84
    const-string v1, "Gallery2/VideoPlayer/StereoAudioHooker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStereoAudio("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 78
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private updateStereoAudioIcon()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mMenuStereoAudio:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mMenuStereoAudio:Landroid/view/MenuItem;

    const v1, 0x7f0c0228

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mMenuStereoAudio:Landroid/view/MenuItem;

    const v1, 0x7f0c0227

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 37
    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c0228

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mMenuStereoAudio:Landroid/view/MenuItem;

    .line 38
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuOriginalId(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 55
    :goto_0
    return v1

    .line 51
    :pswitch_0
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->mCurrentStereoAudio:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->setStereoAudio(Z)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 43
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->updateStereoAudioIcon()V

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onStart()V

    .line 27
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->enableStereoAudio()V

    .line 28
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onStop()V

    .line 32
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/StereoAudioHooker;->restoreStereoAudio()V

    .line 33
    return-void
.end method
