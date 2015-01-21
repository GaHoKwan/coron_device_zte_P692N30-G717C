.class public Lcom/itextpdf/text/Font;
.super Ljava/lang/Object;
.source "Font.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/Font$1;,
        Lcom/itextpdf/text/Font$FontStyle;,
        Lcom/itextpdf/text/Font$FontFamily;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/Font;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLDITALIC:I = 0x3

.field public static final DEFAULTSIZE:I = 0xc

.field public static final ITALIC:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final STRIKETHRU:I = 0x8

.field public static final UNDEFINED:I = -0x1

.field public static final UNDERLINE:I = 0x4


# instance fields
.field private baseFont:Lcom/itextpdf/text/pdf/BaseFont;

.field private color:Lcom/itextpdf/text/BaseColor;

.field private family:Lcom/itextpdf/text/Font$FontFamily;

.field private size:F

.field private style:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 291
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    const/high16 v1, -0x4080

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;)V
    .locals 3
    .parameter "family"

    .prologue
    .line 283
    const/high16 v0, -0x4080

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;F)V
    .locals 2
    .parameter "family"
    .parameter "size"

    .prologue
    .line 271
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 272
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;FI)V
    .locals 1
    .parameter "family"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "family"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 140
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 146
    iput-object v1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 149
    iput-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 182
    iput-object p1, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 183
    iput p2, p0, Lcom/itextpdf/text/Font;->size:F

    .line 184
    iput p3, p0, Lcom/itextpdf/text/Font;->style:I

    .line 185
    iput-object p4, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Font;)V
    .locals 2
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 140
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 146
    iput-object v1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 149
    iput-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 160
    iget-object v0, p1, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 161
    iget v0, p1, Lcom/itextpdf/text/Font;->size:F

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 162
    iget v0, p1, Lcom/itextpdf/text/Font;->style:I

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 163
    iget-object v0, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 164
    iget-object v0, p1, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 3
    .parameter "bf"

    .prologue
    .line 241
    const/high16 v0, -0x4080

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 2
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 231
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;FI)V
    .locals 1
    .parameter "bf"
    .parameter "size"
    .parameter "style"

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "bf"
    .parameter "size"
    .parameter "style"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 140
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 146
    iput-object v1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 149
    iput-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 202
    iput-object p1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 203
    iput p2, p0, Lcom/itextpdf/text/Font;->size:F

    .line 204
    iput p3, p0, Lcom/itextpdf/text/Font;->style:I

    .line 205
    iput-object p4, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 206
    return-void
.end method

.method public static getFamily(Ljava/lang/String;)Lcom/itextpdf/text/Font$FontFamily;
    .locals 1
    .parameter "family"

    .prologue
    .line 409
    const-string v0, "Courier"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->COURIER:Lcom/itextpdf/text/Font$FontFamily;

    .line 424
    :goto_0
    return-object v0

    .line 412
    :cond_0
    const-string v0, "Helvetica"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->HELVETICA:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 415
    :cond_1
    const-string v0, "Times-Roman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->TIMES_ROMAN:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 418
    :cond_2
    const-string v0, "Symbol"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 421
    :cond_3
    const-string v0, "ZapfDingbats"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0

    .line 424
    :cond_4
    sget-object v0, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    goto :goto_0
.end method

