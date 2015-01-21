.class Lcom/mediatek/ngin3d/Base$1;
.super Ljava/lang/Object;
.source "Base.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/Base;->applyAllProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/ngin3d/Property;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/Base;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/Base;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mediatek/ngin3d/Base$1;->this$0:Lcom/mediatek/ngin3d/Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/ngin3d/Property;Lcom/mediatek/ngin3d/Property;)I
    .locals 2
    .parameter "prop1"
    .parameter "prop2"

    .prologue
    .line 288
    invoke-virtual {p1, p2}, Lcom/mediatek/ngin3d/Property;->dependsOn(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    .line 291
    :cond_0
    invoke-virtual {p2, p1}, Lcom/mediatek/ngin3d/Property;->dependsOn(Lcom/mediatek/ngin3d/Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, -0x1

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mediatek/ngin3d/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    check-cast p1, Lcom/mediatek/ngin3d/Property;

    .end local p1
    check-cast p2, Lcom/mediatek/ngin3d/Property;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ngin3d/Base$1;->compare(Lcom/mediatek/ngin3d/Property;Lcom/mediatek/ngin3d/Property;)I

    move-result v0

    return v0
.end method
