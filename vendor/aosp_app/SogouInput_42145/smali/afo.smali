.class public Lafo;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/RegisterActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    .line 394
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 395
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    if-ge p5, p6, :cond_1

    :try_start_0
    iget-object v1, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

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

    .line 402
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

    .line 404
    :cond_0
    iget-object v2, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

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

    invoke-static {}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 405
    iget-object v0, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    iget-object v1, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/settings/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;Ljava/lang/CharSequence;)V

    .line 406
    invoke-static {}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a()I

    move-result v0

    iget-object v1, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 407
    if-nez v0, :cond_2

    const-string v0, ""

    .line 419
    :goto_1
    return-object v0

    :cond_1
    move v1, v0

    .line 400
    goto :goto_0

    .line 408
    :cond_2
    :goto_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GBK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 409
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 412
    :cond_4
    iget-object v0, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 413
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_5

    .line 414
    iget-object v0, p0, Lafo;->a:Lcom/sohu/inputmethod/settings/RegisterActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/RegisterActivity;->a(Lcom/sohu/inputmethod/settings/RegisterActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v3, p3

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 419
    invoke-super/range {v0 .. v6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    move v3, p3

    .line 417
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3
.end method
