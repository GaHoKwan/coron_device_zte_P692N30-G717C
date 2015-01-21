.class Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;
.super Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
.source "RenderingHints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/misc/RenderingHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyImpl"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "key"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;-><init>(I)V

    .line 246
    return-void
.end method


# virtual methods
.method public isCompatibleValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x0

    .line 250
    instance-of v1, p1, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    if-nez v1, :cond_1

    .line 254
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    .end local p1
    #getter for: Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;->key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
    invoke-static {p1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;->access$000(Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;)Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
