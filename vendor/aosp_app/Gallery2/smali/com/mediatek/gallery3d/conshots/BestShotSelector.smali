.class public Lcom/mediatek/gallery3d/conshots/BestShotSelector;
.super Ljava/lang/Object;
.source "BestShotSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByGrayPercent;,
        Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByFocusValue;,
        Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    }
.end annotation


# static fields
.field private static final CLEAR_THRESOLD:F = 0.2f

.field private static final HIGH_END:I = 0xff

.field private static final HIGH_START:I = 0xcd

.field private static final LOW_END:I = 0x32

.field private static final LOW_START:I = 0x0

.field private static final MSG_BEST_SHOT_DONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/BestShotSelector"

.field private static final WAIT_FIRST_CREST:I = 0x1

.field private static final WAIT_FIRST_TROUGH:I = 0x2

.field private static final WAIT_SECOND_CREST:I = 0x3

.field private static final WAIT_SECOND_TROUGH:I = 0x4


# instance fields
.field private mBestShotNum:I

.field private mEntryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveCrestCount:I

.field private mWaveTroughCount:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    .line 34
    iput-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mMediaItemList:Ljava/util/ArrayList;

    .line 35
    iput v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mBestShotNum:I

    .line 36
    iput v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    .line 37
    iput v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveTroughCount:I

    .line 40
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mMediaItemList:Ljava/util/ArrayList;

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mMediaItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 44
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const-string v3, "Gallery2/BestShotSelector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<BestShotSelector> index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", focusValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getFocusValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    invoke-direct {v4, p0, v1, v0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;-><init>(Lcom/mediatek/gallery3d/conshots/BestShotSelector;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->isFocusValLegal()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->replaceFocuseValByFileSize()V

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mBestShotNum:I

    .line 54
    iget v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mBestShotNum:I

    if-le v3, v2, :cond_2

    iget v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mBestShotNum:I

    :cond_2
    iput v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mBestShotNum:I

    .line 55
    const-string v2, "Gallery2/BestShotSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<BestShotSelector.init> mBestShotNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mBestShotNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private isFocusValLegal()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 306
    :goto_0
    return v3

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget-object v2, v3, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    .line 302
    .local v2, prevFocuseVal:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 303
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 304
    .local v0, entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v3, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 302
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    :cond_3
    move v3, v4

    .line 306
    goto :goto_0
.end method

.method private markWaveCrest()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    const/4 v2, 0x0

    .line 72
    .local v2, nextEntry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    const/4 v3, 0x0

    .line 74
    .local v3, prevEntry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget-object v5, v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget-object v4, v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 75
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iput v7, v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 76
    const-string v4, "Gallery2/BestShotSelector"

    const-string v5, "<markWaveCrest> mark 0 as crest"

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget-object v5, v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget-object v4, v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 81
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iput v7, v4, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 82
    const-string v4, "Gallery2/BestShotSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<markWaveCrest> mark "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as crest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    .line 85
    :cond_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 86
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    check-cast v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 87
    .restart local v0       #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #nextEntry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    check-cast v2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 88
    .restart local v2       #nextEntry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #prevEntry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    check-cast v3, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 89
    .restart local v3       #prevEntry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v4, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    iget-object v5, v2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ne v4, v7, :cond_2

    iget-object v4, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    iget-object v5, v3, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 91
    iput v7, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 92
    const-string v4, "Gallery2/BestShotSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<markWaveCrest> mark "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as crest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    .line 85
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_3
    return-void
.end method

.method private markWaveTrough()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, trough:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget v2, v2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    iput v5, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 104
    const-string v2, "Gallery2/BestShotSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<markWaveCrest> mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as through"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    .line 106
    iget v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveTroughCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveTroughCount:I

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    iget-object v2, v2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #trough:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    check-cast v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .restart local v1       #trough:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    goto :goto_1

    .line 113
    :cond_3
    if-eqz v1, :cond_4

    .line 114
    iput v5, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 115
    const-string v2, "Gallery2/BestShotSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<markWaveCrest> mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as through"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveTroughCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveTroughCount:I

    .line 118
    :cond_4
    return-void
.end method

.method private mergeWaveCrest()V
    .locals 22

    .prologue
    .line 121
    const/4 v8, 0x0

    .line 122
    .local v8, fvList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    const/4 v9, 0x0

    .line 123
    .local v9, fvList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    const/4 v7, 0x0

    .line 125
    .local v7, fvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 126
    .local v3, average1:Ljava/math/BigInteger;
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 127
    .local v4, average2:Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 129
    .local v2, average:Ljava/math/BigInteger;
    const/16 v18, 0x1

    .line 130
    .local v18, state:I
    const/4 v6, -0x1

    .line 131
    .local v6, firstCrest:I
    const/16 v17, -0x1

    .line 132
    .local v17, secondCrest:I
    const/4 v11, 0x0

    .line 133
    .local v11, fvlist1Start:I
    const/4 v10, 0x0

    .line 134
    .local v10, fvlist1End:I
    const/4 v13, 0x0

    .line 135
    .local v13, fvlist2Start:I
    const/4 v12, 0x0

    .line 136
    .local v12, fvlist2End:I
    const/4 v15, 0x0

    .line 137
    .local v15, fvlistStart:I
    const/4 v14, 0x0

    .line 139
    .local v14, fvlistEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_20

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 140
    .local v5, entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    const-string v19, "Gallery2/BestShotSelector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<markBestShot> current index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    :cond_0
    const/16 v19, 0x1

    :goto_1
    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 142
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    :cond_1
    const/16 v19, 0x1

    :goto_2
    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 143
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    :cond_2
    const/16 v19, 0x1

    :goto_3
    invoke-static/range {v19 .. v19}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 144
    if-nez v7, :cond_3

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #fvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .restart local v7       #fvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    :cond_3
    if-nez v8, :cond_4

    .line 148
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #fvList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .restart local v8       #fvList1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    :cond_4
    if-nez v9, :cond_5

    .line 151
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #fvList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .restart local v9       #fvList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    :cond_5
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 154
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 155
    iget v6, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 156
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 158
    iget v11, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 171
    :goto_4
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 173
    iget v15, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 177
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 141
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 142
    :cond_7
    const/16 v19, 0x0

    goto :goto_2

    .line 143
    :cond_8
    const/16 v19, 0x0

    goto :goto_3

    .line 160
    :cond_9
    iget v10, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_4

    .line 163
    :cond_a
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    move/from16 v17, v0

    .line 164
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 166
    iget v13, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_4

    .line 168
    :cond_b
    iget v12, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_4

    .line 175
    :cond_c
    iget v14, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_5

    .line 178
    :cond_d
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    .line 179
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 181
    iget v15, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 185
    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 186
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 189
    iget v15, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 193
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 194
    iget v11, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto/16 :goto_0

    .line 183
    :cond_e
    iget v14, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_6

    .line 191
    :cond_f
    iget v14, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_7

    .line 196
    :cond_10
    iget v10, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto/16 :goto_0

    .line 198
    :cond_11
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 199
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 201
    iget v11, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 205
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->getVariance(Ljava/util/ArrayList;)Ljava/math/BigInteger;

    move-result-object v3

    .line 206
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 203
    :cond_12
    iget v10, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_8

    .line 208
    :cond_13
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 210
    iget v13, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 214
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->getVariance(Ljava/util/ArrayList;)Ljava/math/BigInteger;

    move-result-object v4

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->getVariance(Ljava/util/ArrayList;)Ljava/math/BigInteger;

    move-result-object v2

    .line 216
    const-string v19, "Gallery2/BestShotSelector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<mergeWaveCrest> index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",start = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", end = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", average = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v19, "Gallery2/BestShotSelector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<mergeWaveCrest> index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",start = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", end = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", average = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v19, "Gallery2/BestShotSelector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<mergeWaveCrest> index above, start = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", end = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", average = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-ltz v19, :cond_14

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-gez v19, :cond_17

    .line 223
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-gez v19, :cond_16

    .line 225
    const-string v19, "Gallery2/BestShotSelector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<mergeWaveCrest> set index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " as WAVE_NORMAL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    .line 231
    :goto_a
    const/4 v8, 0x0

    .line 232
    const/4 v9, 0x0

    .line 233
    const/4 v7, 0x0

    .line 234
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 235
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 236
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 237
    const/16 v18, 0x1

    .line 238
    const/4 v6, -0x1

    .line 239
    const/16 v17, -0x1

    .line 240
    const/4 v11, 0x0

    .line 241
    const/4 v10, 0x0

    .line 242
    const/4 v13, 0x0

    .line 243
    const/4 v12, 0x0

    .line 244
    const/4 v15, 0x0

    .line 245
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 212
    :cond_15
    iget v12, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto/16 :goto_9

    .line 228
    :cond_16
    const-string v19, "Gallery2/BestShotSelector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<mergeWaveCrest> set index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " as WAVE_NORMAL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    goto :goto_a

    .line 247
    :cond_17
    move-object v8, v9

    .line 248
    const/4 v9, 0x0

    .line 249
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #fvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .restart local v7       #fvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    move-object v3, v4

    .line 251
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 252
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 253
    const/16 v18, 0x3

    .line 254
    move/from16 v6, v17

    .line 255
    const/16 v17, -0x1

    .line 256
    move v11, v13

    .line 257
    move v10, v12

    .line 258
    const/4 v13, 0x0

    .line 259
    const/4 v12, 0x0

    .line 260
    move v15, v11

    .line 261
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 265
    :cond_18
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_19

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 266
    :cond_19
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 268
    iget v11, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    .line 280
    :cond_1a
    :goto_b
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    .line 282
    iget v15, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto/16 :goto_0

    .line 270
    :cond_1b
    iget v10, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_b

    .line 272
    :cond_1c
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 273
    :cond_1d
    iget-object v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 275
    iget v13, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_b

    .line 277
    :cond_1e
    iget v12, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto :goto_b

    .line 284
    :cond_1f
    iget v14, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mIndex:I

    goto/16 :goto_0

    .line 288
    .end local v5           #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    :cond_20
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 290
    .restart local v5       #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_21

    .line 291
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    goto :goto_c

    .line 293
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mWaveCrestCount:I

    goto :goto_c

    .line 296
    .end local v5           #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->markWaveTrough()V

    .line 297
    return-void
.end method

.method private replaceFocuseValByFileSize()V
    .locals 4

    .prologue
    .line 311
    const-string v2, "Gallery2/BestShotSelector"

    const-string v3, "replayFocuseValByFileSize"

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 318
    :cond_0
    return-void

    .line 314
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 316
    .local v0, entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v2, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFileSize:Ljava/math/BigInteger;

    iput-object v2, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAverage(Ljava/util/ArrayList;)Ljava/math/BigInteger;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 407
    .local v2, sum:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 408
    .local v0, i:Ljava/math/BigInteger;
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    .line 410
    .end local v0           #i:Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public getGrayPercent(Landroid/graphics/Bitmap;IIII)F
    .locals 18
    .parameter "bitmap"
    .parameter "lowstart"
    .parameter "lowend"
    .parameter "highstart"
    .parameter "highend"

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    const-string v1, "Gallery2/BestShotSelector"

    const-string v3, "<getGrayPercent> bitmap = null, return 0.0"

    invoke-static {v1, v3}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, 0x0

    .line 392
    :goto_0
    return v1

    .line 370
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    new-array v2, v1, [I

    .line 371
    .local v2, pixelsData:[I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    new-array v11, v1, [I

    .line 372
    .local v11, dumpBitmap:[I
    const/16 v17, 0x0

    .line 373
    .local v17, temp:I
    const/4 v14, 0x0

    .line 374
    .local v14, grayCount:I
    const/4 v13, 0x0

    .line 375
    .local v13, gray:I
    const/16 v16, 0x0

    .line 376
    .local v16, r:I
    const/4 v12, 0x0

    .line 377
    .local v12, g:I
    const/4 v9, 0x0

    .line 378
    .local v9, b:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    .line 379
    .local v10, config:Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v10, v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 380
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 383
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    array-length v1, v2

    if-ge v15, v1, :cond_5

    .line 384
    aget v1, v2, v15

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 385
    aget v1, v2, v15

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v12, v1, 0xff

    .line 386
    aget v1, v2, v15

    and-int/lit16 v9, v1, 0xff

    .line 387
    move/from16 v0, v16

    int-to-float v1, v0

    const v3, 0x3e99999a

    mul-float/2addr v1, v3

    int-to-float v3, v12

    const v4, 0x3f170a3d

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    int-to-float v3, v9

    const v4, 0x3de147ae

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 388
    move/from16 v0, p2

    if-lt v13, v0, :cond_1

    move/from16 v0, p3

    if-le v13, v0, :cond_2

    :cond_1
    move/from16 v0, p4

    if-lt v13, v0, :cond_3

    move/from16 v0, p5

    if-gt v13, v0, :cond_3

    .line 389
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 383
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 379
    .end local v15           #i:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 392
    .restart local v15       #i:I
    :cond_5
    int-to-float v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    goto/16 :goto_0
.end method

.method public getVariance(Ljava/util/ArrayList;)Ljava/math/BigInteger;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/math/BigInteger;>;"
    invoke-virtual {p0, p1}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->getAverage(Ljava/util/ArrayList;)Ljava/math/BigInteger;

    move-result-object v0

    .line 397
    .local v0, average:Ljava/math/BigInteger;
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 398
    .local v3, sum:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 399
    .local v1, i:Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 401
    .end local v1           #i:Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 402
    return-object v3
.end method

.method public markBestShot()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->markWaveCrest()V

    .line 60
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->markWaveTrough()V

    .line 61
    invoke-direct {p0}, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mergeWaveCrest()V

    .line 63
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector;->mEntryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .line 64
    .local v0, entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    iget-object v4, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mItem:Lcom/android/gallery3d/data/MediaItem;

    iget v2, v0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/MediaItem;->setIsBestShot(I)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 67
    .end local v0           #entry:Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;
    :cond_1
    return-void
.end method
