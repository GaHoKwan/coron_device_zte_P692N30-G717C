.class Lags;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lags;->a:Lage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lhr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1266
    sget-object v0, Lhr;->o:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1267
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->b(Lage;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1268
    sget-object v0, Lage;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-virtual {v0}, Lhr;->a()V

    .line 1270
    iget-object v0, p0, Lags;->a:Lage;

    iget-object v1, p0, Lags;->a:Lage;

    invoke-static {v1}, Lage;->a(Lage;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage;->a(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dF:I

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1273
    :cond_1
    iget-object v0, p0, Lags;->a:Lage;

    iget-object v1, p0, Lags;->a:Lage;

    invoke-static {v1}, Lage;->a(Lage;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0253

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1276
    :cond_2
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-virtual {v0}, Lhr;->a()V

    goto :goto_0

    .line 1279
    :cond_3
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lhr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhr;->a(Landroid/content/Intent;)V

    .line 1280
    sget-object v0, Lhr;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1282
    sget-object v1, Lhr;->e:Ljava/lang/String;

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1284
    sget-object v2, Lhr;->g:Ljava/lang/String;

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1286
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1287
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1288
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 1289
    if-ne v0, v5, :cond_5

    .line 1290
    if-ne v1, v4, :cond_4

    .line 1291
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    iget-object v1, p0, Lags;->a:Lage;

    invoke-static {v1}, Lage;->a(Lage;)Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    move-result-object v1

    const v2, 0x7f0b02f6

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lawa;

    move-result-object v0

    invoke-virtual {v0}, Lawa;->dismiss()V

    .line 1299
    :cond_4
    :goto_1
    iget-object v0, p0, Lags;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1297
    :cond_5
    const/4 v0, 0x3

    iput v0, v3, Landroid/os/Message;->what:I

    goto :goto_1
.end method
