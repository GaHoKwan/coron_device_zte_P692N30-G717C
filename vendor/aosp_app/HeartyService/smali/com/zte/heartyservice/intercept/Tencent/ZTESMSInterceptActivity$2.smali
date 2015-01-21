.class Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;
.super Ljava/lang/Object;
.source "ZTESMSInterceptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 126
    .local v0, viewId:I
    sparse-switch v0, :sswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->deleteSelectedItems()V
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V

    .line 129
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 133
    :sswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->restoreSelectedItems()V
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)V

    .line 134
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 138
    :sswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->selectAll:Z
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Z

    move-result v2

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->setAllListCheckStates(Z)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$1100(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;Z)V

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00ba -> :sswitch_0
        0x7f0e012b -> :sswitch_2
        0x7f0e012c -> :sswitch_1
    .end sparse-switch
.end method
