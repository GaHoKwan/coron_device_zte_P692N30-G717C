.class public Lcom/mediatek/gallery3d/video/BookmarkHooker;
.super Lcom/mediatek/gallery3d/video/MovieHooker;
.source "BookmarkHooker.java"


# static fields
.field private static final ACTION_BOOKMARK:Ljava/lang/String; = "com.mediatek.bookmark.VIEW"

.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field private static final LOG:Z = true

.field private static final MENU_BOOKMARK_ADD:I = 0x1

.field private static final MENU_BOOKMARK_DISPLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/BookmarkHooker"


# instance fields
.field private mMenuBookmarkAdd:Landroid/view/MenuItem;

.field private mMenuBookmarks:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;-><init>()V

    return-void
.end method

.method private gotoBookmark()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bookmark.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v1, 0x410

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v1, "logo-bitmap"

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "logo-bitmap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 25
    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c0214

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarkAdd:Landroid/view/MenuItem;

    .line 26
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuActivityId(I)I

    move-result v0

    const v1, 0x7f0c0215

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarks:Landroid/view/MenuItem;

    .line 27
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->getMenuOriginalId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getPlayer()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMoviePlayer;->addBookmark()V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/BookmarkHooker;->gotoBookmark()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 32
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/video/MovieHooker;->getMovieItem()Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarkAdd:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarkAdd:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarks:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarks:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 47
    :cond_1
    :goto_0
    return v2

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarkAdd:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarkAdd:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarks:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/BookmarkHooker;->mMenuBookmarks:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
