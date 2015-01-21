.class public Laqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 6083
    iput-object p1, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    .line 6086
    iget-object v0, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labz;

    move-result-object v0

    invoke-virtual {v0}, Labz;->a()I

    move-result v0

    .line 6087
    packed-switch v0, :pswitch_data_0

    .line 6096
    :goto_0
    return-void

    .line 6089
    :pswitch_0
    iget-object v0, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v1

    iget-object v2, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Laor;

    move-result-object v2

    iget-object v3, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Lcom/sohu/inputmethod/sogou/SogouIME;)I

    move-result v3

    invoke-virtual {v2, v3}, Laor;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;ILjava/lang/CharSequence;I)Z

    goto :goto_0

    .line 6093
    :pswitch_1
    iget-object v0, p0, Laqs;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->G(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0

    .line 6087
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