.method public static getStyleValue(Ljava/lang/String;)I
    .locals 3
    .parameter "style"

    .prologue
    const/4 v2, -0x1

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, s:I
    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->NORMAL:Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Font$FontStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 588
    or-int/lit8 v0, v0, 0x0

    .line 590
    :cond_0
    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->BOLD:Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Font$FontStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 591
    or-int/lit8 v0, v0, 0x1

    .line 593
    :cond_1
    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->ITALIC:Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Font$FontStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 594
    or-int/lit8 v0, v0, 0x2

    .line 596
    :cond_2
    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->OBLIQUE:Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Font$FontStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 597
    or-int/lit8 v0, v0, 0x2

    .line 599
    :cond_3
    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->UNDERLINE:Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Font$FontStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 600
    or-int/lit8 v0, v0, 0x4

    .line 602
    :cond_4
    sget-object v1, Lcom/itextpdf/text/Font$FontStyle;->LINETHROUGH:Lcom/itextpdf/text/Font$FontStyle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Font$FontStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 603
    or-int/lit8 v0, v0, 0x8

    .line 605
    :cond_5
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/Font;)I
    .locals 5
    .parameter "font"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 304
    if-nez p1, :cond_1

    .line 305
    const/4 v1, -0x1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 309
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 310
    const/4 v1, -0x2

    goto :goto_0

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 313
    const/4 v1, 0x1

    goto :goto_0

    .line 315
    :cond_3
    iget v3, p0, Lcom/itextpdf/text/Font;->size:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 316
    const/4 v1, 0x2

    goto :goto_0

    .line 318
    :cond_4
    iget v3, p0, Lcom/itextpdf/text/Font;->style:I

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 319
    const/4 v1, 0x3

    goto :goto_0

    .line 321
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-nez v3, :cond_6

    .line 322
    iget-object v3, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-eqz v3, :cond_0

    move v1, v2

    .line 325
    goto :goto_0

    .line 327
    :cond_6
    iget-object v3, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-nez v3, :cond_7

    move v1, v2

    .line 328
    goto :goto_0

    .line 330
    :cond_7
    iget-object v3, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 333
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/itextpdf/text/Font;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Font;->compareTo(Lcom/itextpdf/text/Font;)I

    move-result v0

    return v0
.end method

