.class Lcom/mediatek/vlw/VideoChooser$1;
.super Landroid/os/AsyncTask;
.source "VideoChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoChooser;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoChooser;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/vlw/VideoChooser$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, index:I
    const/4 v0, 0x0

    .line 100
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 102
    .local v7, title:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mUris:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoChooser;->access$000(Lcom/mediatek/vlw/VideoChooser;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 103
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 136
    .end local v8           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v9, 0x0

    return-object v9

    .line 106
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v9, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mBookmarkItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/mediatek/vlw/VideoChooser;->access$100(Lcom/mediatek/vlw/VideoChooser;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/widget/BookmarkItem;

    .line 107
    .local v4, item:Lcom/mediatek/widget/BookmarkItem;
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 109
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    invoke-virtual {v5, v9, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 110
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    const/4 v9, 0x7

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    const-string v9, "VideoChooser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doInBackground: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bmp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", title: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz v0, :cond_2

    .line 115
    iget-object v9, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    iget-object v10, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mImgWidth:I
    invoke-static {v10}, Lcom/mediatek/vlw/VideoChooser;->access$200(Lcom/mediatek/vlw/VideoChooser;)I

    move-result v10

    iget-object v11, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mImgHeight:I
    invoke-static {v11}, Lcom/mediatek/vlw/VideoChooser;->access$300(Lcom/mediatek/vlw/VideoChooser;)I

    move-result v11

    #calls: Lcom/mediatek/vlw/VideoChooser;->createVideoThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v9, v0, v10, v11}, Lcom/mediatek/vlw/VideoChooser;->access$400(Lcom/mediatek/vlw/VideoChooser;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 117
    .local v6, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v6}, Lcom/mediatek/widget/BookmarkItem;->setContentBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v6           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 126
    :goto_1
    if-nez v7, :cond_3

    .line 127
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-virtual {v4, v7}, Lcom/mediatek/widget/BookmarkItem;->setTitleString(Ljava/lang/String;)V

    .line 130
    :cond_3
    if-nez v0, :cond_4

    if-eqz v7, :cond_5

    .line 131
    :cond_4
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 134
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 135
    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 121
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v9, "VideoChooser"

    const-string v10, "error: create video thumbnails failed"

    invoke-static {v9, v10, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v9

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/vlw/VideoChooser$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mBookmark:Lcom/mediatek/widget/BookmarkView;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoChooser;->access$800(Lcom/mediatek/vlw/VideoChooser;)Lcom/mediatek/widget/BookmarkView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/widget/BookmarkView;->getCoverFlow()Landroid/widget/BounceCoverFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mSelectedPos:I
    invoke-static {v1}, Lcom/mediatek/vlw/VideoChooser;->access$700(Lcom/mediatek/vlw/VideoChooser;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 149
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/mediatek/vlw/VideoChooser;->mThumbIndex:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoChooser;->access$502(Lcom/mediatek/vlw/VideoChooser;I)I

    .line 143
    iget-object v0, p0, Lcom/mediatek/vlw/VideoChooser$1;->this$0:Lcom/mediatek/vlw/VideoChooser;

    #getter for: Lcom/mediatek/vlw/VideoChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoChooser;->access$600(Lcom/mediatek/vlw/VideoChooser;)Lcom/mediatek/widget/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/vlw/VideoChooser$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
