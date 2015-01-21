.class public final Lcom/android/inputmethod/latin/RichInputConnection;
.super Ljava/lang/Object;
.source "RichInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/RichInputConnection$Range;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_BATCH_NESTING:Z = false

.field private static final DEBUG_PREVIOUS_TEXT:Z = false

.field private static final DEFAULT_TEXT_CACHE_SIZE:I = 0x64

.field private static final INVALID_CURSOR_POSITION:I = -0x1

.field private static final LOOKBACK_CHARACTER_NUM:I = 0x61

.field private static final TAG:Ljava/lang/String;

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# instance fields
.field private mCharAfterTheCursor:Ljava/lang/CharSequence;

.field private mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

.field private mComposingText:Ljava/lang/StringBuilder;

.field private mCurrentCursorPosition:I

.field mIC:Landroid/view/inputmethod/InputConnection;

.field mNestLevel:I

.field private final mParent:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/inputmethod/latin/RichInputConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    .line 52
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCharAfterTheCursor:Ljava/lang/CharSequence;

    .line 84
    iput-object p1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    .line 87
    return-void
.end method

.method private checkBatchEdit()V
    .locals 3

    .prologue
    .line 161
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Batch edit level incorrect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/inputmethod/latin/Utils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    return-void
.end method

.method private checkConsistencyForDebug()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 90
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 91
    .local v5, r:Landroid/view/inputmethod/ExtractedTextRequest;
    iput v9, v5, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 92
    iput v9, v5, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 93
    const/4 v7, 0x1

    iput v7, v5, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 94
    iput v9, v5, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 95
    iget-object v7, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v7, v5, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 96
    .local v3, et:Landroid/view/inputmethod/ExtractedText;
    const/16 v7, 0x64

    invoke-virtual {p0, v7, v9}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 97
    .local v1, beforeCursor:Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    .local v4, internal:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    .local v0, actualLength:I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v0, :cond_2

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 104
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-gt v7, v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, reference:Ljava/lang/String;
    :goto_1
    iget v7, v3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v8, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-ne v7, v8, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 109
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected cursor position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nActual cursor position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nExpected text = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nActual text = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, context:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    check-cast v7, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v7, v2}, Lcom/android/inputmethod/latin/LatinIME;->debugDumpStateAndCrashWithException(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v2           #context:Ljava/lang/String;
    .end local v6           #reference:Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 115
    .restart local v6       #reference:Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/inputmethod/latin/Utils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v7, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exp <> Actual : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCursorPosition()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 525
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 526
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-nez v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 528
    .local v0, extracted:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 531
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getNthPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "prev"
    .parameter "sentenceSeperators"
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 499
    if-nez p0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-object v2

    .line 500
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/RichInputConnection;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, w:[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, p2, :cond_0

    array-length v3, v1

    sub-int/2addr v3, p2

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 506
    array-length v3, v1

    sub-int/2addr v3, p2

    aget-object v3, v1, v3

    array-length v4, v1

    sub-int/2addr v4, p2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 507
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 509
    array-length v2, v1

    sub-int/2addr v2, p2

    aget-object v2, v1, v2

    goto :goto_0
.end method

.method private static isSeparator(ILjava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "sep"

    .prologue
    .line 478
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 3

    .prologue
    .line 121
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 123
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nest level too deep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4
    .parameter "completionInfo"

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 417
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 418
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 419
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 420
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 427
    :cond_0
    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .parameter "correctionInfo"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 411
    :cond_0
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "i"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 186
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 187
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 188
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 194
    :cond_0
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 4
    .parameter "i"
    .parameter "j"

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int v1, v2, p1

    .line 262
    .local v1, remainingChars:I
    if-ltz v1, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-le v2, p1, :cond_2

    .line 272
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 276
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 283
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    .local v0, len:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 274
    .end local v0           #len:I
    :cond_2
    iput v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v1, "Batch edit not in progress!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mNestLevel:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 143
    :cond_1
    return-void
.end method

.method public finishComposingText()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 172
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 173
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 180
    :cond_0
    return-void
.end method

.method public getCodePointBeforeCursor()I
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCursorCapsMode(ILjava/util/Locale;Z)I
    .locals 3
    .parameter "inputType"
    .parameter "locale"
    .parameter "hasSpaceBefore"

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 214
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_0

    .line 236
    :goto_0
    return v0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    if-eqz p3, :cond_1

    .line 219
    and-int/lit16 v0, p1, 0x3000

    goto :goto_0

    .line 222
    :cond_1
    and-int/lit16 v0, p1, 0x1000

    goto :goto_0

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v0}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2, p3}, Lcom/android/inputmethod/latin/StringUtils;->getCapsMode(Ljava/lang/CharSequence;ILjava/util/Locale;Z)I

    move-result v0

    goto :goto_0
.end method

.method public getNthPreviousWord(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "sentenceSeperators"
    .parameter "n"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 431
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 448
    :goto_0
    return-object v1

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    const/16 v2, 0x61

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 448
    .local v0, prev:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/RichInputConnection;->getNthPreviousWord(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 255
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWordAtCursor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "separators"

    .prologue
    .line 520
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordRangeAtCursor(Ljava/lang/String;I)Lcom/android/inputmethod/latin/RichInputConnection$Range;

    move-result-object v0

    .line 521
    .local v0, r:Lcom/android/inputmethod/latin/RichInputConnection$Range;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/inputmethod/latin/RichInputConnection$Range;->mWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWordBeforeCursorIfAtEndOfWord(Lcom/android/inputmethod/latin/SettingsValues;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "settings"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 639
    invoke-virtual {p0, v8, v7}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 640
    .local v2, textAfterCursor:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    .line 671
    :cond_0
    :goto_0
    return-object v3

    .line 645
    :cond_1
    iget-object v5, p1, Lcom/android/inputmethod/latin/SettingsValues;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/RichInputConnection;->getWordAtCursor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, word:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x27

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    .line 649
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v3, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 651
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 653
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 656
    .local v1, lastCodePoint:I
    invoke-static {v1}, Ljava/lang/Character;->isDefined(I)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v3, v4

    goto :goto_0

    .line 660
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    goto :goto_0

    .line 661
    :cond_5
    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 662
    .local v0, firstChar:C
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_6

    move-object v3, v4

    goto :goto_0

    .line 666
    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 668
    goto :goto_0
.end method

.method public getWordRangeAtCursor(Ljava/lang/String;I)Lcom/android/inputmethod/latin/RichInputConnection$Range;
    .locals 13
    .parameter "sep"
    .parameter "additionalPrecedingWordsCount"

    .prologue
    const/16 v11, 0x3e8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 543
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v10}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    iput-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 544
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v10, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v8, v9

    .line 596
    :goto_0
    return-object v8

    .line 547
    :cond_1
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v10, v11, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 548
    .local v1, before:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v10, v11, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 549
    .local v0, after:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move-object v8, v9

    .line 550
    goto :goto_0

    .line 555
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 556
    .local v6, start:I
    const/4 v5, 0x1

    .line 558
    .local v5, isStoppingAtWhitespace:Z
    :cond_4
    :goto_1
    if-lez v6, :cond_5

    .line 559
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 560
    .local v2, codePoint:I
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->isSeparator(ILjava/lang/String;)Z

    move-result v10

    if-ne v5, v10, :cond_8

    .line 571
    .end local v2           #codePoint:I
    :cond_5
    if-eqz v5, :cond_9

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_9

    .line 578
    const/4 v4, -0x1

    .line 579
    .local v4, end:I
    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 580
    invoke-static {v0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 581
    .restart local v2       #codePoint:I
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/RichInputConnection;->isSeparator(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 589
    .end local v2           #codePoint:I
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/latin/RichInputConnection;->getCursorPosition()I

    move-result v3

    .line 590
    .local v3, cursor:I
    if-ltz v6, :cond_c

    add-int v10, v3, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/2addr v11, v12

    if-gt v10, v11, :cond_c

    .line 591
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, word:Ljava/lang/String;
    new-instance v8, Lcom/android/inputmethod/latin/RichInputConnection$Range;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-direct {v8, v9, v4, v7}, Lcom/android/inputmethod/latin/RichInputConnection$Range;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 563
    .end local v3           #cursor:I
    .end local v4           #end:I
    .end local v7           #word:Ljava/lang/String;
    .restart local v2       #codePoint:I
    :cond_8
    add-int/lit8 v6, v6, -0x1

    .line 564
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 565
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 574
    .end local v2           #codePoint:I
    :cond_9
    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    goto :goto_1

    :cond_a
    move v5, v8

    goto :goto_3

    .line 584
    .restart local v2       #codePoint:I
    .restart local v4       #end:I
    :cond_b
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 585
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #codePoint:I
    .restart local v3       #cursor:I
    :cond_c
    move-object v8, v9

    .line 596
    goto/16 :goto_0
.end method

.method public isBelatedExpectedUpdate(II)Z
    .locals 4
    .parameter "oldSelStart"
    .parameter "newSelStart"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 733
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-ne p2, v2, :cond_1

    .line 740
    :cond_0
    :goto_0
    return v0

    .line 736
    :cond_1
    iget v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-ne p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 740
    :cond_2
    sub-int v2, p2, p1

    iget v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    sub-int/2addr v3, p2

    mul-int/2addr v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isCursorTouchingWord(Lcom/android/inputmethod/latin/SettingsValues;)Z
    .locals 5
    .parameter "settingsValues"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 600
    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 604
    .local v1, before:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v2

    .line 609
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 611
    .local v0, after:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/inputmethod/latin/SettingsValues;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    .line 615
    goto :goto_0
.end method

.method public performEditorAction(I)V
    .locals 1
    .parameter "actionId"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mParent:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    .line 287
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 293
    :cond_0
    return-void
.end method

.method public removeTrailingSpace()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 620
    invoke-virtual {p0, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 621
    .local v0, lastOne:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 623
    invoke-virtual {p0, v4, v3}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 625
    :cond_0
    return-void
.end method

.method public resetCachesUponCursorMove(I)V
    .locals 3
    .parameter "newCursorPosition"

    .prologue
    const/4 v2, 0x0

    .line 146
    iput p1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 147
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCharAfterTheCursor:Ljava/lang/CharSequence;

    .line 152
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 158
    :cond_1
    return-void
.end method

.method public revertDoubleSpace()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 678
    invoke-virtual {p0, v4, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 679
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    const-string v3, ". "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    sget-object v2, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v3, "Tried to revert double-space combo but we didn\'t find \". \" just before the cursor."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :goto_0
    return v1

    .line 687
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 688
    const-string v1, "  "

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    move v1, v2

    .line 689
    goto :goto_0
.end method

.method public revertSwapPunctuation()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0, v5, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 699
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 704
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v3, "Tried to revert a swap of punctuation but we didn\'t find a space just before the cursor."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 710
    :goto_0
    return v1

    .line 708
    :cond_1
    invoke-virtual {p0, v5, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->deleteSurroundingText(II)V

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/inputmethod/latin/RichInputConnection;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public sameAsTextBeforeCursor(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 628
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 629
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    aput v2, v1, v3

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([III)V

    .line 330
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 335
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v1, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 341
    :cond_1
    return-void

    .line 307
    :sswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_0

    .line 311
    :sswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 320
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_0

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public setComposingRegion(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 346
    iput p2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 347
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2, v4}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 352
    .local v1, textBeforeCursor:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 353
    sget-object v2, Lcom/android/inputmethod/latin/RichInputConnection;->TAG:Ljava/lang/String;

    const-string v3, "Error state for current input connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid InputConnection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 359
    .local v0, indexOfStartOfComposingText:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 362
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-interface {v1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v2, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 367
    :cond_1
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "i"

    .prologue
    .line 372
    iget v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 373
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 374
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 383
    :cond_0
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mIC:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 394
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCurrentCursorPosition:I

    .line 395
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 396
    iget-object v0, p0, Lcom/android/inputmethod/latin/RichInputConnection;->mCommittedTextBeforeComposingText:Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/RichInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 397
    return-void
.end method
