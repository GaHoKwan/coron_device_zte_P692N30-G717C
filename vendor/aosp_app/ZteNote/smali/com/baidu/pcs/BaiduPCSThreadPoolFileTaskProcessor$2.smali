.class Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;


# direct methods
.method constructor <init>(Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor$2;->this$0:Lcom/baidu/pcs/BaiduPCSThreadPoolFileTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ThreadPoolFileTaskProcessor"

    const-string v1, "----empty runnable------"

    invoke-static {v0, v1}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
