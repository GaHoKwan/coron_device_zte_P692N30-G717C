.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;
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

.field final synthetic val$groupIds:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;->val$groupIds:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2$1;->val$groupIds:Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->setGroupMembers(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Ljava/lang/String;)V

    .line 124
    return-void
.end method
