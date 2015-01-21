.class final Lcom/android/mms/model/SlideshowModel$1;
.super Ljava/lang/Object;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/w3c/dom/smil/SMILRegionElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    check-cast p1, Lorg/w3c/dom/smil/SMILRegionElement;

    .end local p1
    check-cast p2, Lorg/w3c/dom/smil/SMILRegionElement;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel$1;->compare(Lorg/w3c/dom/smil/SMILRegionElement;Lorg/w3c/dom/smil/SMILRegionElement;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/w3c/dom/smil/SMILRegionElement;Lorg/w3c/dom/smil/SMILRegionElement;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 280
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v0

    invoke-interface {p2}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    const/4 v0, -0x1

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v0

    invoke-interface {p2}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 283
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
