.class public Lcom/mediatek/ngin3d/ImmutableScale;
.super Lcom/mediatek/ngin3d/Scale;
.source "ImmutableScale.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "xyz"

    .prologue
    .line 76
    invoke-direct {p0, p1, p1, p1}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    .line 77
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 56
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    .line 57
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    .line 68
    return-void
.end method


# virtual methods
.method public final set(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 84
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow to modify immutable Scale with set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    const-string v2, "it might be a default Scale. Create new Scale() first then use that"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
