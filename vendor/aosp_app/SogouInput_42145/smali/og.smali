.class Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lof;


# direct methods
.method constructor <init>(Lof;)V
    .locals 0
    .parameter

    .prologue
    .line 1202
    iput-object p1, p0, Log;->a:Lof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1207
    iget-object v1, p0, Log;->a:Lof;

    invoke-virtual {v1, v0}, Lof;->getItemViewType(I)I

    move-result v1

    .line 1208
    packed-switch v1, :pswitch_data_0

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1221
    :pswitch_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Log;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1222
    iget-object v1, p0, Log;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->d(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnh;

    .line 1223
    iget-object v1, p0, Log;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Log;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()V

    .line 1225
    iget-object v1, p0, Log;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lnh;)V

    goto :goto_0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
