.class Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;
.super Ljava/lang/Object;
.source "MovieDrmExtensionImpl.java"

# interfaces
.implements Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;

.field final synthetic val$callback:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/mediatek/gallery3d/ext/IMovieItem;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->this$0:Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;

    iput-object p2, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$item:Lcom/mediatek/gallery3d/ext/IMovieItem;

    iput-object p4, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$callback:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperated(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 29
    const-string v0, "Gallery2/VideoPlayer/MovieDrmExtensionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$item:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->consume(Landroid/content/Context;Landroid/net/Uri;I)I
    invoke-static {v0, v1, v2}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->access$000(Landroid/content/Context;Landroid/net/Uri;I)I

    .line 34
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$callback:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$callback:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;->onContinue()V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$callback:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;->val$callback:Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;->onStop()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
