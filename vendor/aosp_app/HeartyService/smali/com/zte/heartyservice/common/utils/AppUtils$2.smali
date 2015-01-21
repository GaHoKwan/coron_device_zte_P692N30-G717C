.class final Lcom/zte/heartyservice/common/utils/AppUtils$2;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$relMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/zte/heartyservice/common/utils/AppUtils$2;->val$relMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 152
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/AppUtils$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/zte/heartyservice/common/utils/AppUtils$2;->val$relMode:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 154
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    return-void
.end method
