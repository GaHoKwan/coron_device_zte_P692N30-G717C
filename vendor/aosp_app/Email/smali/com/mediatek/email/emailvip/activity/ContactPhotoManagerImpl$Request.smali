.class final Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ListPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mId:J

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZ)V
    .locals 0
    .parameter "id"
    .parameter "uri"
    .parameter "requestedExtent"
    .parameter "darkTheme"

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-wide p1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    .line 1059
    iput-object p3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    .line 1060
    iput-boolean p5, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    .line 1061
    iput p4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    .line 1062
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1051
    iget-wide v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromThumbnailId(JZ)Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    .locals 6
    .parameter "id"
    .parameter "darkTheme"

    .prologue
    .line 1065
    new-instance v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-wide v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZ)V

    return-object v0
.end method

.method public static createFromUri(Landroid/net/Uri;IZ)Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    .locals 6
    .parameter "uri"
    .parameter "requestedExtent"
    .parameter "darkTheme"

    .prologue
    .line 1069
    new-instance v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    const-wide/16 v1, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1100
    if-ne p0, p1, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return v1

    .line 1101
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 1102
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1103
    check-cast v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    .line 1104
    .local v0, that:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    iget-wide v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v5, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1105
    :cond_4
    iget v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 1106
    :cond_5
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/mediatek/email/emailvip/utils/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1081
    iget-wide v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getRequestedExtent()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1090
    const/16 v0, 0x1f

    .line 1091
    .local v0, prime:I
    const/4 v1, 0x1

    .line 1092
    .local v1, result:I
    iget-wide v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 1093
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int v1, v2, v3

    .line 1094
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 1095
    return v1

    .line 1094
    :cond_0
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isUriRequest()Z
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
