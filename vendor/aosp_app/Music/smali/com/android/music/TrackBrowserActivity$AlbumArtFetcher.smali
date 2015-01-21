.class Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;
.super Landroid/os/AsyncTask;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArtFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2395
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "albumId"

    .prologue
    const/4 v5, 0x0

    .line 2398
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$2000(Lcom/android/music/TrackBrowserActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2399
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2400
    .local v3, id:J
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    const-wide/16 v1, -0x1

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    #setter for: Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v0}, Lcom/android/music/TrackBrowserActivity;->access$2002(Lcom/android/music/TrackBrowserActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2401
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumArtFetcher: getArtwork returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$2000(Lcom/android/music/TrackBrowserActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    .end local v3           #id:J
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/music/TouchInterceptor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/music/TouchInterceptor;->waitMeasureFinished(Z)V

    .line 2407
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$2000(Lcom/android/music/TrackBrowserActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2395
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->doInBackground([Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 2414
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mIsInBackgroud:Z
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$2100(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/music/MusicUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 2416
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 2419
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2395
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/TrackBrowserActivity$AlbumArtFetcher;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
