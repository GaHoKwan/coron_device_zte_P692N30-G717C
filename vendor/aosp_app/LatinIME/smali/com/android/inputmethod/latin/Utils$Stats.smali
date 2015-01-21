.class public final Lcom/android/inputmethod/latin/Utils$Stats;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAutoCorrection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 4
    .parameter "typedWord"
    .parameter "correctedWord"
    .parameter "separatorString"
    .parameter "wordComposer"

    .prologue
    .line 416
    invoke-virtual {p3}, Lcom/android/inputmethod/latin/WordComposer;->isBatchMode()Z

    move-result v1

    .line 417
    .local v1, isBatchMode:Z
    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, -0x1

    .line 423
    .local v0, codePoint:I
    :goto_1
    if-nez v1, :cond_3

    .line 424
    invoke-static {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrectionForTyping(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 421
    .end local v0           #codePoint:I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    goto :goto_1

    .line 426
    .restart local v0       #codePoint:I
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    const-string v2, ""

    invoke-virtual {p3}, Lcom/android/inputmethod/latin/WordComposer;->getInputPointers()Lcom/android/inputmethod/latin/InputPointers;

    move-result-object v3

    invoke-static {v2, p1, v0, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrectionForGeometric(Ljava/lang/String;Ljava/lang/String;ILcom/android/inputmethod/latin/InputPointers;)V

    goto :goto_0
.end method

.method public static onAutoCorrectionCancellation()V
    .locals 0

    .prologue
    .line 436
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoCorrectionCancelled()V

    .line 437
    return-void
.end method

.method public static onNonSeparator(CII)V
    .locals 1
    .parameter "code"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 394
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->push(CII)V

    .line 395
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputChar()V

    .line 396
    return-void
.end method

.method public static onSeparator(III)V
    .locals 4
    .parameter "code"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [I

    aput p0, v1, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([III)V

    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/Utils$Stats;->onSeparator(Ljava/lang/String;II)V

    .line 402
    return-void
.end method

.method public static onSeparator(Ljava/lang/String;II)V
    .locals 5
    .parameter "separator"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 406
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 407
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 409
    .local v0, codePoint:I
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v3

    int-to-char v4, v0

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->push(CII)V

    .line 406
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v1

    goto :goto_0

    .line 411
    .end local v0           #codePoint:I
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputSeparator()V

    .line 412
    return-void
.end method
