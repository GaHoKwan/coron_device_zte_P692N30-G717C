.class public Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatEvaluator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lcom/actionbarsherlock/internal/nineoldandroids/animation/TypeEvaluator<Ljava/lang/Number;>;"
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
.method public evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 1

    .line 0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 40
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {p0, p1, v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method