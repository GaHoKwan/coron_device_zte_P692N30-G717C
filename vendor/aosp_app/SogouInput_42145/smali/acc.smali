.class Lacc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Labz;


# direct methods
.method constructor <init>(Labz;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lacc;->a:Labz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lacc;->a:Labz;

    iget-object v2, p0, Lacc;->a:Labz;

    invoke-static {v2}, Labz;->a(Labz;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-static {v0, v2}, Labz;->a(Labz;Landroid/util/SparseBooleanArray;)[I

    move-result-object v3

    .line 115
    array-length v0, v3

    if-lez v0, :cond_1

    .line 116
    iget-object v0, p0, Lacc;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Ljava/util/Vector;

    move-result-object v0

    aget v2, v3, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    iget-object v0, v0, Labw;->a:Labu;

    .line 125
    iget-object v2, p0, Lacc;->a:Labz;

    invoke-static {v2}, Labz;->a(Labz;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->c()V

    .line 126
    iget-object v2, p0, Lacc;->a:Labz;

    invoke-static {v2}, Labz;->a(Labz;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Labu;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lacc;->a:Labz;

    invoke-static {v5}, Labz;->a(Labz;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "singleLine:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lacc;->a:Labz;

    invoke-static {v4}, Labz;->a(Labz;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labz;->a(Ljava/lang/String;)V

    move v2, v1

    move-object v1, v0

    .line 128
    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_3

    .line 129
    aget v4, v3, v2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labz;->a(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lacc;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    .line 132
    iget-object v5, v0, Labw;->a:Labu;

    if-eq v5, v1, :cond_0

    .line 133
    iget-object v1, p0, Lacc;->a:Labz;

    invoke-static {v1}, Labz;->a(Labz;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labw;

    iget-object v1, v1, Labw;->a:Labu;

    .line 134
    iget-object v4, p0, Lacc;->a:Labz;

    invoke-static {v4}, Labz;->a(Labz;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Labu;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lacc;->a:Labz;

    invoke-static {v6}, Labz;->a(Labz;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    iget-object v4, p0, Lacc;->a:Labz;

    invoke-static {v4}, Labz;->a(Labz;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Labw;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, p0, Lacc;->a:Labz;

    invoke-static {v4}, Labz;->a(Labz;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Labw;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lacc;->a:Labz;

    invoke-static {v5}, Labz;->a(Labz;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Ljava/lang/CharSequence;)V

    .line 128
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 118
    :cond_1
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->P()V

    .line 119
    :cond_2
    iget-object v0, p0, Lacc;->a:Labz;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Labz;->a(Labz;I)I

    .line 120
    iget-object v0, p0, Lacc;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 141
    :goto_1
    return-void

    .line 139
    :cond_3
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->O()V

    .line 140
    :cond_4
    iget-object v0, p0, Lacc;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1
.end method
