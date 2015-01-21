.class Ltmsdkobf/hi$a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hi$a$3;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pC:Ltmsdk/common/module/aresengine/CallLogEntity;

.field final synthetic pD:Ltmsdkobf/hi$a$3;


# direct methods
.method constructor <init>(Ltmsdkobf/hi$a$3;Ltmsdk/common/module/aresengine/CallLogEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iput-object p2, p0, Ltmsdkobf/hi$a$3$1;->pC:Ltmsdk/common/module/aresengine/CallLogEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Ltmsdkobf/hi$a$3$1;->pC:Ltmsdk/common/module/aresengine/CallLogEntity;

    iget v0, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v0, v0, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    iget-object v1, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v1, v1, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    invoke-static {v1}, Ltmsdkobf/hi$a;->c(Ltmsdkobf/hi$a;)Landroid/database/ContentObserver;

    move-result-object v1

    iget-object v2, p0, Ltmsdkobf/hi$a$3$1;->pC:Ltmsdk/common/module/aresengine/CallLogEntity;

    iget-object v3, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v3, v3, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    invoke-static {v3}, Ltmsdkobf/hi$a;->a(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ltmsdkobf/hi$a;->a(Ltmsdkobf/hi$a;Landroid/database/ContentObserver;Ltmsdk/common/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 193
    iget-object v0, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v0, v0, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    invoke-static {v0}, Ltmsdkobf/hi$a;->b(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v0, v0, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    iget-object v1, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v1, v1, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    invoke-static {v1}, Ltmsdkobf/hi$a;->c(Ltmsdkobf/hi$a;)Landroid/database/ContentObserver;

    move-result-object v1

    iget-object v2, p0, Ltmsdkobf/hi$a$3$1;->pC:Ltmsdk/common/module/aresengine/CallLogEntity;

    iget-object v3, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v3, v3, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    invoke-static {v3}, Ltmsdkobf/hi$a;->b(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ltmsdkobf/hi$a;->a(Ltmsdkobf/hi$a;Landroid/database/ContentObserver;Ltmsdk/common/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 196
    iget-object v0, p0, Ltmsdkobf/hi$a$3$1;->pD:Ltmsdkobf/hi$a$3;

    iget-object v0, v0, Ltmsdkobf/hi$a$3;->pA:Ltmsdkobf/hi$a;

    invoke-static {v0}, Ltmsdkobf/hi$a;->a(Ltmsdkobf/hi$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method
