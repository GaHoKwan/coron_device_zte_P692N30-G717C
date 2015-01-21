.class Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByGrayPercent;
.super Ljava/lang/Object;
.source "BestShotSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/BestShotSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortByGrayPercent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/BestShotSelector;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/conshots/BestShotSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByGrayPercent;->this$0:Lcom/mediatek/gallery3d/conshots/BestShotSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;)I
    .locals 5
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    const/high16 v4, 0x447a

    .line 359
    iget v2, p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mGrayPercent:F

    mul-float/2addr v2, v4

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 360
    .local v0, gray1:Ljava/math/BigInteger;
    iget v2, p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mGrayPercent:F

    mul-float/2addr v2, v4

    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 361
    .local v1, gray2:Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    check-cast p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .end local p1
    check-cast p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByGrayPercent;->compare(Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;)I

    move-result v0

    return v0
.end method
