.class public Lcom/mediatek/gallery3d/pq/PictureQualityOptions;
.super Ljava/lang/Object;
.source "PictureQualityOptions.java"


# static fields
.field private static sColorOption:I

.field private static sGrassToneOption:I

.field private static sSharpnessOption:I

.field private static sSkinToneOption:I

.field private static sSkyToneOption:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSkyToneOption:I

    .line 42
    sput v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSkinToneOption:I

    .line 43
    sput v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sGrassToneOption:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sColorOption:I

    .line 45
    const/4 v0, 0x5

    sput v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSharpnessOption:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorOptin()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sColorOption:I

    return v0
.end method

.method public static getGrassToneOptin()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sGrassToneOption:I

    return v0
.end method

.method public static getSharpnessOptin()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSharpnessOption:I

    return v0
.end method

.method public static getSkinToneOptin()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSkinToneOption:I

    return v0
.end method

.method public static getSkyToneOption()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSkyToneOption:I

    return v0
.end method

.method public static declared-synchronized setColorOptin(I)V
    .locals 2
    .parameter "colorOption"

    .prologue
    .line 80
    const-class v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sColorOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setGrassToneOptin(I)V
    .locals 2
    .parameter "grassToneOption"

    .prologue
    .line 76
    const-class v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sGrassToneOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSharpnessOptin(I)V
    .locals 2
    .parameter "sharpnessOption"

    .prologue
    .line 84
    const-class v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSharpnessOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSkinToneOptin(I)V
    .locals 2
    .parameter "skinToneOption"

    .prologue
    .line 72
    const-class v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSkinToneOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSkyToneOption(I)V
    .locals 2
    .parameter "skyToneOption"

    .prologue
    .line 68
    const-class v0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/mediatek/gallery3d/pq/PictureQualityOptions;->sSkyToneOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
