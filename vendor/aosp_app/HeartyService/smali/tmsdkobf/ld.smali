.class public final Ltmsdkobf/ld;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private BO:Ltmsdkobf/le;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "task"
    .parameter "delayMillis"

    .prologue
    .line 28
    iget-object v0, p0, Ltmsdkobf/ld;->BO:Ltmsdkobf/le;

    invoke-virtual {v0, p1, p2, p3}, Ltmsdkobf/le;->b(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    new-instance v0, Ltmsdkobf/le;

    invoke-direct {v0}, Ltmsdkobf/le;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ld;->BO:Ltmsdkobf/le;

    .line 18
    iget-object v0, p0, Ltmsdkobf/ld;->BO:Ltmsdkobf/le;

    invoke-virtual {v0, p1}, Ltmsdkobf/le;->onCreate(Landroid/content/Context;)V

    .line 19
    iget-object v0, p0, Ltmsdkobf/ld;->BO:Ltmsdkobf/le;

    invoke-virtual {p0, v0}, Ltmsdkobf/ld;->a(Ltmsdk/common/BaseManager;)V

    .line 20
    return-void
.end method
