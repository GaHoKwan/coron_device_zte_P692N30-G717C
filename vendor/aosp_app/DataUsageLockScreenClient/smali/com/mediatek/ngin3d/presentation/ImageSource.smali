.class public Lcom/mediatek/ngin3d/presentation/ImageSource;
.super Ljava/lang/Object;
.source "ImageSource.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# static fields
.field public static final ASSET:I = 0x6

.field public static final BITMAP:I = 0x2

.field public static final BITMAP_GENERATOR:I = 0x4

.field public static final FILE:I = 0x1

.field public static final RECYCLE_AFTER_USE:I = 0x1

.field public static final RES_ID:I = 0x3

.field public static final VIDEO_TEXTURE:I = 0x5


# instance fields
.field public options:I

.field public srcInfo:Ljava/lang/Object;

.field public srcType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "srcType"
    .parameter "srcInfo"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/presentation/ImageSource;-><init>(ILjava/lang/Object;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;I)V
    .locals 0
    .parameter "srcType"
    .parameter "srcInfo"
    .parameter "options"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    .line 70
    iput-object p2, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    .line 71
    iput p3, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->options:I

    .line 72
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    const-string v0, "{ImageSource: {type:%d, info:%s}}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    invoke-static {v3}, Lcom/mediatek/ngin3d/utils/JSON;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    const-string v0, "ImageSource: {type:%d, info:%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/ngin3d/presentation/ImageSource;->srcInfo:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
