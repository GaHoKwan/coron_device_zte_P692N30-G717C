.class Lcom/zte/heartyservice/common/datatype/NewDialog$2;
.super Ljava/lang/Thread;
.source "NewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/NewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/NewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$000(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$200(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$000(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I
    invoke-static {v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$200(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$000(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$200(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->time:I
    invoke-static {v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$200(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$020(Lcom/zte/heartyservice/common/datatype/NewDialog;I)I

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->total:I
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$000(Lcom/zte/heartyservice/common/datatype/NewDialog;)I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$300(Lcom/zte/heartyservice/common/datatype/NewDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 75
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$2;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->access$300(Lcom/zte/heartyservice/common/datatype/NewDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
