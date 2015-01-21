.class final Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->_showToast(Landroid/content/Context;ILjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$delay:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$textid:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$textid:I

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 34
    const-class v1, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$textid:I

    if-ne v0, v2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$text:Ljava/lang/String;

    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$delay:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 50
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$textid:I

    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$delay:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$textid:I

    if-ne v0, v2, :cond_2

    .line 44
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$delay:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ToastUtil$1;->val$textid:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
