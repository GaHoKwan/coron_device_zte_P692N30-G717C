.class Lcom/mediatek/ngin3d/Container$PropertyChainNode;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Lcom/mediatek/ngin3d/Base$PropertyChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PropertyChainNode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/Container;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/Container;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/ngin3d/Container$PropertyChainNode;->this$0:Lcom/mediatek/ngin3d/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAttachedProperty(Lcom/mediatek/ngin3d/Base;Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 197
    sget-object v2, Lcom/mediatek/ngin3d/Container;->ATTACHED_PROP_PARENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p2, v2}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container$PropertyChainNode;->this$0:Lcom/mediatek/ngin3d/Container;

    if-eq p3, v2, :cond_0

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unmatched child-parent!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ngin3d/Container$PropertyChainNode;->this$0:Lcom/mediatek/ngin3d/Container;

    iget-object v2, v2, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    if-nez v2, :cond_2

    .line 210
    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object v0, p1

    .line 205
    check-cast v0, Lcom/mediatek/ngin3d/Actor;

    .line 206
    .local v0, actor:Lcom/mediatek/ngin3d/Actor;
    iget-object v1, p0, Lcom/mediatek/ngin3d/Container$PropertyChainNode;->this$0:Lcom/mediatek/ngin3d/Container;

    iget-object v1, v1, Lcom/mediatek/ngin3d/Actor;->mPresentation:Lcom/mediatek/ngin3d/presentation/Presentation;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/Actor;->getPresentation()Lcom/mediatek/ngin3d/presentation/Presentation;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/ngin3d/presentation/Presentation;->addChild(Lcom/mediatek/ngin3d/presentation/Presentation;)V

    .line 207
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getInheritedProperty(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method
