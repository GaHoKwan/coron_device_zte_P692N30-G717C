.class public Lcom/itextpdf/text/BaseColor;
.super Ljava/lang/Object;
.source "BaseColor.java"


# static fields
.field public static final BLACK:Lcom/itextpdf/text/BaseColor; = null

.field public static final BLUE:Lcom/itextpdf/text/BaseColor; = null

.field public static final CYAN:Lcom/itextpdf/text/BaseColor; = null

.field public static final DARK_GRAY:Lcom/itextpdf/text/BaseColor; = null

.field private static final FACTOR:D = 0.7

.field public static final GRAY:Lcom/itextpdf/text/BaseColor;

.field public static final GREEN:Lcom/itextpdf/text/BaseColor;

.field public static final LIGHT_GRAY:Lcom/itextpdf/text/BaseColor;

.field public static final MAGENTA:Lcom/itextpdf/text/BaseColor;

.field public static final ORANGE:Lcom/itextpdf/text/BaseColor;

.field public static final PINK:Lcom/itextpdf/text/BaseColor;

.field public static final RED:Lcom/itextpdf/text/BaseColor;

.field public static final WHITE:Lcom/itextpdf/text/BaseColor;

.field public static final YELLOW:Lcom/itextpdf/text/BaseColor;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v2, 0x80

    const/16 v1, 0x40

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 53
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v3, v3, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->WHITE:Lcom/itextpdf/text/BaseColor;

    .line 54
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v5, v5, v5}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->LIGHT_GRAY:Lcom/itextpdf/text/BaseColor;

    .line 55
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v2, v2, v2}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->GRAY:Lcom/itextpdf/text/BaseColor;

    .line 56
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v1, v1, v1}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->DARK_GRAY:Lcom/itextpdf/text/BaseColor;

    .line 57
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v4, v4, v4}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->BLACK:Lcom/itextpdf/text/BaseColor;

    .line 58
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v3, v4, v4}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->RED:Lcom/itextpdf/text/BaseColor;

    .line 59
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xaf

    const/16 v2, 0xaf

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->PINK:Lcom/itextpdf/text/BaseColor;

    .line 60
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xc8

    invoke-direct {v0, v3, v1, v4}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->ORANGE:Lcom/itextpdf/text/BaseColor;

    .line 61
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v3, v3, v4}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->YELLOW:Lcom/itextpdf/text/BaseColor;

    .line 62
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v4, v3, v4}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->GREEN:Lcom/itextpdf/text/BaseColor;

    .line 63
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v3, v4, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->MAGENTA:Lcom/itextpdf/text/BaseColor;

    .line 64
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v4, v3, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->CYAN:Lcom/itextpdf/text/BaseColor;

    .line 65
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v0, v4, v4, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    sput-object v0, Lcom/itextpdf/text/BaseColor;->BLUE:Lcom/itextpdf/text/BaseColor;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 111
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/BaseColor;-><init>(FFFF)V

    .line 112
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    const/high16 v4, 0x437f

    const-wide/high16 v5, 0x3fe0

    .line 101
    mul-float v0, p1, v4

    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-int v0, v0

    mul-float v1, p2, v4

    float-to-double v1, v1

    add-double/2addr v1, v5

    double-to-int v1, v1

    mul-float v2, p3, v4

    float-to-double v2, v2

    add-double/2addr v2, v5

    double-to-int v2, v2

    mul-float v3, p4, v4

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(IIII)V

    .line 102
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "argb"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/itextpdf/text/BaseColor;->value:I

    .line 119
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 90
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/BaseColor;-><init>(IIII)V

    .line 91
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/itextpdf/text/BaseColor;->validate(I)V

    .line 78
    invoke-static {p2}, Lcom/itextpdf/text/BaseColor;->validate(I)V

    .line 79
    invoke-static {p3}, Lcom/itextpdf/text/BaseColor;->validate(I)V

    .line 80
    invoke-static {p4}, Lcom/itextpdf/text/BaseColor;->validate(I)V

    .line 81
    and-int/lit16 v0, p4, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/BaseColor;->value:I

    .line 82
    return-void
.end method

.method private static validate(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 203
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color.value.outside.range.0.255"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    return-void
.end method


# virtual methods
.method public brighter()Lcom/itextpdf/text/BaseColor;
    .locals 12

    .prologue
    const/16 v11, 0xff

    const-wide v9, 0x3fe6666666666666L

    .line 161
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v3

    .line 162
    .local v3, r:I
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v1

    .line 163
    .local v1, g:I
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v0

    .line 165
    .local v0, b:I
    const/4 v2, 0x3

    .line 166
    .local v2, i:I
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 167
    new-instance v4, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v4, v2, v2, v2}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    .line 176
    :goto_0
    return-object v4

    .line 169
    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v2, :cond_1

    .line 170
    move v3, v2

    .line 171
    :cond_1
    if-lez v1, :cond_2

    if-ge v1, v2, :cond_2

    .line 172
    move v1, v2

    .line 173
    :cond_2
    if-lez v0, :cond_3

    if-ge v0, v2, :cond_3

    .line 174
    move v0, v2

    .line 176
    :cond_3
    new-instance v4, Lcom/itextpdf/text/BaseColor;

    int-to-double v5, v3

    div-double/2addr v5, v9

    double-to-int v5, v5

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v6, v1

    div-double/2addr v6, v9

    double-to-int v6, v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v7, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    goto :goto_0
.end method

.method public darker()Lcom/itextpdf/text/BaseColor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x3fe6666666666666L

    .line 186
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 193
    instance-of v0, p1, Lcom/itextpdf/text/BaseColor;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itextpdf/text/BaseColor;

    .end local p1
    iget v0, p1, Lcom/itextpdf/text/BaseColor;->value:I

    iget v1, p0, Lcom/itextpdf/text/BaseColor;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBlue()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRGB()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/itextpdf/text/BaseColor;->value:I

    return v0
.end method

.method public getRed()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRGB()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/itextpdf/text/BaseColor;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color value["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/BaseColor;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
