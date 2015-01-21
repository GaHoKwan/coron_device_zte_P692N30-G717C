.class Lnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lnx;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lnx;->a:Lnr;

    const-string v1, "delete button click"

    invoke-static {v0, v1}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lnx;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lnx;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->sendDownUpKeyEvents(I)V

    .line 405
    :cond_0
    return-void
.end method
