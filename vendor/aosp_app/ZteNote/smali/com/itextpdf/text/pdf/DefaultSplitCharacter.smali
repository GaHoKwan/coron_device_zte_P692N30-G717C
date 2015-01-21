.class public Lcom/itextpdf/text/pdf/DefaultSplitCharacter;
.super Ljava/lang/Object;
.source "DefaultSplitCharacter.java"

# interfaces
.implements Lcom/itextpdf/text/SplitCharacter;


# static fields
.field public static final DEFAULT:Lcom/itextpdf/text/SplitCharacter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/itextpdf/text/pdf/DefaultSplitCharacter;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/DefaultSplitCharacter;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/DefaultSplitCharacter;->DEFAULT:Lcom/itextpdf/text/SplitCharacter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentCharacter(I[C[Lcom/itextpdf/text/pdf/PdfChunk;)C
    .locals 2
    .parameter "current"
    .parameter "cc"
    .parameter "ck"

    .prologue
    .line 96
    if-nez p3, :cond_0

    .line 97
    aget-char v0, p2, p1

    .line 99
    :goto_0
    return v0

    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v0, p3, v0

    aget-char v1, p2, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getUnicodeEquivalent(I)I

    move-result v0

    int-to-char v0, v0

    goto :goto_0
.end method

.method public isSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z
    .locals 5
    .parameter "start"
    .parameter "current"
    .parameter "end"
    .parameter "cc"
    .parameter "ck"

    .prologue
    const/16 v4, 0x2002

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, p2, p4, p5}, Lcom/itextpdf/text/pdf/DefaultSplitCharacter;->getCurrentCharacter(I[C[Lcom/itextpdf/text/pdf/PdfChunk;)C

    move-result v0

    .line 76
    .local v0, c:C
    const/16 v3, 0x20

    if-le v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2010

    if-ne v0, v3, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-ge v0, v4, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v3, 0x200b

    if-le v0, v3, :cond_0

    :cond_3
    const/16 v3, 0x2e80

    if-lt v0, v3, :cond_4

    const v3, 0xd7a0

    if-lt v0, v3, :cond_0

    :cond_4
    const v3, 0xf900

    if-lt v0, v3, :cond_5

    const v3, 0xfb00

    if-lt v0, v3, :cond_0

    :cond_5
    const v3, 0xfe30

    if-lt v0, v3, :cond_6

    const v3, 0xfe50

    if-lt v0, v3, :cond_0

    :cond_6
    const v3, 0xff61

    if-lt v0, v3, :cond_7

    const v3, 0xffa0

    if-lt v0, v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method
