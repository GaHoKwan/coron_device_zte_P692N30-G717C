.class public final Lcom/android/gallery3d/data/DataSourceType;
.super Ljava/lang/Object;
.source "DataSourceType.java"


# static fields
.field private static final LOCAL_ROOT:Lcom/android/gallery3d/data/Path; = null

.field private static final LOCAL_ROOT_LABEL:Ljava/lang/String; = "/local"

.field private static final MTP_ROOT:Lcom/android/gallery3d/data/Path; = null

.field private static final MTP_ROOT_LABEL:Ljava/lang/String; = "/mtp"

.field private static final PICASA_ROOT:Lcom/android/gallery3d/data/Path; = null

.field private static final PICASA_ROOT_LABEL:Ljava/lang/String; = "/picasa"

.field public static final TYPE_CAMERA:I = 0x4

.field public static final TYPE_LOCAL:I = 0x1

.field public static final TYPE_MTP:I = 0x3

.field public static final TYPE_NOT_CATEGORIZED:I = 0x0

.field public static final TYPE_PICASA:I = 0x2

.field public static final TYPE_STEREO:I = 0x40

.field private static mTempLocalRoot:Lcom/android/gallery3d/data/Path;

.field private static mTempMtpRoot:Lcom/android/gallery3d/data/Path;

.field private static mTempPicasaRoot:Lcom/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "/picasa"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    .line 34
    const-string v0, "/local"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    .line 35
    const-string v0, "/mtp"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    .line 42
    sget-object v0, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->mTempPicasaRoot:Lcom/android/gallery3d/data/Path;

    .line 43
    sget-object v0, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->mTempLocalRoot:Lcom/android/gallery3d/data/Path;

    .line 44
    sget-object v0, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    sput-object v0, Lcom/android/gallery3d/data/DataSourceType;->mTempMtpRoot:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 5
    .parameter "set"

    .prologue
    const/4 v3, 0x0

    .line 47
    if-nez p0, :cond_1

    move v2, v3

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 52
    .local v0, path:Lcom/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/android/gallery3d/util/MediaSetUtils;->isCameraSource(Lcom/android/gallery3d/data/Path;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 56
    .local v1, prefix:Lcom/android/gallery3d/data/Path;
    invoke-static {v1, p0}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceTypeEx(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;)I

    move-result v2

    .line 57
    .local v2, sourceType:I
    if-nez v2, :cond_0

    .line 59
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->PICASA_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 60
    :cond_3
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->MTP_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    .line 61
    :cond_4
    sget-object v4, Lcom/android/gallery3d/data/DataSourceType;->LOCAL_ROOT:Lcom/android/gallery3d/data/Path;

    if-ne v1, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    .line 63
    goto :goto_0
.end method

.method public static identifySourceTypeEx(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaSet;)I
    .locals 3
    .parameter "prefix"
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->isStereoMediaFolder(Lcom/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x40

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    .line 78
    .local v0, inclusion:I
    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempLocalRoot:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempLocalRoot:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 79
    :cond_3
    const-string v2, "/local"

    invoke-static {v2, v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempLocalRoot:Lcom/android/gallery3d/data/Path;

    .line 81
    :cond_4
    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempLocalRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 84
    :cond_5
    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempMtpRoot:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempMtpRoot:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    if-eq v2, v0, :cond_7

    .line 85
    :cond_6
    const-string v2, "/mtp"

    invoke-static {v2, v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempMtpRoot:Lcom/android/gallery3d/data/Path;

    .line 87
    :cond_7
    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempMtpRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v2, :cond_8

    const/4 v1, 0x3

    goto :goto_0

    .line 90
    :cond_8
    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempPicasaRoot:Lcom/android/gallery3d/data/Path;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempPicasaRoot:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    if-eq v2, v0, :cond_a

    .line 91
    :cond_9
    const-string v2, "/picasa"

    invoke-static {v2, v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    sput-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempPicasaRoot:Lcom/android/gallery3d/data/Path;

    .line 93
    :cond_a
    sget-object v2, Lcom/android/gallery3d/data/DataSourceType;->mTempPicasaRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method
