.class Lcom/zte/engineer/TouchScreenFwloadForResearch$2;
.super Ljava/lang/Object;
.source "TouchScreenFwloadForResearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchScreenFwloadForResearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenFwloadForResearch;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>forceLoadThread--run()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "------touchscreenfwloader(5)----qian-----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const v3, 0x7f0600f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_result:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$202(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------touchscreenfwloader(5)===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_result:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$200(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "------touchscreenfwloader(5)----hou-----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "<<<<<<<<<<forceLoadThread--run()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$2;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const/4 v1, 0x1

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->forceLoadThreadStart:Z
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$302(Lcom/zte/engineer/TouchScreenFwloadForResearch;Z)Z

    .line 82
    return-void
.end method
