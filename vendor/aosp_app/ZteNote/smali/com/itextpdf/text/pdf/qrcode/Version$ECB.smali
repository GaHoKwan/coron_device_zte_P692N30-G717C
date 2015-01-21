.class public final Lcom/itextpdf/text/pdf/qrcode/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/qrcode/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "count"
    .parameter "dataCodewords"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p1, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECB;->count:I

    .line 232
    iput p2, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECB;->dataCodewords:I

    .line 233
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECB;->count:I

    return v0
.end method

.method public getDataCodewords()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/itextpdf/text/pdf/qrcode/Version$ECB;->dataCodewords:I

    return v0
.end method
