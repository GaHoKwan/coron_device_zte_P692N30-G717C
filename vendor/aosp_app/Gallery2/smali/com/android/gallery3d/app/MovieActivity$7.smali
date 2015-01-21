.class Lcom/android/gallery3d/app/MovieActivity$7;
.super Landroid/os/AsyncTask;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieActivity;->enhanceActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieActivity;

.field final synthetic val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field final synthetic val$scheme:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Ljava/lang/String;Landroid/net/Uri;Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iput-object p2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$scheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 653
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mVideoTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$800(Lcom/android/gallery3d/app/MovieActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mVideoTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$800(Lcom/android/gallery3d/app/MovieActivity;)Ljava/lang/String;

    move-result-object v0

    .line 660
    const-string v2, "Gallery2/MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enhanceActionBar() task return mVideoTitle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 683
    .end local v0           #title:Ljava/lang/String;
    .local v1, title:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 666
    .end local v1           #title:Ljava/lang/String;
    .restart local v0       #title:Ljava/lang/String;
    :cond_0
    const-string v2, "file"

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromMediaData(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 669
    if-nez v0, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_1
    :goto_1
    const-string v2, "Gallery2/MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enhanceActionBar() task return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 683
    .end local v0           #title:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0

    .line 672
    .end local v1           #title:Ljava/lang/String;
    .restart local v0       #title:Ljava/lang/String;
    :cond_2
    const-string v2, "content"

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 673
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 674
    if-nez v0, :cond_1

    .line 675
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromData(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 678
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/mediatek/gallery3d/video/MovieTitleHelper;->getTitleFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 653
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieActivity$7;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 688
    const-string v0, "Gallery2/MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") movieItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMovieItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieActivity;->access$900(Lcom/android/gallery3d/app/MovieActivity;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setTitle(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$7;->val$movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    #getter for: Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieActivity;->access$900(Lcom/android/gallery3d/app/MovieActivity;)Lcom/mediatek/gallery3d/ext/IMovieItem;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity$7;->this$0:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 694
    :cond_0
    return-void
.end method
