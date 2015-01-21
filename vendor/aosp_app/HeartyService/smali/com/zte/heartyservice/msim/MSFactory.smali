.class public Lcom/zte/heartyservice/msim/MSFactory;
.super Ljava/lang/Object;
.source "MSFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/zte/heartyservice/msim/MSInterface;
    .locals 2
    .parameter "context"

    .prologue
    .line 8
    const/4 v0, 0x0

    .line 9
    .local v0, instance:Lcom/zte/heartyservice/msim/MSInterface;
    invoke-static {}, Lcom/zte/heartyservice/msim/QCInterface;->checkType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v0, Lcom/zte/heartyservice/msim/QCInterface;

    .end local v0           #instance:Lcom/zte/heartyservice/msim/MSInterface;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/msim/QCInterface;-><init>(Landroid/content/Context;)V

    .line 14
    .restart local v0       #instance:Lcom/zte/heartyservice/msim/MSInterface;
    :cond_0
    :goto_0
    return-object v0

    .line 11
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/msim/MTKInterface;->checkType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance v0, Lcom/zte/heartyservice/msim/MTKInterface;

    .end local v0           #instance:Lcom/zte/heartyservice/msim/MSInterface;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/msim/MTKInterface;-><init>(Landroid/content/Context;)V

    .restart local v0       #instance:Lcom/zte/heartyservice/msim/MSInterface;
    goto :goto_0
.end method
