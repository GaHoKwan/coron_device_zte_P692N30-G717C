.class Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/research/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AverageTimeCounter"
.end annotation


# instance fields
.field mCount:I

.field mTotalTime:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .parameter "deltaTime"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mCount:I

    .line 56
    iget v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mTotalTime:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mTotalTime:I

    .line 57
    return-void
.end method

.method public getAverageTime()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mCount:I

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mTotalTime:I

    iget v1, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mCount:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mCount:I

    .line 51
    iput v0, p0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->mTotalTime:I

    .line 52
    return-void
.end method
