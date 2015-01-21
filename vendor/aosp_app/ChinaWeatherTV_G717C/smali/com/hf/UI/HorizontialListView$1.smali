.class Lcom/hf/UI/HorizontialListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/HorizontialListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/hf/UI/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    .line 89
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    const/4 v2, 0x1

    #setter for: Lcom/hf/UI/HorizontialListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/hf/UI/HorizontialListView;->access$2(Lcom/hf/UI/HorizontialListView;Z)V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->invalidate()V

    .line 97
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V

    .line 98
    return-void

    .line 93
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
    .line 102
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    #calls: Lcom/hf/UI/HorizontialListView;->reset()V
    invoke-static {v0}, Lcom/hf/UI/HorizontialListView;->access$3(Lcom/hf/UI/HorizontialListView;)V

    .line 103
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->invalidate()V

    .line 104
    iget-object v0, p0, Lcom/hf/UI/HorizontialListView$1;->this$0:Lcom/hf/UI/HorizontialListView;

    invoke-virtual {v0}, Lcom/hf/UI/HorizontialListView;->requestLayout()V

    .line 105
    return-void
.end method
