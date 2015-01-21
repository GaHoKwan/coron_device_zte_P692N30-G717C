.class public Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntEvaluator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator<Ljava/lang/Integer;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 40
    int-to-float v0, p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
