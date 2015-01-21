.class Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->runTransactionAsync(Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$transaction:Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;


# direct methods
.method constructor <init>(Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;->this$0:Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;

    iput-object p2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;->val$transaction:Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;

    iput-object p3, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;->this$0:Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;

    invoke-virtual {v0}, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;->val$transaction:Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;

    iget-object v2, p0, Lcom/baidu/pcs/file/BaiduPCSAbstractDBHandler$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/pcs/file/BaiduPCSSQLiteTask;->runTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
