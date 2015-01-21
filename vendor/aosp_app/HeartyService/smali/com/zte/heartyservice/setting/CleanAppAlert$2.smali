.class Lcom/zte/heartyservice/setting/CleanAppAlert$2;
.super Ljava/lang/Object;
.source "CleanAppAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/CleanAppAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/CleanAppAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/heartyservice/setting/CleanAppAlert$2;->this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 58
    new-instance v0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/CleanAppAlert$2;->this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, localAutoCloseBackgroundProcess:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    iget-object v1, p0, Lcom/zte/heartyservice/setting/CleanAppAlert$2;->this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;

    invoke-virtual {v1}, Lcom/zte/heartyservice/setting/CleanAppAlert;->finish()V

    .line 63
    return-void
.end method
