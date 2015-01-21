.class Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;
.super Lcom/mediatek/ngin3d/Transaction$Modification;
.source "ImplicitAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/ImplicitAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyModification"
.end annotation


# instance fields
.field public mFromValue:Ljava/lang/Object;

.field public mProperty:Lcom/mediatek/ngin3d/Property;

.field public mTarget:Lcom/mediatek/ngin3d/Actor;

.field public mToValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/ImplicitAnimation;Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter "target"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/Transaction$Modification;-><init>(Lcom/mediatek/ngin3d/Transaction;)V

    .line 61
    iput-object p2, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mTarget:Lcom/mediatek/ngin3d/Actor;

    .line 62
    iput-object p3, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mProperty:Lcom/mediatek/ngin3d/Property;

    .line 63
    iput-object p4, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mToValue:Ljava/lang/Object;

    .line 66
    instance-of v0, p4, Lcom/mediatek/ngin3d/Point;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/mediatek/ngin3d/Point;

    .end local p4
    iget-boolean v0, p4, Lcom/mediatek/ngin3d/Point;->isNormalized:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mProperty:Lcom/mediatek/ngin3d/Property;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->getPresentationValue(Lcom/mediatek/ngin3d/Property;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mFromValue:Ljava/lang/Object;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mFromValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p2, p3}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mFromValue:Ljava/lang/Object;

    .line 77
    :cond_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/Actor;->getPresentationValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mFromValue:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected apply()V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->buildAnimation()Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    .line 86
    .local v0, animation:Lcom/mediatek/ngin3d/animation/BasicAnimation;
    new-instance v1, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification$1;-><init>(Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/Animation;->addListener(Lcom/mediatek/ngin3d/animation/Animation$Listener;)V

    .line 100
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->start()Lcom/mediatek/ngin3d/animation/Animation;

    .line 101
    return-void
.end method

.method public buildAnimation()Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mProperty:Lcom/mediatek/ngin3d/Property;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mFromValue:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->mToValue:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;-><init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/Transaction;->mAlphaMode:Lcom/mediatek/ngin3d/animation/Mode;

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setMode(Lcom/mediatek/ngin3d/animation/Mode;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ngin3d/ImplicitAnimation$PropertyModification;->this$0:Lcom/mediatek/ngin3d/ImplicitAnimation;

    iget v1, v1, Lcom/mediatek/ngin3d/Transaction;->mAnimationDuration:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->setDuration(I)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    return-object v0
.end method
