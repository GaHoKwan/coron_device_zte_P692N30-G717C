.class final Landroid/view/ViewRootImpl$TraversalRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TraversalRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 4995
    iput-object p1, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4998
    iget-object v2, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mSmartShowContext:Landroid/content/SmartShowContext;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;)Landroid/content/SmartShowContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    .line 4999
    .local v0, contextId:I
    iget-object v2, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mSmartShowContext:Landroid/content/SmartShowContext;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;)Landroid/content/SmartShowContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SmartShowContext;->getTaskId()I

    move-result v1

    .line 5000
    .local v1, taskId:I
    iget-object v2, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mSmartShowContext:Landroid/content/SmartShowContext;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;)Landroid/content/SmartShowContext;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mContextId:I
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/ViewRootImpl;)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mTaskId:I
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 5001
    iget-object v2, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doTraversal()V

    .line 5002
    iget-object v2, p0, Landroid/view/ViewRootImpl$TraversalRunnable;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mSmartShowContext:Landroid/content/SmartShowContext;
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;)Landroid/content/SmartShowContext;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/SmartShowContext;->setContextAndTaskId(II)V

    .line 5003
    return-void
.end method
