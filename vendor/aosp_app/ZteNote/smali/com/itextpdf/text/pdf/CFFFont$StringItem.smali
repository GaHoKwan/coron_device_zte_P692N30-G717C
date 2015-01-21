.class public final Lcom/itextpdf/text/pdf/CFFFont$StringItem;
.super Lcom/itextpdf/text/pdf/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "StringItem"
.end annotation


# instance fields
.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$Item;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/text/pdf/CFFFont$StringItem;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 638
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont$StringItem;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 639
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$StringItem;->myOffset:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont$StringItem;->s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    return-void
.end method

.method public increment([I)V
    .locals 3
    .parameter "currentOffset"

    .prologue
    .line 633
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont$Item;->increment([I)V

    .line 634
    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont$StringItem;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 635
    return-void
.end method
