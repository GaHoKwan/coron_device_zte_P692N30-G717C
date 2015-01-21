.class public Ladb;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/FeedBackActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/FeedBackActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    .line 250
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 251
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 256
    if-ge p5, p6, :cond_1

    :try_start_0
    iget-object v1, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p5, p6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 258
    :goto_0
    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    .line 260
    :cond_0
    iget-object v2, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    iget-object v1, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/CharSequence;)V

    .line 262
    const-string v0, ""

    .line 269
    :goto_1
    return-object v0

    :cond_1
    move v1, v0

    .line 256
    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ladb;->a:Lcom/sohu/inputmethod/settings/FeedBackActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method