.method public difference(Lcom/itextpdf/text/Font;)Lcom/itextpdf/text/Font;
    .locals 7
    .parameter "font"

    .prologue
    const/4 v6, -0x1

    .line 770
    if-nez p1, :cond_0

    .line 808
    .end local p0
    :goto_0
    return-object p0

    .line 773
    .restart local p0
    :cond_0
    iget v1, p1, Lcom/itextpdf/text/Font;->size:F

    .line 774
    .local v1, dSize:F
    const/high16 v5, -0x4080

    cmpl-float v5, v1, v5

    if-nez v5, :cond_1

    .line 775
    iget v1, p0, Lcom/itextpdf/text/Font;->size:F

    .line 778
    :cond_1
    const/4 v2, -0x1

    .line 779
    .local v2, dStyle:I
    iget v3, p0, Lcom/itextpdf/text/Font;->style:I

    .line 780
    .local v3, style1:I
    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v4

    .line 781
    .local v4, style2:I
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_5

    .line 782
    :cond_2
    if-ne v3, v6, :cond_3

    .line 783
    const/4 v3, 0x0

    .line 784
    :cond_3
    if-ne v4, v6, :cond_4

    .line 785
    const/4 v4, 0x0

    .line 786
    :cond_4
    or-int v2, v3, v4

    .line 789
    :cond_5
    iget-object v0, p1, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 790
    .local v0, dColor:Lcom/itextpdf/text/BaseColor;
    if-nez v0, :cond_6

    .line 791
    iget-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 794
    :cond_6
    iget-object v5, p1, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_7

    .line 795
    new-instance p0, Lcom/itextpdf/text/Font;

    .end local p0
    iget-object v5, p1, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {p0, v5, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 797
    .restart local p0
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v5, v6, :cond_8

    .line 798
    new-instance p0, Lcom/itextpdf/text/Font;

    .end local p0
    iget-object v5, p1, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-direct {p0, v5, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    goto :goto_0

    .line 800
    .restart local p0
    :cond_8
    iget-object v5, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_a

    .line 801
    if-ne v2, v3, :cond_9

    .line 802
    new-instance v5, Lcom/itextpdf/text/Font;

    iget-object v6, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {v5, v6, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    move-object p0, v5

    goto :goto_0

    .line 804
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/text/Font;->getFamilyname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2, v0}, Lcom/itextpdf/text/FontFactory;->getFont(Ljava/lang/String;FILcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/Font;

    move-result-object p0

    goto :goto_0

    .line 808
    :cond_a
    new-instance v5, Lcom/itextpdf/text/Font;

    iget-object v6, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-direct {v5, v6, v1, v2, v0}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font$FontFamily;FILcom/itextpdf/text/BaseColor;)V

    move-object p0, v5

    goto :goto_0
.end method

.method public getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method public getCalculatedBaseFont(Z)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 7
    .parameter "specialEncoding"

    .prologue
    .line 666
    iget-object v5, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v5, :cond_0

    .line 667
    iget-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 744
    :goto_0
    return-object v0

    .line 668
    :cond_0
    iget v4, p0, Lcom/itextpdf/text/Font;->style:I

    .line 669
    .local v4, style:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 670
    const/4 v4, 0x0

    .line 672
    :cond_1
    const-string v3, "Helvetica"

    .line 673
    .local v3, fontName:Ljava/lang/String;
    const-string v2, "Cp1252"

    .line 674
    .local v2, encoding:Ljava/lang/String;
    const/4 v0, 0x0

    .line 675
    .local v0, cfont:Lcom/itextpdf/text/pdf/BaseFont;
    sget-object v5, Lcom/itextpdf/text/Font$1;->$SwitchMap$com$itextpdf$text$Font$FontFamily:[I

    iget-object v6, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    invoke-virtual {v6}, Lcom/itextpdf/text/Font$FontFamily;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 722
    :pswitch_0
    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_1

    .line 734
    const-string v3, "Helvetica"

    .line 740
    :cond_2
    :goto_1
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v2, v5}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 677
    :pswitch_1
    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_2

    .line 689
    const-string v3, "Courier"

    .line 690
    goto :goto_1

    .line 679
    :pswitch_2
    const-string v3, "Courier-Bold"

    .line 680
    goto :goto_1

    .line 682
    :pswitch_3
    const-string v3, "Courier-Oblique"

    .line 683
    goto :goto_1

    .line 685
    :pswitch_4
    const-string v3, "Courier-BoldOblique"

    .line 686
    goto :goto_1

    .line 694
    :pswitch_5
    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_3

    .line 706
    const-string v3, "Times-Roman"

    .line 707
    goto :goto_1

    .line 696
    :pswitch_6
    const-string v3, "Times-Bold"

    .line 697
    goto :goto_1

    .line 699
    :pswitch_7
    const-string v3, "Times-Italic"

    .line 700
    goto :goto_1

    .line 702
    :pswitch_8
    const-string v3, "Times-BoldItalic"

    .line 703
    goto :goto_1

    .line 711
    :pswitch_9
    const-string v3, "Symbol"

    .line 712
    if-eqz p1, :cond_2

    .line 713
    const-string v2, "Symbol"

    goto :goto_1

    .line 716
    :pswitch_a
    const-string v3, "ZapfDingbats"

    .line 717
    if-eqz p1, :cond_2

    .line 718
    const-string v2, "ZapfDingbats"

    goto :goto_1

    .line 724
    :pswitch_b
    const-string v3, "Helvetica-Bold"

    .line 725
    goto :goto_1

    .line 727
    :pswitch_c
    const-string v3, "Helvetica-Oblique"

    .line 728
    goto :goto_1

    .line 730
    :pswitch_d
    const-string v3, "Helvetica-BoldOblique"

    .line 731
    goto :goto_1

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, ee:Ljava/lang/Exception;
    new-instance v5, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v5, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 677
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 694
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getCalculatedLeading(F)F
    .locals 1
    .parameter "linespacing"

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/itextpdf/text/Font;->getCalculatedSize()F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public getCalculatedSize()F
    .locals 2

    .prologue
    .line 446
    iget v0, p0, Lcom/itextpdf/text/Font;->size:F

    .line 447
    .local v0, s:F
    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 448
    const/high16 v0, 0x4140

    .line 450
    :cond_0
    return v0
.end method

.method public getCalculatedStyle()I
    .locals 3

    .prologue
    .line 493
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 494
    .local v0, style:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v1, :cond_2

    .line 502
    .end local v0           #style:I
    :cond_1
    :goto_0
    return v0

    .line 499
    .restart local v0       #style:I
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    sget-object v2, Lcom/itextpdf/text/Font$FontFamily;->SYMBOL:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    sget-object v2, Lcom/itextpdf/text/Font$FontFamily;->ZAPFDINGBATS:Lcom/itextpdf/text/Font$FontFamily;

    if-eq v1, v2, :cond_1

    .line 502
    and-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public getColor()Lcom/itextpdf/text/BaseColor;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method public getFamily()Lcom/itextpdf/text/Font$FontFamily;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    return-object v0
.end method

.method public getFamilyname()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 356
    const-string v5, "unknown"

    .line 357
    .local v5, tmp:Ljava/lang/String;
    sget-object v6, Lcom/itextpdf/text/Font$1;->$SwitchMap$com$itextpdf$text$Font$FontFamily:[I

    invoke-virtual {p0}, Lcom/itextpdf/text/Font;->getFamily()Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/Font$FontFamily;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 369
    iget-object v6, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v6, :cond_3

    .line 370
    iget-object v6, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/BaseFont;->getFamilyFontName()[[Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, names:[[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 372
    .local v3, name:[Ljava/lang/String;
    const-string v6, "0"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 373
    aget-object v6, v3, v9

    .line 384
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:[Ljava/lang/String;
    .end local v4           #names:[[Ljava/lang/String;
    :goto_1
    return-object v6

    .line 359
    :pswitch_0
    const-string v6, "Courier"

    goto :goto_1

    .line 361
    :pswitch_1
    const-string v6, "Helvetica"

    goto :goto_1

    .line 363
    :pswitch_2
    const-string v6, "Times-Roman"

    goto :goto_1

    .line 365
    :pswitch_3
    const-string v6, "Symbol"

    goto :goto_1

    .line 367
    :pswitch_4
    const-string v6, "ZapfDingbats"

    goto :goto_1

    .line 375
    .restart local v0       #arr$:[[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #name:[Ljava/lang/String;
    .restart local v4       #names:[[Ljava/lang/String;
    :cond_0
    const-string v6, "1033"

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 376
    aget-object v5, v3, v9

    .line 378
    :cond_1
    const-string v6, ""

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    aget-object v5, v3, v9

    .line 371
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:[Ljava/lang/String;
    .end local v4           #names:[[Ljava/lang/String;
    :cond_3
    move-object v6, v5

    .line 384
    goto :goto_1

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/itextpdf/text/Font;->size:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    return v0
.end method

.method public isBold()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    iget v2, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 514
    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isItalic()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 523
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStandardFont()Z
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    sget-object v1, Lcom/itextpdf/text/Font$FontFamily;->UNDEFINED:Lcom/itextpdf/text/Font$FontFamily;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/Font;->size:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/Font;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStrikethru()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 547
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUnderlined()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/itextpdf/text/Font;->style:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColor(III)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 641
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, p1, p2, p3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    iput-object v0, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 642
    return-void
.end method

.method public setColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/itextpdf/text/Font;->color:Lcom/itextpdf/text/BaseColor;

    .line 628
    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "family"

    .prologue
    .line 395
    invoke-static {p1}, Lcom/itextpdf/text/Font;->getFamily(Ljava/lang/String;)Lcom/itextpdf/text/Font$FontFamily;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/Font;->family:Lcom/itextpdf/text/Font$FontFamily;

    .line 396
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 471
    iput p1, p0, Lcom/itextpdf/text/Font;->size:F

    .line 472
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 560
    iput p1, p0, Lcom/itextpdf/text/Font;->style:I

    .line 561
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 571
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 573
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/Font;->style:I

    invoke-static {p1}, Lcom/itextpdf/text/Font;->getStyleValue(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/Font;->style:I

    .line 574
    return-void
.end method
