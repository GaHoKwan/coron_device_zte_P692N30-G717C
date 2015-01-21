.class public Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;
.super Landroid/os/AsyncTask;
.source "MovieListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/MovieListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

.field final synthetic this$0:Lcom/mediatek/videoplayer/MovieListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/videoplayer/MovieListActivity;Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter "holder"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 416
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 430
    iget-object v2, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    .line 431
    .local v2, holder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;
    if-nez v2, :cond_0

    .line 432
    const-string v3, "MovieListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteTask.doInBackground holder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/videoplayer/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    return-object v7

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 436
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/videoplayer/MovieListActivity;->access$600()Landroid/net/Uri;

    move-result-object v4

    iget-wide v5, v2, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 440
    :goto_1
    const-string v3, "MovieListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteTask.doInBackground delete count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 411
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->hideDeleteProgress()V
    invoke-static {v0}, Lcom/mediatek/videoplayer/MovieListActivity;->access$500(Lcom/mediatek/videoplayer/MovieListActivity;)V

    .line 426
    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    iget-object v1, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->this$0:Lcom/mediatek/videoplayer/MovieListActivity;

    const v2, 0x7f090057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/videoplayer/MovieListActivity$DeleteTask;->mHolder:Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;

    iget-object v5, v5, Lcom/mediatek/videoplayer/MovieListActivity$ViewHolder;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/videoplayer/MovieListActivity;->showDeleteProgress(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MovieListActivity;->access$400(Lcom/mediatek/videoplayer/MovieListActivity;Ljava/lang/String;)V

    .line 421
    return-void
.end method
