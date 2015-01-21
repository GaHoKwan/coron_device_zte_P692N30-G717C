.class public Lcom/mediatek/ngin3d/ImmutableDimension;
.super Lcom/mediatek/ngin3d/Dimension;
.source "ImmutableDimension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Dimension;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    .line 64
    return-void
.end method


# virtual methods
.method public final set(FF)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 71
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Dimension with set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "it might be a default Dimension. Create new Dimension() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
