.class public Lcom/android/inputmethod/keyboard/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# instance fields
.field private mCorrectionX:I

.field private mCorrectionY:I

.field private final mKeyHysteresisDistanceForSlidingModifierSquared:I

.field private final mKeyHysteresisDistanceSquared:I

.field private mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "keyHysteresisDistance"

    .prologue
    .line 37
    invoke-direct {p0, p1, p1}, Lcom/android/inputmethod/keyboard/KeyDetector;-><init>(FF)V

    .line 38
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "keyHysteresisDistance"
    .parameter "keyHysteresisDistanceForSlidingModifier"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    mul-float v0, p1, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyHysteresisDistanceSquared:I

    .line 50
    mul-float v0, p2, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyHysteresisDistanceForSlidingModifierSquared:I

    .line 52
    return-void
.end method

.method public static printableCode(Lcom/android/inputmethod/keyboard/Key;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 121
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    invoke-static {v0}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public static printableCodes([I)Ljava/lang/String;
    .locals 8
    .parameter "codes"

    .prologue
    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 127
    .local v0, addDelimiter:Z
    move-object v1, p0

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v1, v3

    .line 128
    .local v2, code:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 133
    .end local v2           #code:I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 129
    .restart local v2       #code:I
    :cond_1
    if-eqz v0, :cond_2

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->printableCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/4 v0, 0x1

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public alwaysAllowsSlidingInput()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public detectHitKey(II)Lcom/android/inputmethod/keyboard/Key;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchX(I)I

    move-result v7

    .line 97
    .local v7, touchX:I
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/keyboard/KeyDetector;->getTouchY(I)I

    move-result v8

    .line 99
    .local v8, touchY:I
    const v5, 0x7fffffff

    .line 100
    .local v5, minDistance:I
    const/4 v6, 0x0

    .line 101
    .local v6, primaryKey:Lcom/android/inputmethod/keyboard/Key;
    iget-object v9, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v9, v7, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[Lcom/android/inputmethod/keyboard/Key;

    move-result-object v0

    .local v0, arr$:[Lcom/android/inputmethod/keyboard/Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 104
    .local v3, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v3, v7, v8}, Lcom/android/inputmethod/keyboard/Key;->isOnKey(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 101
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v3, v7, v8}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v1

    .line 108
    .local v1, distance:I
    if-gt v1, v5, :cond_0

    .line 112
    if-eqz v6, :cond_2

    if-lt v1, v5, :cond_2

    iget v9, v3, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    iget v10, v6, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    if-le v9, v10, :cond_0

    .line 113
    :cond_2
    move v5, v1

    .line 114
    move-object v6, v3

    goto :goto_1

    .line 117
    .end local v1           #distance:I
    .end local v3           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_3
    return-object v6
.end method

.method public getKeyHysteresisDistanceSquared(Z)I
    .locals 1
    .parameter "isSlidingFromModifier"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyHysteresisDistanceForSlidingModifierSquared:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyHysteresisDistanceSquared:I

    goto :goto_0
.end method

.method public getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    return-object v0
.end method

.method public getTouchX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getTouchY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)V
    .locals 1
    .parameter "keyboard"
    .parameter "correctionX"
    .parameter "correctionY"

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    float-to-int v0, p2

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionX:I

    .line 59
    float-to-int v0, p3

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionY:I

    .line 60
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 61
    return-void
.end method
