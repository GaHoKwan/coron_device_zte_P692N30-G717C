.class public Lcom/mediatek/contacts/calllog/CallLogHighlighter;
.super Ljava/lang/Object;
.source "CallLogHighlighter.java"


# instance fields
.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "highlightColor"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mHighlightColor:I

    .line 39
    return-void
.end method

.method private applyInternationalCallText(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "textForHighlight"

    .prologue
    .line 110
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordForInternationalCall(Ljava/lang/CharSequence;[C)I

    move-result v0

    .line 111
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mHighlightColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 116
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v1, result:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v3, p2

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    .end local v1           #result:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private applyNameText(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "textForHighlight"

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[C)I

    move-result v0

    .line 96
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mHighlightColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 101
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    .local v1, result:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v3, p2

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    .end local v1           #result:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private applyNumberText(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"
    .parameter "textForHighlight"

    .prologue
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, ignore:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p2, :cond_1

    .line 90
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 76
    .restart local p1
    :cond_1
    invoke-static {p2}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->lettersAndDigitsOnly([C)[C

    move-result-object v1

    .line 77
    .local v1, handledText:[C
    invoke-static {p1, v1, v3}, Lcom/android/contacts/format/FormatUtils;->indexOfWordForLetterOrDigit(Ljava/lang/CharSequence;[CLjava/util/ArrayList;)I

    move-result v4

    .line 79
    .local v4, index:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    .line 80
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 81
    .local v6, stringBuilder:Landroid/text/SpannableString;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v2, v7, :cond_5

    .line 82
    if-nez v2, :cond_3

    move v5, v4

    .line 83
    .local v5, start:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v2, v7, :cond_4

    array-length v7, v1

    add-int/2addr v7, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v0, v7, v8

    .line 84
    .local v0, end:I
    :goto_3
    if-gt v5, v0, :cond_2

    .line 85
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget v8, p0, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->mHighlightColor:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 81
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 82
    .end local v0           #end:I
    .end local v5           #start:I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    goto :goto_2

    .line 83
    .restart local v5       #start:I
    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .end local v5           #start:I
    :cond_5
    move-object p1, v6

    .line 88
    goto :goto_0
.end method

.method private static lettersAndDigitsOnly([C)[C
    .locals 7
    .parameter "lettersOriginal"

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 126
    .local v4, letters:[C
    const/4 v2, 0x0

    .line 127
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 128
    aget-char v0, v4, v1

    .line 129
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    add-int/lit8 v3, v2, 0x1

    .end local v2           #length:I
    .local v3, length:I
    aput-char v0, v4, v2

    move v2, v3

    .line 127
    .end local v3           #length:I
    .restart local v2       #length:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v0           #c:C
    :cond_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    .line 135
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 138
    .end local v4           #letters:[C
    :cond_2
    return-object v4
.end method


# virtual methods
.method public applyName(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 0
    .parameter "text"
    .parameter "textForHighlight"

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 51
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->applyNameText(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public applyNumber(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"
    .parameter "textForHighlight"

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 67
    .end local p1
    :goto_0
    return-object p1

    .line 64
    .restart local p1
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->applyInternationalCallText(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/calllog/CallLogHighlighter;->applyNumberText(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method
