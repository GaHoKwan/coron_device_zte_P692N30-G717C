.class public Lcom/android/inputmethod/research/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;
    }
.end annotation


# static fields
.field public static final MIN_DELETION_INTERMISSION:I = 0x2710

.field public static final MIN_TYPING_INTERMISSION:I = 0x7d0

.field private static final sInstance:Lcom/android/inputmethod/research/Statistics;


# instance fields
.field final mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field final mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field mCharCount:I

.field mDeleteKeyCount:I

.field final mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field mIsEmptinessStateKnown:Z

.field mIsEmptyUponStarting:Z

.field mIsLastKeyDeleteKey:Z

.field final mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

.field private mLastTapTime:J

.field mLetterCount:I

.field mNumberCount:I

.field mSpaceCount:I

.field mWordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/inputmethod/research/Statistics;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics;-><init>()V

    sput-object v0, Lcom/android/inputmethod/research/Statistics;->sInstance:Lcom/android/inputmethod/research/Statistics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 41
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 42
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 43
    new-instance v0, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-direct {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    .line 84
    invoke-virtual {p0}, Lcom/android/inputmethod/research/Statistics;->reset()V

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/research/Statistics;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/inputmethod/research/Statistics;->sInstance:Lcom/android/inputmethod/research/Statistics;

    return-object v0
.end method


# virtual methods
.method public recordChar(IJ)V
    .locals 6
    .parameter "codePoint"
    .parameter "time"

    .prologue
    const-wide/16 v4, 0x2710

    .line 106
    iget-wide v2, p0, Lcom/android/inputmethod/research/Statistics;->mLastTapTime:J

    sub-long v0, p2, v2

    .line 107
    .local v0, delta:J
    const/4 v2, -0x4

    if-ne p1, v2, :cond_2

    .line 108
    iget v2, p0, Lcom/android/inputmethod/research/Statistics;->mDeleteKeyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mDeleteKeyCount:I

    .line 109
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 110
    iget-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/android/inputmethod/research/Statistics;->mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->add(J)V

    .line 116
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    .line 135
    :goto_1
    iput-wide p2, p0, Lcom/android/inputmethod/research/Statistics;->mLastTapTime:J

    .line 136
    return-void

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/research/Statistics;->mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->add(J)V

    goto :goto_0

    .line 118
    :cond_2
    iget v2, p0, Lcom/android/inputmethod/research/Statistics;->mCharCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mCharCount:I

    .line 119
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget v2, p0, Lcom/android/inputmethod/research/Statistics;->mNumberCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mNumberCount:I

    .line 122
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    iget v2, p0, Lcom/android/inputmethod/research/Statistics;->mLetterCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mLetterCount:I

    .line 125
    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    iget v2, p0, Lcom/android/inputmethod/research/Statistics;->mSpaceCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mSpaceCount:I

    .line 128
    :cond_5
    iget-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    if-eqz v2, :cond_7

    cmp-long v2, v0, v4

    if-gez v2, :cond_7

    .line 129
    iget-object v2, p0, Lcom/android/inputmethod/research/Statistics;->mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->add(J)V

    .line 133
    :cond_6
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    goto :goto_1

    .line 130
    :cond_7
    iget-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    if-nez v2, :cond_6

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 131
    iget-object v2, p0, Lcom/android/inputmethod/research/Statistics;->mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->add(J)V

    goto :goto_2
.end method

.method public recordWordEntered()V
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/inputmethod/research/Statistics;->mWordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/research/Statistics;->mWordCount:I

    .line 140
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mCharCount:I

    .line 89
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mLetterCount:I

    .line 90
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mNumberCount:I

    .line 91
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mSpaceCount:I

    .line 92
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mDeleteKeyCount:I

    .line 93
    iput v2, p0, Lcom/android/inputmethod/research/Statistics;->mWordCount:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/research/Statistics;->mIsEmptyUponStarting:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsEmptinessStateKnown:Z

    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mBeforeDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mDuringRepeatedDeleteKeysCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 99
    iget-object v0, p0, Lcom/android/inputmethod/research/Statistics;->mAfterDeleteKeyCounter:Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;

    invoke-virtual {v0}, Lcom/android/inputmethod/research/Statistics$AverageTimeCounter;->reset()V

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/research/Statistics;->mLastTapTime:J

    .line 102
    iput-boolean v2, p0, Lcom/android/inputmethod/research/Statistics;->mIsLastKeyDeleteKey:Z

    .line 103
    return-void
.end method

.method public setIsEmptyUponStarting(Z)V
    .locals 1
    .parameter "isEmpty"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/inputmethod/research/Statistics;->mIsEmptyUponStarting:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/research/Statistics;->mIsEmptinessStateKnown:Z

    .line 145
    return-void
.end method
