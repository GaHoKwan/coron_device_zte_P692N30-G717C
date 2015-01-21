.class Ltmsdkobf/ho$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/ho;->f(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qe:Ltmsdkobf/ho;


# direct methods
.method constructor <init>(Ltmsdkobf/ho;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Ltmsdkobf/ho$1;->qe:Ltmsdkobf/ho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.tencent.qqpimsecure"

    const-string v3, "com.tencent.server.back.BackEngine"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v2, p0, Ltmsdkobf/ho$1;->qe:Ltmsdkobf/ho;

    invoke-virtual {v2}, Ltmsdkobf/ho;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    return-void

    .line 193
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
