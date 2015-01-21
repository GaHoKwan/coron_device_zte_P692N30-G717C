.class public Lcom/mediatek/ngin3d/ImmutableColor;
.super Lcom/mediatek/ngin3d/Color;
.source "ImmutableColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Color;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "rgb"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Color;-><init>(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Color;-><init>(III)V

    .line 63
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Color;-><init>(IIII)V

    .line 93
    return-void
.end method


# virtual methods
.method public final alpha(I)Lcom/mediatek/ngin3d/Color;
    .locals 3
    .parameter "a"

    .prologue
    .line 141
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Color with alpha("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Color. Create new Color() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blue(I)Lcom/mediatek/ngin3d/Color;
    .locals 3
    .parameter "b"

    .prologue
    .line 132
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Color with blue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Color. Create new Color() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lcom/mediatek/ngin3d/Color;
    .locals 6

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/Color;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/mediatek/ngin3d/Color;

    iget v2, p0, Lcom/mediatek/ngin3d/Color;->red:I

    iget v3, p0, Lcom/mediatek/ngin3d/Color;->green:I

    iget v4, p0, Lcom/mediatek/ngin3d/Color;->blue:I

    iget v5, p0, Lcom/mediatek/ngin3d/Color;->alpha:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/ngin3d/Color;-><init>(IIII)V

    goto :goto_0
.end method

.method public final green(I)Lcom/mediatek/ngin3d/Color;
    .locals 3
    .parameter "g"

    .prologue
    .line 123
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Color with green("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Color. Create new Color() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final red(I)Lcom/mediatek/ngin3d/Color;
    .locals 3
    .parameter "r"

    .prologue
    .line 114
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Color with red("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Color. Create new Color() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setHls(FFF)V
    .locals 3
    .parameter "hue"
    .parameter "luminance"
    .parameter "saturation"

    .prologue
    .line 150
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Color with setHls("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Color. Create new Color() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRgb(I)V
    .locals 3
    .parameter "rgb"

    .prologue
    .line 79
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Color with setRgb("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Color. Create new Color() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
