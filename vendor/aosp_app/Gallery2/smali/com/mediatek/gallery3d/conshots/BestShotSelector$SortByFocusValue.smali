.class Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByFocusValue;
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
    name = "SortByFocusValue"
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
    .line 343
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByFocusValue;->this$0:Lcom/mediatek/gallery3d/conshots/BestShotSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;)I
    .locals 3
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 345
    iget v2, p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-ne v2, v1, :cond_1

    iget v2, p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-eq v2, v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    iget v2, p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-eq v2, v1, :cond_2

    iget v2, p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 348
    goto :goto_0

    .line 349
    :cond_2
    iget v2, p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-ne v2, v1, :cond_0

    iget v2, p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mWave:I

    if-ne v2, v1, :cond_0

    .line 350
    iget-object v0, p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;->mFocusValue:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    check-cast p1, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .end local p1
    check-cast p2, Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/conshots/BestShotSelector$SortByFocusValue;->compare(Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;Lcom/mediatek/gallery3d/conshots/BestShotSelector$Entry;)I

    move-result v0

    return v0
.end method
