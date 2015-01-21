.class public Lcom/mediatek/ngin3d/Stage$Camera;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Camera"
.end annotation


# instance fields
.field public lookAt:Lcom/mediatek/ngin3d/Point;

.field public position:Lcom/mediatek/ngin3d/Point;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 1
    .parameter "position"
    .parameter "lookAt"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, p1}, Lcom/mediatek/ngin3d/Point;-><init>(Lcom/mediatek/ngin3d/Point;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    .line 273
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, p2}, Lcom/mediatek/ngin3d/Point;-><init>(Lcom/mediatek/ngin3d/Point;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    .line 274
    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Point;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lookAt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Point;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Stage$Camera;->position:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lookAt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Stage$Camera;->lookAt:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
