.class public Lcom/itextpdf/text/ImgJBIG2;
.super Lcom/itextpdf/text/Image;
.source "ImgJBIG2.java"


# instance fields
.field private global:[B

.field private globalHash:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    check-cast v0, Lcom/itextpdf/text/Image;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 73
    return-void
.end method

.method public constructor <init>(II[B[B)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "globals"

    .prologue
    const/4 v2, 0x1

    .line 83
    const/4 v1, 0x0

    check-cast v1, Ljava/net/URL;

    invoke-direct {p0, v1}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 84
    const/16 v1, 0x24

    iput v1, p0, Lcom/itextpdf/text/ImgJBIG2;->type:I

    .line 85
    const/16 v1, 0x9

    iput v1, p0, Lcom/itextpdf/text/ImgJBIG2;->originalType:I

    .line 86
    int-to-float v1, p2

    iput v1, p0, Lcom/itextpdf/text/ImgJBIG2;->scaledHeight:F

    .line 87
    iget v1, p0, Lcom/itextpdf/text/ImgJBIG2;->scaledHeight:F

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/ImgJBIG2;->setTop(F)V

    .line 88
    int-to-float v1, p1

    iput v1, p0, Lcom/itextpdf/text/ImgJBIG2;->scaledWidth:F

    .line 89
    iget v1, p0, Lcom/itextpdf/text/ImgJBIG2;->scaledWidth:F

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/ImgJBIG2;->setRight(F)V

    .line 90
    iput v2, p0, Lcom/itextpdf/text/ImgJBIG2;->bpc:I

    .line 91
    iput v2, p0, Lcom/itextpdf/text/ImgJBIG2;->colorspace:I

    .line 92
    iput-object p3, p0, Lcom/itextpdf/text/ImgJBIG2;->rawData:[B

    .line 93
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgJBIG2;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/ImgJBIG2;->plainWidth:F

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgJBIG2;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/ImgJBIG2;->plainHeight:F

    .line 95
    if-eqz p4, :cond_0

    .line 96
    iput-object p4, p0, Lcom/itextpdf/text/ImgJBIG2;->global:[B

    .line 99
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 100
    .local v0, md:Ljava/security/MessageDigest;
    iget-object v1, p0, Lcom/itextpdf/text/ImgJBIG2;->global:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/ImgJBIG2;->globalHash:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0           #md:Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getGlobalBytes()[B
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/itextpdf/text/ImgJBIG2;->global:[B

    return-object v0
.end method

.method public getGlobalHash()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/itextpdf/text/ImgJBIG2;->globalHash:[B

    return-object v0
.end method
