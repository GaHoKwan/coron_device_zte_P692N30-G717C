.class public Lcom/itextpdf/text/factories/RomanNumberFactory;
.super Ljava/lang/Object;
.source "RomanNumberFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;
    }
.end annotation


# static fields
.field private static final roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v4, 0x64

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    new-instance v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v2, 0x6d

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3, v5}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v2, 0x1f4

    invoke-direct {v1, v4, v2, v5}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v3, 0x63

    invoke-direct {v2, v3, v4, v6}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v3, 0x6c

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v3, 0x78

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v2, 0x76

    invoke-direct {v1, v2, v7, v5}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-instance v2, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    const/16 v3, 0x69

    invoke-direct {v2, v3, v6, v6}, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;-><init>(CIZ)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/factories/RomanNumberFactory;->roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static final getLowerCaseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getString(I)Ljava/lang/String;
    .locals 6
    .parameter "index"

    .prologue
    const/16 v5, 0x7c

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, buf:Ljava/lang/StringBuffer;
    if-gez p0, :cond_0

    .line 99
    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    neg-int p0, p0

    .line 104
    :cond_0
    const/16 v4, 0xbb8

    if-le p0, v4, :cond_1

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    div-int/lit16 v4, p0, 0x3e8

    invoke-static {v4}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    div-int/lit16 v4, p0, 0x3e8

    mul-int/lit16 v4, v4, 0x3e8

    sub-int/2addr p0, v4

    .line 113
    :cond_1
    const/4 v3, 0x0

    .line 116
    .local v3, pos:I
    :goto_0
    sget-object v4, Lcom/itextpdf/text/factories/RomanNumberFactory;->roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    aget-object v1, v4, v3

    .line 118
    .local v1, dig:Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;
    :goto_1
    iget v4, v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    if-lt p0, v4, :cond_2

    .line 119
    iget-char v4, v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->digit:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    iget v4, v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    sub-int/2addr p0, v4

    goto :goto_1

    .line 123
    :cond_2
    if-gtz p0, :cond_3

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 127
    :cond_3
    move v2, v3

    .line 128
    .local v2, j:I
    :cond_4
    sget-object v4, Lcom/itextpdf/text/factories/RomanNumberFactory;->roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    add-int/lit8 v2, v2, 0x1

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->pre:Z

    if-eqz v4, :cond_4

    .line 131
    sget-object v4, Lcom/itextpdf/text/factories/RomanNumberFactory;->roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    add-int/2addr v4, p0

    iget v5, v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    if-lt v4, v5, :cond_5

    .line 132
    sget-object v4, Lcom/itextpdf/text/factories/RomanNumberFactory;->roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    aget-object v4, v4, v2

    iget-char v4, v4, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->digit:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-char v5, v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->digit:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    iget v4, v1, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    sget-object v5, Lcom/itextpdf/text/factories/RomanNumberFactory;->roman:[Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/itextpdf/text/factories/RomanNumberFactory$RomanDigit;->value:I

    sub-int/2addr v4, v5

    sub-int/2addr p0, v4

    .line 135
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 136
    goto :goto_0
.end method

.method public static final getString(IZ)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "lowercase"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getLowerCaseString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getUpperCaseString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getUpperCaseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/itextpdf/text/factories/RomanNumberFactory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
