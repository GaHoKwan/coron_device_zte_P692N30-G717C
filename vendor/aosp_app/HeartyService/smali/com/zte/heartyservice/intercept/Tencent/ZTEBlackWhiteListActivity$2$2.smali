.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$2;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$2;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$2;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->loadDataList()V

    .line 135
    return-void
.end method
