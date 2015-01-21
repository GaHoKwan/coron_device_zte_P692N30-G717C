.class Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;
.super Ljava/lang/Object;
.source "NewCheckUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$relDownloadVersionName:Ljava/lang/String;

.field final synthetic val$selectedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    iput-object p2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->val$selectedUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->val$relDownloadVersionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    #getter for: Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->access$000(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a058c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->val$selectedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->val$description:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    #getter for: Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->access$100(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    #getter for: Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I
    invoke-static {v4}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->access$200(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->val$relDownloadVersionName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/zte/heartyservice/update/NetworkTool;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 398
    iget-object v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;->this$0:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    #calls: Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V
    invoke-static {v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->access$300(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V

    .line 400
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
