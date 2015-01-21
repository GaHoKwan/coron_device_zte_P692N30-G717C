.class public Lcom/mediatek/bluetooth/bip/BipImage;
.super Ljava/lang/Object;
.source "BipImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BipImage"

.field private static final thumFileName:Ljava/lang/String; = "thumbnail.jpg"

.field private static final thumFilePath:Ljava/lang/String; = "/data/@btmtk/profile/"


# instance fields
.field public AcceptableFileSize:I

.field public DirName:Ljava/lang/String;

.field public Encoding:Ljava/lang/String;

.field public FileName:Ljava/lang/String;

.field public Height:I

.field public Height2:I

.field public ObjectSize:I

.field public Size:I

.field public ThumbnailFullPath:Ljava/lang/String;

.field public Transform:Lcom/mediatek/bluetooth/bip/Transformation;

.field public Version:Ljava/lang/String;

.field public Width:I

.field public Width2:I

.field private mCreateThumbnailThread:Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "imageuri"
    .parameter "filePath"
    .parameter "objectSize"
    .parameter "mime"
    .parameter "c"

    .prologue
    const/16 v7, 0x2f

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->DirName:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->FileName:Ljava/lang/String;

    .line 76
    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ThumbnailFullPath:Ljava/lang/String;

    .line 77
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    .line 78
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->AcceptableFileSize:I

    .line 81
    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Version:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Encoding:Ljava/lang/String;

    .line 83
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    .line 84
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    .line 85
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width2:I

    .line 86
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height2:I

    .line 87
    iput v6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Size:I

    .line 91
    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->mCreateThumbnailThread:Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;

    .line 304
    const-string v3, "1.0"

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Version:Ljava/lang/String;

    .line 305
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image Descriptor Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, mimeType:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 310
    .local v1, dimension:[I
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->FileName:Ljava/lang/String;

    .line 314
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->FileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->DirName:Ljava/lang/String;

    .line 316
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dir Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->DirName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    .line 319
    iget v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    iput v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Size:I

    .line 320
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File Mime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0, p4}, Lcom/mediatek/bluetooth/bip/BipImage;->getImageEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Encoding:Ljava/lang/String;

    .line 324
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Encoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/bip/BipImage;->getImageDimension(Landroid/net/Uri;Landroid/content/ContentResolver;)[I

    move-result-object v1

    .line 328
    aget v3, v1, v6

    iput v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    .line 329
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    .line 330
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v3, "/data/@btmtk/profile/thumbnail.jpg"

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ThumbnailFullPath:Ljava/lang/String;

    .line 335
    const-string v3, "BipImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThumbnailFullPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ThumbnailFullPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v3, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;

    invoke-direct {v3, p0, p1, p5, v0}, Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;-><init>(Lcom/mediatek/bluetooth/bip/BipImage;Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->mCreateThumbnailThread:Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;

    .line 345
    iget-object v3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->mCreateThumbnailThread:Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 346
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter "dirname"
    .parameter "filename"
    .parameter "thumbnailfp"
    .parameter "objectsize"
    .parameter "version"
    .parameter "encoding"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->DirName:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->FileName:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ThumbnailFullPath:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    .line 78
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->AcceptableFileSize:I

    .line 81
    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Version:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Encoding:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    .line 84
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    .line 85
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width2:I

    .line 86
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height2:I

    .line 87
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Size:I

    .line 91
    iput-object v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->mCreateThumbnailThread:Lcom/mediatek/bluetooth/bip/BipImage$CreateThumbnailThread;

    .line 352
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->DirName:Ljava/lang/String;

    .line 353
    iput-object p2, p0, Lcom/mediatek/bluetooth/bip/BipImage;->FileName:Ljava/lang/String;

    .line 354
    iput-object p3, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ThumbnailFullPath:Ljava/lang/String;

    .line 355
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->ObjectSize:I

    .line 357
    iput-object p5, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Version:Ljava/lang/String;

    .line 358
    iput-object p6, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Encoding:Ljava/lang/String;

    .line 359
    iput p7, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height:I

    .line 360
    iput p8, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width:I

    .line 361
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Height2:I

    .line 362
    iput v1, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Width2:I

    .line 363
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetooth/bip/BipImage;->Size:I

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/bip/BipImage;Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/bip/BipImage;->createImageThumbnail(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private createImageThumbnail(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 36
    .parameter "imageuri"
    .parameter "c"
    .parameter "cr"

    .prologue
    .line 163
    const-string v30, "BipImage"

    const-string v31, "Thumbnail creating......"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x1

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 166
    .local v25, source:Ljava/lang/String;
    new-instance v18, Ljava/lang/Long;

    const-wide/16 v30, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 167
    .local v18, imageId:Ljava/lang/Long;
    const-string v30, "images"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 168
    new-instance v18, Ljava/lang/Long;

    .end local v18           #imageId:Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x3

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v18       #imageId:Ljava/lang/Long;
    :cond_0
    :goto_0
    const-string v30, "BipImage"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "getSeg ID: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const/16 v32, 0x3

    const/16 v33, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v30

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 180
    .local v5, bitmap:Landroid/graphics/Bitmap;
    const-string v30, "content://media/external/images/thumbnails"

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v26

    .line 181
    .local v26, thumbFile:Landroid/media/MiniThumbFile;
    invoke-virtual/range {v26 .. v26}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 185
    if-eqz v5, :cond_4

    .line 186
    const-string v30, "BipImage"

    const-string v31, "getThumbnail success"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_1
    const-string v30, "BipImage"

    const-string v31, "resize thumbnail......"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 197
    .local v29, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 198
    .local v17, height:I
    div-int/lit8 v15, v29, 0x2

    .line 199
    .local v15, focusX:I
    div-int/lit8 v16, v17, 0x2

    .line 208
    .local v16, focusY:I
    mul-int/lit8 v30, v29, 0x78

    move/from16 v0, v30

    div-int/lit16 v9, v0, 0xa0

    .line 209
    .local v9, cropHeight:I
    const/16 v30, 0x0

    div-int/lit8 v31, v9, 0x2

    sub-int v31, v16, v31

    sub-int v32, v17, v9

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 210
    .local v12, cropY:I
    const/4 v11, 0x0

    .line 211
    .local v11, cropX:I
    move/from16 v10, v29

    .line 212
    .local v10, cropWidth:I
    const/high16 v30, 0x4320

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v24, v30, v31

    .line 214
    .local v24, scaleFactor:F
    const/16 v30, 0xa0

    const/16 v31, 0x78

    sget-object v32, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 215
    .local v14, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v20, paint:Landroid/graphics/Paint;
    const/16 v30, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 218
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 219
    new-instance v30, Landroid/graphics/Rect;

    add-int v31, v11, v10

    add-int v32, v12, v9

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v11, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v31, Landroid/graphics/Rect;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0xa0

    const/16 v35, 0x78

    invoke-direct/range {v31 .. v35}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 223
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    const-string v30, "BipImage"

    const-string v31, "compress and save thumbnail......"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v30, 0x4b00

    move/from16 v0, v30

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 230
    .local v6, cacheOutput:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v30, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v31, 0x50

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v14, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 236
    new-instance v27, Ljava/io/File;

    const-string v30, "/data/@btmtk/profile/"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v27, thumbnailDir:Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v30

    if-nez v30, :cond_1

    .line 239
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_1
    new-instance v28, Ljava/io/File;

    const-string v30, "/data/@btmtk/profile/"

    const-string v31, "thumbnail.jpg"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v28, thumbnailFile:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 245
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 247
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z

    .line 249
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 250
    .local v19, out:Ljava/io/FileOutputStream;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 251
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 253
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 255
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :try_start_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "chmod 604 "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipImage;->ThumbnailFullPath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, cmd:Ljava/lang/String;
    const-string v30, "BipImage"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cmd="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    .line 261
    .local v23, rt:Ljava/lang/Runtime;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v21

    .line 263
    .local v21, proc:Ljava/lang/Process;
    const-string v8, "chmod 777 /data/@btmtk/profile/"

    .line 264
    const-string v30, "BipImage"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "cmd="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 276
    const/16 v30, 0x1

    .end local v8           #cmd:Ljava/lang/String;
    .end local v19           #out:Ljava/io/FileOutputStream;
    .end local v21           #proc:Ljava/lang/Process;
    .end local v23           #rt:Ljava/lang/Runtime;
    .end local v27           #thumbnailDir:Ljava/io/File;
    .end local v28           #thumbnailFile:Ljava/io/File;
    :goto_2
    return v30

    .line 169
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #cacheOutput:Ljava/io/ByteArrayOutputStream;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v9           #cropHeight:I
    .end local v10           #cropWidth:I
    .end local v11           #cropX:I
    .end local v12           #cropY:I
    .end local v14           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v15           #focusX:I
    .end local v16           #focusY:I
    .end local v17           #height:I
    .end local v20           #paint:Landroid/graphics/Paint;
    .end local v24           #scaleFactor:F
    .end local v26           #thumbFile:Landroid/media/MiniThumbFile;
    .end local v29           #width:I
    :cond_3
    const-string v30, "file"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 170
    new-instance v18, Ljava/lang/Long;

    .end local v18           #imageId:Ljava/lang/Long;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x2

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .restart local v18       #imageId:Ljava/lang/Long;
    goto/16 :goto_0

    .line 188
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v26       #thumbFile:Landroid/media/MiniThumbFile;
    :cond_4
    const-string v30, "BipImage"

    const-string v31, "getThumbnail fail"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 191
    .local v22, res:Landroid/content/res/Resources;
    const v30, 0x7f02002c

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_1

    .line 266
    .end local v22           #res:Landroid/content/res/Resources;
    .restart local v6       #cacheOutput:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #cropHeight:I
    .restart local v10       #cropWidth:I
    .restart local v11       #cropX:I
    .restart local v12       #cropY:I
    .restart local v14       #finalBitmap:Landroid/graphics/Bitmap;
    .restart local v15       #focusX:I
    .restart local v16       #focusY:I
    .restart local v17       #height:I
    .restart local v19       #out:Ljava/io/FileOutputStream;
    .restart local v20       #paint:Landroid/graphics/Paint;
    .restart local v24       #scaleFactor:F
    .restart local v27       #thumbnailDir:Ljava/io/File;
    .restart local v28       #thumbnailFile:Ljava/io/File;
    .restart local v29       #width:I
    :catch_0
    move-exception v13

    .line 267
    .local v13, e:Ljava/io/IOException;
    :try_start_2
    const-string v30, "BipImage"

    const-string v31, "chmod fail!"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    const/16 v30, 0x0

    goto :goto_2

    .line 271
    .end local v13           #e:Ljava/io/IOException;
    .end local v19           #out:Ljava/io/FileOutputStream;
    .end local v27           #thumbnailDir:Ljava/io/File;
    .end local v28           #thumbnailFile:Ljava/io/File;
    :catch_1
    move-exception v13

    .line 272
    .local v13, e:Ljava/lang/Exception;
    const-string v30, "BipImage"

    const-string v31, "save thumbnail fail"

    invoke-static/range {v30 .. v31}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v30, 0x0

    goto :goto_2
.end method

.method private getImageDimension(Landroid/net/Uri;Landroid/content/ContentResolver;)[I
    .locals 11
    .parameter "imageuri"
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, input:Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 126
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 127
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 130
    .local v1, dimension:[I
    :try_start_0
    const-string v6, "r"

    invoke-virtual {p2, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 131
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 133
    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    const/4 v6, 0x0

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v7, v1, v6

    .line 142
    const/4 v6, 0x1

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v7, v1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 148
    if-eqz v3, :cond_0

    .line 149
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 154
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_0
    const-string v6, "BipImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dimension[0]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v6, "BipImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dimension[1]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v1, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_1
    return-object v1

    .line 137
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_3
    const-string v6, "BipImage"

    const-string v7, "input != null"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 148
    if-eqz v3, :cond_3

    .line 149
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_2
    move-object v4, v5

    .line 152
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    goto :goto_1

    .line 150
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 153
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    .line 144
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_5
    aput v7, v1, v6

    .line 145
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v1, v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v3, :cond_1

    .line 149
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v6

    goto :goto_0

    .line 147
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 148
    :goto_4
    if-eqz v3, :cond_4

    .line 149
    :try_start_7
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 152
    :cond_4
    :goto_5
    throw v6

    .line 150
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_2

    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 147
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    goto :goto_4

    .line 143
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    goto :goto_3
.end method

.method private getImageEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mimetype"

    .prologue
    .line 97
    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v0, "JPEG"

    .line 117
    .local v0, encoding:Ljava/lang/String;
    :goto_0
    const-string v1, "BipImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v0

    .line 100
    .end local v0           #encoding:Ljava/lang/String;
    :cond_0
    const-string v1, "image/png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string v0, "PNG"

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0           #encoding:Ljava/lang/String;
    :cond_1
    const-string v1, "image/gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string v0, "GIF"

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0           #encoding:Ljava/lang/String;
    :cond_2
    const-string v1, "image/bmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "image/x-ms-bmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    :cond_3
    const-string v0, "BMP"

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #encoding:Ljava/lang/String;
    :cond_4
    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    const-string v0, "WBMP"

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v0           #encoding:Ljava/lang/String;
    :cond_5
    const-string v1, "BipImage"

    const-string v2, "Unsupport format"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "unknow"

    .restart local v0       #encoding:Ljava/lang/String;
    goto :goto_0
.end method
