.class public Lcom/android/dreams/phototable/StockSource;
.super Lcom/android/dreams/phototable/PhotoSource;
.source "StockSource.java"


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "com.android.dreams.phototable.StockSource"

.field private static final PHOTOS:[I = null

.field private static final TAG:Ljava/lang/String; = "PhotoTable.StockSource"


# instance fields
.field private final mAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPosition:I

.field private final mStockPhotoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f02

    aput v2, v0, v1

    sput-object v0, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "context"
    .parameter "settings"

    .prologue
    const/4 v5, 0x1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/dreams/phototable/PhotoSource;)V

    .line 44
    const-string v0, "PhotoTable.StockSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0006

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Default Photos"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mStockPhotoName:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoSource;->fillQueue()V

    .line 49
    return-void
.end method


# virtual methods
.method public findAlbums()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 55
    .local v0, data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    const-string v1, "com.android.dreams.phototable.StockSource"

    iput-object v1, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mStockPhotoName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mStockPhotoName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v0           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_0
    const-string v1, "PhotoTable.StockSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning a list of albums: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/StockSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/dreams/phototable/StockSource;->mAlbumList:Ljava/util/ArrayList;

    return-object v1
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 3
    .parameter "howMany"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 68
    new-instance v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 69
    .local v0, data:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    sget-object v2, Lcom/android/dreams/phototable/StockSource;->PHOTOS:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0           #data:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/android/dreams/phototable/StockSource;->mImageList:Ljava/util/ArrayList;

    return-object v2
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 5
    .parameter "data"
    .parameter "longSide"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    const-string v2, "PhotoTable.StockSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/StockSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    iget-object v3, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "PhotoTable.StockSource"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/StockSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method
