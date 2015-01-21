.class public Lwi;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;Z)Z

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->invalidate()V

    .line 74
    iget-object v0, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->requestLayout()V

    .line 75
    return-void

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-static {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->a(Lcom/sohu/inputmethod/platform/AppDetailImagesView;)V

    .line 80
    iget-object v0, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->invalidate()V

    .line 81
    iget-object v0, p0, Lwi;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->requestLayout()V

    .line 82
    return-void
.end method
