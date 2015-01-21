.class public Lcom/mediatek/gallery3d/video/LoopVideoHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "LoopVideoHooker.java"


# static fields
.field private static final LOG:Z = true

.field private static final MENU_LOOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/LoopVideoHooker"


# instance fields
.field private mMenuLoopButton:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private updateLoop()V
    .locals 4

    .prologue
    .line 45
    const-string v1, "Gallery2/VideoPlayer/LoopVideoHooker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLoop() mLoopButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMoviePlayer;->getLoop()Z

    move-result v0

    .line 54
    .local v0, newLoop:Z
    if-eqz v0, :cond_2

    .line 55
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    const v2, 0x7f0c01f1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 56
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    const v2, 0x7f0200ea

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 62
    .end local v0           #newLoop:Z
    :cond_0
    :goto_1
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 58
    .restart local v0       #newLoop:Z
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    const v2, 0x7f0c01f0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 59
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    const v2, 0x7f0200db

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 21
    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c01f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->mMenuLoopButton:Landroid/view/MenuItem;

    .line 22
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuOriginalId(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 39
    :goto_0
    return v1

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMoviePlayer;->getLoop()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v0}, Lcom/mediatek/gallery3d/ext/IMoviePlayer;->setLoop(Z)V

    .line 36
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->updateLoop()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 27
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/LoopVideoHooker;->updateLoop()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
