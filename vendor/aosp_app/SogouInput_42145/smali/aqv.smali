.class public Laqv;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 13781
    iput-object p1, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13785
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 13800
    :goto_0
    return-void

    .line 13787
    :cond_0
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const-string v1, "onReceive mShutDownReceiver"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/String;)V

    .line 13788
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13789
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V

    .line 13790
    :cond_1
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13791
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13792
    :cond_2
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13793
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lamo;

    move-result-object v0

    invoke-virtual {v0}, Lamo;->a()V

    .line 13795
    :cond_3
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Lasd;

    move-result-object v0

    invoke-static {v0}, Lasd;->a(Lasd;)V

    .line 13796
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13797
    iget-object v0, p0, Laqv;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Labt;

    move-result-object v0

    invoke-virtual {v0}, Labt;->a()Z

    .line 13798
    :cond_4
    invoke-static {}, Lcom/sohu/inputmethod/engine/IMEInterface;->releaseInstance()V

    .line 13799
    invoke-static {}, Lauw;->a()V

    goto :goto_0
.end method
