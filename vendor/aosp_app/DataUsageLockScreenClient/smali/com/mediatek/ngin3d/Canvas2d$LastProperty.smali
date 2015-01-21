.class Lcom/mediatek/ngin3d/Canvas2d$LastProperty;
.super Lcom/mediatek/ngin3d/Property;
.source "Canvas2d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Canvas2d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mediatek/ngin3d/Property",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;,"Lcom/mediatek/ngin3d/Canvas2d$LastProperty<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    .line 58
    return-void
.end method


# virtual methods
.method public dependsOn(Lcom/mediatek/ngin3d/Property;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 62
    .local p0, this:Lcom/mediatek/ngin3d/Canvas2d$LastProperty;,"Lcom/mediatek/ngin3d/Canvas2d$LastProperty<TT;>;"
    if-ne p0, p1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
