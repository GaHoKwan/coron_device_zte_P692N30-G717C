.class Lze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lzd;


# direct methods
.method constructor <init>(Lzd;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lze;->a:Lzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lze;->a:Lzd;

    iget-object v0, v0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->d()V

    .line 82
    iget-object v0, p0, Lze;->a:Lzd;

    iget-object v0, v0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/AccountList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b019b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v0, p0, Lze;->a:Lzd;

    iget-object v0, v0, Lzd;->a:Lcom/sohu/inputmethod/settings/AccountList;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/AccountList;->a(Lcom/sohu/inputmethod/settings/AccountList;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    return-void
.end method
