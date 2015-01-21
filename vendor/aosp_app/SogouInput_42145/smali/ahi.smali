.class public Lahi;
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
    .line 120
    iput-object p1, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lahi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lahi;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    :goto_1
    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :try_start_0
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_3

    .line 132
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

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahi;->a:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 136
    if-le v0, v1, :cond_2

    move v0, v1

    .line 137
    :cond_2
    iget-object v3, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 139
    iget-object v0, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    iget-object v3, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    const v4, 0x7f0b0235

    invoke-virtual {v3, v4}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 129
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
    .line 153
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

    .line 158
    iget-object v0, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lahi;->a:Lcom/sohu/inputmethod/settings/UserSymbolEdit;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/UserSymbolEdit;->a(Lcom/sohu/inputmethod/settings/UserSymbolEdit;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
