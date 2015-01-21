.class public Lcom/mediatek/gallery3d/video/MovieListHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "MovieListHooker.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;


# static fields
.field private static final LOG:Z = true

.field private static final MENU_NEXT:I = 0x1

.field private static final MENU_PREVIOUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/MovieListHooker"


# instance fields
.field private mMenuNext:Landroid/view/MenuItem;

.field private mMenuPrevious:Landroid/view/MenuItem;

.field private mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

.field private mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private updatePrevNext()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    const-string v0, "Gallery2/VideoPlayer/MovieListHooker"

    const-string v1, "updatePrevNext()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuPrevious:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuNext:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IMovieList;->isFirst(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IMovieList;->isLast(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuPrevious:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IMovieList;->isFirst(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuPrevious:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IMovieList;->isLast(Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 106
    :cond_0
    :goto_2
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 93
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuPrevious:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuPrevious:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuNext:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/mediatek/gallery3d/ext/MovieListLoader;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/ext/MovieListLoader;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    .line 32
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/mediatek/gallery3d/ext/IMovieListLoader;->fillVideoList(Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 42
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/gallery3d/ext/IMovieListLoader;->isEnabledVideoList(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c022c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuPrevious:Landroid/view/MenuItem;

    .line 45
    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c022b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMenuNext:Landroid/view/MenuItem;

    .line 48
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieLoader:Lcom/mediatek/gallery3d/ext/IMovieListLoader;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieListLoader;->cancelList()V

    .line 38
    return-void
.end method

.method public onListLoaded(Lcom/mediatek/gallery3d/ext/IMovieList;)V
    .locals 3
    .parameter "movieList"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 113
    const-string v1, "Gallery2/VideoPlayer/MovieListHooker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListLoaded() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 113
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public onMovieItemChanged(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/video/MovieHooker;->onMovieItemChanged(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 80
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieListHooker;->updatePrevNext()V

    .line 81
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuOriginalId(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 61
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieList;->getPrevious(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/gallery3d/ext/IMoviePlayer;->startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/MovieListHooker;->mMovieList:Lcom/mediatek/gallery3d/ext/IMovieList;

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/gallery3d/ext/IMovieList;->getNext(Lcom/mediatek/gallery3d/ext/IMovieItem;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/gallery3d/ext/IMoviePlayer;->startNextVideo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    move v0, v1

    .line 71
    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 53
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieListHooker;->updatePrevNext()V

    .line 54
    const/4 v0, 0x1

    return v0
.end method
