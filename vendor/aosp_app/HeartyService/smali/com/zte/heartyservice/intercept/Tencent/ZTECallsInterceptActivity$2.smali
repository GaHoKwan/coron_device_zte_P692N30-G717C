.class Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;
.super Ljava/lang/Object;
.source "ZTECallsInterceptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

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
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->deleteSelectedItems()V
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    .line 129
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 133
    :sswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->restoreSelectedItems()V
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    .line 134
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 138
    :sswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->selectAll:Z
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$1100(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Z

    move-result v2

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->setAllListCheckStates(Z)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;Z)V

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
