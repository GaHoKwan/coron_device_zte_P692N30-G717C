.class public Lcom/mediatek/gallery3d/conshots/ConShotImage;
.super Lcom/android/gallery3d/data/LocalImage;
.source "ConShotImage.java"


# static fields
.field public static final ITEM_PATH:Lcom/android/gallery3d/data/Path; = null

.field private static final TAG:Ljava/lang/String; = "Gallery2/ConShotImage"


# instance fields
.field private mFocusValue:Ljava/math/BigInteger;

.field private mGroupId:J

.field private mGroupIndex:I

.field private mIsBestShot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "/container/conshot/item"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getFocusValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mFocusValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mGroupId:J

    return-wide v0
.end method

.method public getGroupIndex()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mGroupIndex:I

    return v0
.end method

.method public getIsBestShot()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mIsBestShot:I

    return v0
.end method

.method public isConShot()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 34
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mGroupIndex:I

    .line 35
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    .line 36
    .local v0, high:J
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v2, v4

    .line 37
    .local v2, low:J
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mFocusValue:Ljava/math/BigInteger;

    .line 38
    const-string v4, "Gallery2/ConShotImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<loadFromCursor> mFocusValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", L = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mIsBestShot:I

    .line 40
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mGroupId:J

    .line 41
    return-void
.end method

.method public setIsBestShot(I)V
    .locals 8
    .parameter "isBestShot"

    .prologue
    const/4 v5, 0x1

    .line 70
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 71
    iput p1, p0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->mIsBestShot:I

    .line 72
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 73
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ConShotImage;->isConShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 75
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "is_best_shot"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, result:I
    const-string v3, "Gallery2/ConShotImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<setIsBestShot> update isBestShot value of id["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #result:I
    :cond_0
    return-void
.end method
