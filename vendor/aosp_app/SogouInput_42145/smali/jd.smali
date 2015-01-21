.class Ljd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljc;


# direct methods
.method constructor <init>(Ljc;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Ljd;->a:Ljc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 838
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lgw;

    move-result-object v0

    iget v0, v0, Lgw;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 839
    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ljd;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 840
    iget-object v1, p0, Ljd;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 841
    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 844
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 846
    iget-object v1, p0, Ljd;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->b(Liu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 847
    iget-object v1, p0, Ljd;->a:Ljc;

    iget-object v1, v1, Ljc;->a:Liu;

    invoke-static {v1}, Liu;->b(Liu;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 848
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 849
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 850
    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->b(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 851
    iget-object v0, p0, Ljd;->a:Ljc;

    iget-object v0, v0, Ljc;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ca:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ca:I

    .line 853
    :cond_1
    return-void
.end method
