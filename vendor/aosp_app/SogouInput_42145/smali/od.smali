.class Lod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Loc;


# direct methods
.method constructor <init>(Loc;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lod;->a:Loc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1057
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1058
    if-ltz v0, :cond_0

    iget-object v1, p0, Lod;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1059
    iget-object v1, p0, Lod;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->c(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna;

    .line 1060
    iget-object v1, p0, Lod;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lod;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->t()V

    .line 1062
    iget-object v1, p0, Lod;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lna;)V

    .line 1065
    :cond_0
    return-void
.end method