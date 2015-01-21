.class public Laqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field final synthetic a:Z


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/sogou/SogouIME;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Laqz;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iput p2, p0, Laqz;->a:I

    iput-boolean p3, p0, Laqz;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1977
    const/4 v1, 0x1

    .line 1978
    sget-object v2, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1979
    :try_start_0
    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    iget v3, p0, Laqz;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1981
    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    iget v3, p0, Laqz;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 1982
    if-eqz v0, :cond_1

    .line 1983
    sget-object v3, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-boolean v4, p0, Laqz;->a:Z

    invoke-virtual {v3, v0, v4}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/multimedia/SogouMedia;Z)Z

    move-result v0

    and-int/2addr v0, v1

    .line 1985
    :goto_0
    if-eqz v0, :cond_0

    .line 1986
    sget-object v0, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    iget v1, p0, Laqz;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1989
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1990
    iget-object v0, p0, Laqz;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lcom/sohu/inputmethod/sogou/SogouIME;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1991
    return-void

    .line 1989
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
