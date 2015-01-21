.class Lcom/android/calculator2/CalculatorEditable;
.super Landroid/text/SpannableStringBuilder;
.source "CalculatorEditable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorEditable$1;,
        Lcom/android/calculator2/CalculatorEditable$Factory;
    }
.end annotation


# static fields
.field private static final MAX_INPUT_LENGTH:I = 0x32

.field private static final ORIGINALS:[C

.field private static final REPLACEMENTS:[C


# instance fields
.field private isInsideReplace:Z

.field private mLogic:Lcom/android/calculator2/Logic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 23
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calculator2/CalculatorEditable;->ORIGINALS:[C

    .line 24
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calculator2/CalculatorEditable;->REPLACEMENTS:[C

    return-void

    .line 23
    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2at 0x0t
        0x2ft 0x0t
    .end array-data

    .line 24
    nop

    :array_1
    .array-data 0x2
        0x12t 0x22t
        0xd7t 0x0t
        0xf7t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;)V
    .locals 1
    .parameter "source"
    .parameter "logic"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    .line 31
    iput-object p2, p0, Lcom/android/calculator2/CalculatorEditable;->mLogic:Lcom/android/calculator2/Logic;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;Lcom/android/calculator2/CalculatorEditable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/calculator2/CalculatorEditable;-><init>(Ljava/lang/CharSequence;Lcom/android/calculator2/Logic;)V

    return-void
.end method

.method private internalReplace(IILjava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "delta"

    .prologue
    const/16 v9, 0x2e

    const/4 v5, 0x0

    const/16 v8, 0x2212

    .line 67
    iget-object v6, p0, Lcom/android/calculator2/CalculatorEditable;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v6, p3}, Lcom/android/calculator2/Logic;->acceptInsert(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    iget-object v6, p0, Lcom/android/calculator2/CalculatorEditable;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v6}, Lcom/android/calculator2/Logic;->cleared()V

    .line 69
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 73
    :cond_0
    sget-object v6, Lcom/android/calculator2/CalculatorEditable;->ORIGINALS:[C

    array-length v6, v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 74
    sget-object v6, Lcom/android/calculator2/CalculatorEditable;->ORIGINALS:[C

    aget-char v6, v6, v0

    sget-object v7, Lcom/android/calculator2/CalculatorEditable;->REPLACEMENTS:[C

    aget-char v7, v7, v0

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 73
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 78
    .local v1, length:I
    const/4 v6, 0x1

    if-ne v1, v6, :cond_9

    .line 79
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 82
    .local v4, text:C
    if-ne v4, v9, :cond_3

    .line 83
    add-int/lit8 v2, p1, -0x1

    .line 84
    .local v2, p:I
    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 87
    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_3

    .line 88
    const-string v5, ""

    invoke-super {p0, p1, p2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 113
    .end local v2           #p:I
    .end local v4           #text:C
    :goto_2
    return-object v5

    .line 92
    .restart local v4       #text:C
    :cond_3
    if-lez p1, :cond_4

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 95
    .local v3, prevChar:C
    :goto_3
    if-ne v4, v8, :cond_5

    if-ne v3, v8, :cond_5

    .line 96
    const-string v5, ""

    invoke-super {p0, p1, p2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_2

    .end local v3           #prevChar:C
    :cond_4
    move v3, v5

    .line 92
    goto :goto_3

    .line 100
    .restart local v3       #prevChar:C
    :cond_5
    invoke-static {v4}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    :goto_4
    invoke-static {v3}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ne v4, v8, :cond_6

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_8

    .line 103
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 104
    if-lez p1, :cond_7

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    :goto_5
    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_5

    .line 109
    :cond_8
    if-nez p1, :cond_9

    invoke-static {v4}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eq v4, v8, :cond_9

    .line 110
    const-string v5, ""

    invoke-super {p0, p1, p2, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_2

    .line 113
    .end local v3           #prevChar:C
    .end local v4           #text:C
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 22
    invoke-virtual/range {p0 .. p5}, Lcom/android/calculator2/CalculatorEditable;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "tb"
    .parameter "tbstart"
    .parameter "tbend"

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 42
    .local v8, origLength:I
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 45
    .local v7, deltaLength:I
    add-int v0, v8, v7

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 46
    rsub-int/lit8 v9, v8, 0x32

    .line 47
    .local v9, remainLength:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Edit view has already contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chars, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "and has accepted only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chars, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "while the input length is actually "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calculator2/Calculator;->log(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/android/calculator2/Calculator;->vibrate()V

    .line 51
    add-int v5, p4, v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 61
    .end local v7           #deltaLength:I
    .end local v8           #origLength:I
    .end local v9           #remainLength:I
    :goto_0
    return-object v0

    .line 54
    .restart local v7       #deltaLength:I
    .restart local v8       #origLength:I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    .line 56
    .end local v7           #deltaLength:I
    .end local v8           #origLength:I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    .line 58
    :try_start_0
    invoke-interface {p3, p4, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, delta:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v6}, Lcom/android/calculator2/CalculatorEditable;->internalReplace(IILjava/lang/String;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 61
    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    goto :goto_0

    .end local v6           #delta:Ljava/lang/String;
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/calculator2/CalculatorEditable;->isInsideReplace:Z

    throw v0
.end method
