.class Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$4;
.super Ljava/lang/Object;
.source "ZTESMSInterceptActivity.java"

# interfaces
.implements Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;


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
    .line 258
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onCallback(Ltmsdk/common/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 4
    .parameter "data"
    .parameter "filter"
    .parameter "state"
    .parameter "datas"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$4;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;->access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method
