.class final Lcom/nuance/dragon/toolkit/elvis/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

.field final synthetic c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;

.field final synthetic d:Lcom/nuance/dragon/toolkit/elvis/a;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->c:Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$InitializeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    iget v3, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->d:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->c:Ljava/lang/String;

    const-string v1, "unspecified"

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    iget-object v4, v4, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    div-int/lit16 v0, v3, 0x3e8

    invoke-static {v2, v1, v0}, Lcom/nuance/dragon/toolkit/elvis/d;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    invoke-static {v1}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;)Lcom/nuance/dragon/toolkit/elvis/e;

    move-result-object v1

    invoke-interface {v1, v2, v3, v0}, Lcom/nuance/dragon/toolkit/elvis/e;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/elvis/a;->a(Lcom/nuance/dragon/toolkit/elvis/a;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->d:Lcom/nuance/dragon/toolkit/elvis/a;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/elvis/a$1$1;-><init>(Lcom/nuance/dragon/toolkit/elvis/a$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/a$1;->b:Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;

    iget-object v1, v1, Lcom/nuance/dragon/toolkit/elvis/ElvisConfig;->b:Ljava/lang/String;

    goto :goto_0
.end method
