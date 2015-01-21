.class public Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLoaded"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mIsVideo:Z

.field private thumbnailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "bitmap"
    .parameter "isVideo"

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    .line 571
    iput-boolean p2, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    .line 572
    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->thumbnailUri:Landroid/net/Uri;

    .line 577
    return-void
.end method
