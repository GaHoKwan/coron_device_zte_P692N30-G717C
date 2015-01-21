.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalImageRequestEx"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mLocalFilePath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I

.field final synthetic this$0:Lcom/android/gallery3d/data/LocalImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocalImage;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;)V
    .locals 1
    .parameter
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "mimeType"
    .parameter "localFilePath"
    .parameter "params"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 620
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mPath:Lcom/android/gallery3d/data/Path;

    .line 621
    iput p4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mType:I

    .line 622
    invoke-static {p4}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mTargetSize:I

    .line 623
    iput-object p5, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mMimeType:Ljava/lang/String;

    .line 624
    iput-object p6, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    .line 625
    iput-object p7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    .line 626
    return-void
.end method


# virtual methods
.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    if-nez v1, :cond_2

    .line 630
    :cond_0
    const-string v1, "Gallery2/LocalImage"

    const-string v2, "LocalImageRequestEx:got null mLocalFilePath or mParams"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x0

    .line 644
    :cond_1
    :goto_0
    return-object v0

    .line 633
    :cond_2
    const/4 v0, 0x0

    .line 634
    .local v0, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalImage;->getSubType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    iget-object v1, v1, Lcom/android/gallery3d/data/LocalMediaItem;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v1, :cond_3

    .line 635
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->this$0:Lcom/android/gallery3d/data/LocalImage;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;Ljava/lang/String;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    .line 641
    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 642
    iget-object v1, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackGround(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 638
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mParams:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mLocalFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->mMimeType:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocalImage$LocalImageRequestEx;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method
