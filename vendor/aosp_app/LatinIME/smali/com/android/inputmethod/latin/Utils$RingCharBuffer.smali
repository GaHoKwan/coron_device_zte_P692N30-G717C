.class Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/inputmethodservice/InputMethodService;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 70
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 71
    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 72
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    .line 73
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    .line 74
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;
    .locals 2
    .parameter "context"
    .parameter "enabled"
    .parameter "usabilityStudy"

    .prologue
    .line 84
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    iput-object p0, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    .line 86
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    .line 87
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->init(Landroid/inputmethodservice/InputMethodService;)V

    .line 88
    sget-object v0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    goto :goto_0
.end method

.method private static normalize(I)I
    .locals 1
    .parameter "in"

    .prologue
    .line 91
    rem-int/lit8 v0, p0, 0x14

    .line 92
    .local v0, ret:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x14

    .end local v0           #ret:I
    :cond_0
    return v0
.end method


# virtual methods
.method public getBackwardNthChar(I)C
    .locals 2
    .parameter "n"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v0, p1, :cond_0

    if-gez p1, :cond_1

    .line 116
    :cond_0
    const v0, 0xfffc

    .line 118
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getLastWord(I)Ljava/lang/String;
    .locals 5
    .parameter "ignoreCharCount"

    .prologue
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, sb:Ljava/lang/StringBuilder;
    move v1, p1

    .line 142
    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-ge v1, v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 144
    .local v0, c:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    .end local v0           #c:C
    :cond_0
    :goto_1
    iget v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-ge v1, v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 150
    .restart local v0       #c:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mContext:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPreviousX(CI)I
    .locals 3
    .parameter "c"
    .parameter "back"

    .prologue
    .line 122
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 123
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 125
    :cond_0
    const/4 v1, -0x2

    .line 127
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getPreviousY(CI)I
    .locals 3
    .parameter "c"
    .parameter "back"

    .prologue
    .line 131
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 132
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 134
    :cond_0
    const/4 v1, -0x2

    .line 136
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public pop()C
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 107
    const v0, 0xfffc

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 110
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 111
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public push(CII)V
    .locals 2
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 98
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 100
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mEnd:I

    .line 101
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 102
    iget v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->mLength:I

    .line 160
    return-void
.end method
