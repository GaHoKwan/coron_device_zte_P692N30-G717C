.class Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUpdateInfo:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V
    .locals 0
    .parameter
    .parameter "info"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 286
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10

    .prologue
    const-wide/16 v8, 0x2000

    const/4 v7, 0x0

    .line 292
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;

    move-result-object v4

    if-nez v4, :cond_0

    .line 321
    :goto_0
    return-object v7

    .line 293
    :cond_0
    const-string v4, ">>>>AlbumSetDataLoader-UpdateContent.run"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->mUpdateInfo:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 295
    .local v0, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-wide v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSourceVersion:J
    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$702(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)J

    .line 296
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v4

    iget v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-eq v4, v5, :cond_3

    .line 297
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$902(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I

    .line 298
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;->onSizeChanged(I)V

    .line 299
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$602(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSize:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$900(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    #setter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1102(Lcom/android/gallery3d/app/AlbumSetDataLoader;I)I

    .line 303
    :cond_3
    iget v4, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentStart:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    if-lt v4, v5, :cond_5

    iget v4, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mContentEnd:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 304
    iget v4, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    array-length v5, v5

    rem-int v3, v4, v5

    .line 305
    .local v3, pos:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSetVersion:[J
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v4

    iget-wide v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    aput-wide v5, v4, v3

    .line 306
    iget-object v4, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v1

    .line 307
    .local v1, itemVersion:J
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v4

    aget-wide v4, v4, v3

    cmp-long v4, v4, v1

    if-nez v4, :cond_4

    .line 308
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 311
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mItemVersion:[J
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1300(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[J

    move-result-object v4

    aput-wide v1, v4, v3

    .line 312
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mData:[Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1400(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    iget-object v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    aput-object v5, v4, v3

    .line 313
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mCoverItem:[Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1200(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    iget-object v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    aput-object v5, v4, v3

    .line 314
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mTotalCount:[I
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1500(Lcom/android/gallery3d/app/AlbumSetDataLoader;)[I

    move-result-object v4

    iget v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    aput v5, v4, v3

    .line 315
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveStart:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1600(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    if-lt v4, v5, :cond_5

    iget v4, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mActiveEnd:I
    invoke-static {v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 317
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1000(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;

    move-result-object v4

    iget v5, v0, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;->onContentChanged(I)V

    .line 320
    .end local v1           #itemVersion:J
    .end local v3           #pos:I
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0
.end method
