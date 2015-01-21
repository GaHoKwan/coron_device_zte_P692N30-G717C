.class Lix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liu;


# direct methods
.method constructor <init>(Liu;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lix;->a:Liu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 337
    iget-object v0, p0, Lix;->a:Liu;

    const-string v1, "***********************************do search*****************************************"

    invoke-static {v0, v1}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lix;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 339
    iget-object v1, p0, Lix;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 340
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {v0}, Lgy;->a()V

    .line 343
    :cond_0
    iget-object v0, p0, Lix;->a:Liu;

    iget-object v1, p0, Lix;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Liu;->a(Liu;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    iget-object v0, p0, Lix;->a:Liu;

    const-string v1, "***********************************search from internet***************************"

    invoke-static {v0, v1}, Liu;->b(Liu;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    iget-object v0, p0, Lix;->a:Liu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Liu;->a(Liu;I)I

    .line 351
    iget-object v0, p0, Lix;->a:Liu;

    iget-object v1, p0, Lix;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Liu;->c(Liu;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lix;->a:Liu;

    invoke-static {v0}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lix;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 355
    iget-object v1, p0, Lix;->a:Liu;

    invoke-static {v1}, Liu;->a(Liu;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
