.class abstract Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;
.super Ljava/lang/Object;
.source "PropertyAnimation.java"

# interfaces
.implements Lcom/mediatek/ngin3d/animation/Alpha$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/animation/PropertyAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Interpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method private constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V

    return-void
.end method


# virtual methods
.method public onCompleted(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    invoke-virtual {v0, p1}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->onCompleted(I)V

    .line 83
    return-void
.end method

.method public onPaused()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->onPaused()V

    .line 79
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->onStarted()V

    .line 75
    return-void
.end method
