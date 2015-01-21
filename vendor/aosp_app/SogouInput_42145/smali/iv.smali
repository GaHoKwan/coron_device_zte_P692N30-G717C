.class Liv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Liu;


# direct methods
.method constructor <init>(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Liv;->a:Liu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 279
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 281
    :cond_1
    iget-object v0, p0, Liv;->a:Liu;

    const-string v2, "***********************************do search*****************************************"

    invoke-static {v0, v2}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Liv;->a:Liu;

    iget-object v2, p0, Liv;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Liu;->a(Liu;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 284
    goto :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Liv;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 287
    iget-object v2, p0, Liv;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 288
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 291
    :cond_4
    iget-object v0, p0, Liv;->a:Liu;

    const-string v2, "***********************************search from internet***************************"

    invoke-static {v0, v2}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0, v1}, Liu;->a(Liu;I)I

    .line 295
    iget-object v0, p0, Liv;->a:Liu;

    iget-object v2, p0, Liv;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Liu;->c(Liu;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Liv;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 297
    iget-object v2, p0, Liv;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 299
    iget-object v2, p0, Liv;->a:Liu;

    invoke-static {v2}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 300
    goto/16 :goto_0
.end method
