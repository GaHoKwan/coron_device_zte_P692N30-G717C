.class public final Lcom/itextpdf/awt/geom/misc/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# static fields
.field public static final EMPTY_HASH_CODE:I = 0x1


# instance fields
.field private hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    return-void
.end method

.method public static combine(ID)I
    .locals 3
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 124
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 125
    .local v0, v:J
    invoke-static {p0, v0, v1}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(IJ)I

    move-result v2

    return v2
.end method

.method public static combine(IF)I
    .locals 2
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 114
    .local v0, v:I
    invoke-static {p0, v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(II)I

    move-result v1

    return v1
.end method

.method public static combine(II)I
    .locals 1
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 145
    mul-int/lit8 v0, p0, 0x1f

    add-int/2addr v0, p1

    return v0
.end method

.method public static combine(IJ)I
    .locals 3
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 102
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr v1, p1

    long-to-int v0, v1

    .line 103
    .local v0, v:I
    invoke-static {p0, v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(II)I

    move-result v1

    return v1
.end method

.method public static combine(ILjava/lang/Object;)I
    .locals 1
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0, v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(II)I

    move-result v0

    return v0
.end method

.method public static combine(IZ)I
    .locals 2
    .parameter "hashCode"
    .parameter "value"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const/16 v0, 0x4cf

    .line 92
    .local v0, v:I
    :goto_0
    invoke-static {p0, v0}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(II)I

    move-result v1

    return v1

    .line 91
    .end local v0           #v:I
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method


# virtual methods
.method public final append(D)Lcom/itextpdf/awt/geom/misc/HashCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 184
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    invoke-static {v0, p1, p2}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(ID)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    .line 185
    return-object p0
.end method

.method public final append(F)Lcom/itextpdf/awt/geom/misc/HashCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 174
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(IF)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    .line 175
    return-object p0
.end method

.method public final append(I)Lcom/itextpdf/awt/geom/misc/HashCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 154
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(II)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    .line 155
    return-object p0
.end method

.method public final append(J)Lcom/itextpdf/awt/geom/misc/HashCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    invoke-static {v0, p1, p2}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(IJ)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    .line 165
    return-object p0
.end method

.method public final append(Ljava/lang/Object;)Lcom/itextpdf/awt/geom/misc/HashCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 204
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    .line 205
    return-object p0
.end method

.method public final append(Z)Lcom/itextpdf/awt/geom/misc/HashCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 194
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    invoke-static {v0, p1}, Lcom/itextpdf/awt/geom/misc/HashCode;->combine(IZ)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    .line 195
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/itextpdf/awt/geom/misc/HashCode;->hashCode:I

    return v0
.end method
