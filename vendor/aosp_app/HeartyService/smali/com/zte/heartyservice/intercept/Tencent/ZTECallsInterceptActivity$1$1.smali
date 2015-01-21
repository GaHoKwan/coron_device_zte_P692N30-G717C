.class Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1$1;
.super Ljava/lang/Object;
.source "ZTECallsInterceptActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->loadDataList()V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V

    .line 85
    return-void
.end method
