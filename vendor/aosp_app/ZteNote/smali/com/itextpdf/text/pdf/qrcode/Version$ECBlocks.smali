.class public final Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/qrcode/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method constructor <init>(ILcom/itextpdf/text/pdf/qrcode/Version$ECB;)V
    .locals 2
    .parameter "ecCodewordsPerBlock"
    .parameter "ecBlocks"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    .line 193
    return-void
.end method

.method constructor <init>(ILcom/itextpdf/text/pdf/qrcode/Version$ECB;Lcom/itextpdf/text/pdf/qrcode/Version$ECB;)V
    .locals 2
    .parameter "ecCodewordsPerBlock"
    .parameter "ecBlocks1"
    .parameter "ecBlocks2"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    .line 198
    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    return v0
.end method

.method public getNumBlocks()I
    .locals 3

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecBlocks:[Lcom/itextpdf/text/pdf/qrcode/Version$ECB;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/qrcode/Version$ECB;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return v1
.end method

.method public getTotalECCodewords()I
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->ecCodewordsPerBlock:I

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/qrcode/Version$ECBlocks;->getNumBlocks()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
