.class public abstract Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
.super Ljava/lang/Object;
.source "AbstractVideoGenerator.java"


# static fields
.field protected static final DEFAULT_THUMBNAIL_SIZE:I = 0xe0

.field protected static final GENERATE_CANCEL:I = 0x1

.field protected static final GENERATE_ERROR:I = 0x2

.field protected static final GENERATE_OK:I = 0x0

.field public static final STATE_GENERATED:I = 0x2

.field public static final STATE_GENERATED_FAIL:I = 0x3

.field public static final STATE_GENERATING:I = 0x1

.field public static final STATE_NEED_GENERATE:I = 0x0

.field public static final VTYPE_SHARE:I = 0x1

.field public static final VTYPE_THUMB:I


# instance fields
.field public videoPath:[Ljava/lang/String;

.field public videoState:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    return-void

    .line 20
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public abstract generate(Lcom/android/gallery3d/data/LocalMediaItem;I)I
.end method

.method public abstract onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V
.end method

.method public prepareToRegenerate(Lcom/android/gallery3d/data/LocalMediaItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aput v3, v1, v4

    aput v3, v0, v3

    .line 73
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    aput-object v2, v0, v3

    .line 74
    invoke-static {p1, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->deleteThumbnailFile(Lcom/android/gallery3d/data/LocalMediaItem;I)Z

    .line 75
    invoke-static {p1, v4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->deleteThumbnailFile(Lcom/android/gallery3d/data/LocalMediaItem;I)Z

    .line 76
    return-void
.end method

.method protected shouldCancel()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method
