.class public Lahj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lahj;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lahj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    :goto_1
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 178
    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahj;->a:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 183
    if-le v0, v1, :cond_2

    move v0, v1

    .line 184
    :cond_2
    iget-object v3, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->b(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 186
    iget-object v0, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    iget-object v3, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    const v4, 0x7f0b0236

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 176
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 206
    iget-object v0, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lahj;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
