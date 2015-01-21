.class public Lcom/mediatek/ngin3d/HitTestResult;
.super Ljava/lang/Object;
.source "HitTestResult.java"


# instance fields
.field private mActor:Lcom/mediatek/ngin3d/Actor;

.field private mNode:Lcom/mediatek/ngin3d/ActorNode;

.field private mRayDirection:Lcom/mediatek/ngin3d/Point;

.field private mRayEnd:Lcom/mediatek/ngin3d/Point;

.field private mRayHit:Lcom/mediatek/ngin3d/Point;

.field private mRayHitNormal:Lcom/mediatek/ngin3d/Point;

.field private mRayStart:Lcom/mediatek/ngin3d/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor()Lcom/mediatek/ngin3d/Actor;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mActor:Lcom/mediatek/ngin3d/Actor;

    return-object v0
.end method

.method public getNode()Lcom/mediatek/ngin3d/ActorNode;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mNode:Lcom/mediatek/ngin3d/ActorNode;

    return-object v0
.end method

.method public getRayDirection()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayDirection:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayEnd()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayEnd:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayHit()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayHit:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayHitNormal()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayHitNormal:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayStart()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayStart:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public setActor(Lcom/mediatek/ngin3d/Actor;)V
    .locals 0
    .parameter "actor"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/ngin3d/HitTestResult;->mActor:Lcom/mediatek/ngin3d/Actor;

    .line 80
    return-void
.end method

.method public setNode(Lcom/mediatek/ngin3d/ActorNode;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/ngin3d/HitTestResult;->mNode:Lcom/mediatek/ngin3d/ActorNode;

    .line 99
    return-void
.end method

.method public setRay(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 0
    .parameter "rayStart"
    .parameter "rayDirection"
    .parameter "rayEnd"
    .parameter "rayHit"
    .parameter "rayHitNormal"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayStart:Lcom/mediatek/ngin3d/Point;

    .line 67
    iput-object p2, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayDirection:Lcom/mediatek/ngin3d/Point;

    .line 68
    iput-object p3, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayEnd:Lcom/mediatek/ngin3d/Point;

    .line 69
    iput-object p4, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayHit:Lcom/mediatek/ngin3d/Point;

    .line 70
    iput-object p5, p0, Lcom/mediatek/ngin3d/HitTestResult;->mRayHitNormal:Lcom/mediatek/ngin3d/Point;

    .line 71
    return-void
.end method
