.class Lcom/zte/update/ui/pop/AboutPop$2;
.super Lcom/zte/update/ui/pop/CheckActionWithPop;
.source "AboutPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/pop/AboutPop;->startCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/pop/AboutPop;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/pop/AboutPop;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/zte/update/ui/pop/AboutPop$2;->this$0:Lcom/zte/update/ui/pop/AboutPop;

    iput-object p3, p0, Lcom/zte/update/ui/pop/AboutPop$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/zte/update/ui/pop/CheckActionWithPop;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/AboutPop$2;->showProgressPop()V

    .line 52
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startSelfCheck(I)V

    .line 54
    return-void
.end method

.method public showProgressPop()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/zte/update/ui/pop/SingleCheckProgressPop;

    iget-object v1, p0, Lcom/zte/update/ui/pop/AboutPop$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/update/ui/pop/SingleCheckProgressPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zte/update/ui/pop/SingleCheckProgressPop;->update()V

    .line 47
    return-void
.end method
