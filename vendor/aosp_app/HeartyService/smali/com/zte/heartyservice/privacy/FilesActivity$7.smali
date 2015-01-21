.class Lcom/zte/heartyservice/privacy/FilesActivity$7;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;->doWhenDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 581
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->cancel(Z)Z

    .line 583
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$302(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    new-instance v1, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    #setter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$302(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    .line 586
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FilesActivity$7;->val$list:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    return-void
.end method
