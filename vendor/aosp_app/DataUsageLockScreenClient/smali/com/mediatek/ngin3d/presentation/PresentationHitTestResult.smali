.class public Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;
.super Ljava/lang/Object;
.source "PresentationHitTestResult.java"


# instance fields
.field private mActorNodePresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

.field private mActorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

.field private mRayDirection:Lcom/mediatek/ngin3d/Point;

.field private mRayHit:Lcom/mediatek/ngin3d/Point;

.field private mRayHitNormal:Lcom/mediatek/ngin3d/Point;

.field private mRayStart:Lcom/mediatek/ngin3d/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorNodePresentation()Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mActorNodePresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    return-object v0
.end method

.method public getActorPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mActorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    return-object v0
.end method

.method public getRayDirection()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayDirection:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayHit()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayHit:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayHitNormal()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayHitNormal:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public getRayStart()Lcom/mediatek/ngin3d/Point;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayStart:Lcom/mediatek/ngin3d/Point;

    return-object v0
.end method

.method public setActorNodePresentation(Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;)V
    .locals 0
    .parameter "nodePresentation"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mActorNodePresentation:Lcom/mediatek/ngin3d/presentation/IActorNodePresentation;

    .line 92
    return-void
.end method

.method public setActorPresentation(Lcom/mediatek/ngin3d/presentation/Presentation;)V
    .locals 0
    .parameter "actorPresentation"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mActorPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    .line 76
    return-void
.end method

.method public setRay(Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;Lcom/mediatek/ngin3d/Point;)V
    .locals 0
    .parameter "rayStart"
    .parameter "rayDirection"
    .parameter "rayHit"
    .parameter "rayHitNormal"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayStart:Lcom/mediatek/ngin3d/Point;

    .line 65
    iput-object p2, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayDirection:Lcom/mediatek/ngin3d/Point;

    .line 66
    iput-object p3, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayHit:Lcom/mediatek/ngin3d/Point;

    .line 67
    iput-object p4, p0, Lcom/mediatek/ngin3d/presentation/PresentationHitTestResult;->mRayHitNormal:Lcom/mediatek/ngin3d/Point;

    .line 68
    return-void
.end method
