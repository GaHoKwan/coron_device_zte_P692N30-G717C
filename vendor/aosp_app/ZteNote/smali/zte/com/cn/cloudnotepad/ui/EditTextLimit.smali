.class public Lzte/com/cn/cloudnotepad/ui/EditTextLimit;
.super Ljava/lang/Object;
.source "EditTextLimit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTextLimit"


# instance fields
.field private mBefore:I

.field private mCount:I

.field private mEditText:Landroid/widget/EditText;

.field private mSample:Ljava/lang/String;

.field private mStart:I

.field private maxCharCount:I


# direct methods
.method public constructor <init>(ILandroid/widget/EditText;)V
    .locals 3
    .parameter "charCount"
    .parameter "editText"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mEditText:Landroid/widget/EditText;

    .line 29
    iput p1, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->maxCharCount:I

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->maxCharCount:I

    if-lt v0, v2, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mSample:Ljava/lang/String;

    .line 36
    return-void

    .line 33
    :cond_0
    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "arg0"

    .prologue
    .line 41
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 42
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->isExceed()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mBefore:I

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mCount:I

    if-ge v4, v5, :cond_1

    .line 43
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 44
    .local v1, len:I
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, str:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mStart:I

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mStart:I

    iget v6, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mCount:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, newStr:Ljava/lang/String;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mStart:I

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 51
    .end local v1           #len:I
    .end local v2           #newStr:Ljava/lang/String;
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mStart:I

    if-nez v4, :cond_0

    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mBefore:I

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mCount:I

    if-le v4, v5, :cond_0

    .line 49
    iget v4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mStart:I

    iget v5, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mCount:I

    add-int/2addr v4, v5

    invoke-static {v0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 57
    return-void
.end method

.method public isExceed()Z
    .locals 4

    .prologue
    .line 79
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 80
    .local v2, tp:Landroid/text/TextPaint;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 81
    .local v0, curWidth:F
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mSample:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 82
    .local v1, maxWidth:F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 72
    iput p2, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mStart:I

    .line 73
    iput p3, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mBefore:I

    .line 74
    iput p4, p0, Lzte/com/cn/cloudnotepad/ui/EditTextLimit;->mCount:I

    .line 75
    return-void
.end method
