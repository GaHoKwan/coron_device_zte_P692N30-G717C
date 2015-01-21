.class public Lcom/android/gallery3d/app/SlideshowPage$Slide;
.super Ljava/lang/Object;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slide"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public item:Lcom/android/gallery3d/data/MediaItem;

.field public subType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "item"
    .parameter "index"
    .parameter "bitmap"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p3, p0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->bitmap:Landroid/graphics/Bitmap;

    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->item:Lcom/android/gallery3d/data/MediaItem;

    .line 87
    iput p2, p0, Lcom/android/gallery3d/app/SlideshowPage$Slide;->index:I

    .line 88
    return-void
.end method
