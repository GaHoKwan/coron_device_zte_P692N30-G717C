.class public Lcom/android/contacts/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "prefixHighlightColor"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"
    .parameter "prefix"

    .prologue
    const/4 v6, 0x0

    .line 55
    new-instance v1, Lcom/android/contacts/format/FormatUtils$OffsetValues;

    invoke-direct {v1, v6}, Lcom/android/contacts/format/FormatUtils$OffsetValues;-><init>(I)V

    .line 56
    .local v1, offsetValue:Lcom/android/contacts/format/FormatUtils$OffsetValues;
    invoke-static {p1, p2, v1}, Lcom/android/contacts/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;[CLcom/android/contacts/format/FormatUtils$OffsetValues;)I

    move-result v0

    .line 57
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-nez v3, :cond_0

    .line 59
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 62
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v2, result:Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/android/contacts/format/PrefixHighlighter;->mPrefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    array-length v4, p2

    add-int/2addr v4, v0

    iget v5, v1, Lcom/android/contacts/format/FormatUtils$OffsetValues;->mOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    .end local v2           #result:Landroid/text/SpannableString;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;[C)V
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "prefix"

    .prologue
    .line 45
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
