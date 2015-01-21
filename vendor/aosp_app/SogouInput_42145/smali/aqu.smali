.class public Laqu;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 13771
    iput-object p1, p0, Laqu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13774
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 13778
    :goto_0
    return-void

    .line 13776
    :cond_0
    iget-object v0, p0, Laqu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const-string v1, "onReceive updateRingerMode"

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->c(Lcom/sohu/inputmethod/sogou/SogouIME;Ljava/lang/String;)V

    .line 13777
    iget-object v0, p0, Laqu;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->H(Lcom/sohu/inputmethod/sogou/SogouIME;)V

    goto :goto_0
.end method
