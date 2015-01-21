.class Laqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic a:Laqa;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Laqa;Landroid/widget/CheckBox;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3177
    iput-object p1, p0, Laqb;->a:Laqa;

    iput-object p2, p0, Laqb;->a:Landroid/widget/CheckBox;

    iput p3, p0, Laqb;->a:I

    iput p4, p0, Laqb;->b:I

    iput p5, p0, Laqb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3181
    iget-object v0, p0, Laqb;->a:Laqa;

    iget-object v2, v0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v0, p0, Laqb;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 3182
    iget-object v0, p0, Laqb;->a:Laqa;

    iget-object v0, v0, Laqa;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Z)V

    .line 3183
    iget-object v0, p0, Laqb;->a:Laqa;

    iget v1, p0, Laqb;->a:I

    iget v2, p0, Laqb;->b:I

    iget v3, p0, Laqb;->c:I

    invoke-static {v0, v1, v2, v3}, Laqa;->a(Laqa;III)V

    .line 3184
    return-void

    .line 3181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
