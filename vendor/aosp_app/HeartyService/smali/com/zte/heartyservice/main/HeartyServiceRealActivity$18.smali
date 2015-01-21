.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$18;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$18;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1485
    new-instance v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$18;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->access$700(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 1489
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1491
    return-void
.end method
