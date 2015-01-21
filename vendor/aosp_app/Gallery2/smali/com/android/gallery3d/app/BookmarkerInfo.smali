.class Lcom/android/gallery3d/app/BookmarkerInfo;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# instance fields
.field public final mBookmark:I

.field public final mDuration:I

.field public mSelcetAudioTrackIdxBmk:I

.field public mSelectAudioIndexBmk:I

.field public mSelectSubTitleIndexBmk:I

.field public mSelectSubTitleTrackIdxBmk:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "bookmark"
    .parameter "duration"

    .prologue
    .line 2485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    iput p1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    .line 2487
    iput p2, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mDuration:I

    .line 2488
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "bookmark"
    .parameter "duration"
    .parameter "audioIdx"
    .parameter "subtitleIdx"
    .parameter "audioDlgListIdx"
    .parameter "subtitleDlgListIdx"

    .prologue
    .line 2492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2493
    iput p1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    .line 2494
    iput p2, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mDuration:I

    .line 2495
    iput p3, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mSelcetAudioTrackIdxBmk:I

    .line 2496
    iput p5, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mSelectAudioIndexBmk:I

    .line 2497
    iput p4, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mSelectSubTitleTrackIdxBmk:I

    .line 2498
    iput p6, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mSelectSubTitleIndexBmk:I

    .line 2499
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookmarkInfo(bookmark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mBookmark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/BookmarkerInfo;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
