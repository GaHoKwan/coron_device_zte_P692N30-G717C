.class public Ltmsdkobf/kw;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/ky;


# instance fields
.field private Bm:Ltmsdkobf/ja;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;
    .locals 1
    .parameter "name"
    .parameter "priority"
    .parameter "ident"

    .prologue
    .line 261
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltmsdkobf/ja;->a(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;
    .locals 1
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"

    .prologue
    .line 244
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltmsdkobf/ja;->a(Ljava/lang/Runnable;Ljava/lang/String;J)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/Runnable;Ljava/lang/String;J)V
    .locals 8
    .parameter "priority"
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"

    .prologue
    .line 107
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Ltmsdkobf/ja;->a(ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public b(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 7
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"

    .prologue
    .line 94
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Ltmsdkobf/ja;->a(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 194
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    invoke-virtual {v0, p1}, Ltmsdkobf/ja;->c(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public c(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 7
    .parameter "task"
    .parameter "taskName"
    .parameter "ident"

    .prologue
    .line 117
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Ltmsdkobf/ja;->b(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    new-instance v0, Ltmsdkobf/ja;

    invoke-direct {v0}, Ltmsdkobf/ja;-><init>()V

    iput-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    .line 20
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    invoke-virtual {v0, p1}, Ltmsdkobf/ja;->onCreate(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Ltmsdkobf/kw;->Bm:Ltmsdkobf/ja;

    invoke-virtual {p0, v0}, Ltmsdkobf/kw;->a(Ltmsdk/common/BaseManager;)V

    .line 22
    return-void
.end method
