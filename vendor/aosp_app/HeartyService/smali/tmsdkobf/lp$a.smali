.class final Ltmsdkobf/lp$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic CJ:Ltmsdkobf/lp;


# direct methods
.method public constructor <init>(Ltmsdkobf/lp;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 267
    iput-object p1, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    .line 268
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 269
    return-void
.end method


# virtual methods
.method public gB()V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 274
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-object v0, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    invoke-static {v0}, Ltmsdkobf/lp;->b(Ltmsdkobf/lp;)Ltmsdkobf/lp$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltmsdkobf/lp$b;->F(Z)V

    .line 284
    iget-object v0, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    invoke-static {v0}, Ltmsdkobf/lp;->c(Ltmsdkobf/lp;)Ltmsdkobf/ij;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    invoke-static {v1}, Ltmsdkobf/lp;->b(Ltmsdkobf/lp;)Ltmsdkobf/lp$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;)V

    .line 285
    iget-object v1, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ltmsdkobf/lp;->a(Ltmsdkobf/lp;Ltmsdkobf/lp$b;)Ltmsdkobf/lp$b;

    .line 287
    iget-object v0, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    new-instance v2, Ltmsdkobf/lp$b;

    iget-object v3, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    invoke-direct {v2, v3}, Ltmsdkobf/lp$b;-><init>(Ltmsdkobf/lp;)V

    invoke-static {v0, v2}, Ltmsdkobf/lp;->a(Ltmsdkobf/lp;Ltmsdkobf/lp$b;)Ltmsdkobf/lp$b;

    .line 288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object v0, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    invoke-static {v0}, Ltmsdkobf/lp;->c(Ltmsdkobf/lp;)Ltmsdkobf/ij;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/lp$a;->CJ:Ltmsdkobf/lp;

    invoke-static {v1}, Ltmsdkobf/lp;->b(Ltmsdkobf/lp;)Ltmsdkobf/lp$b;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ltmsdkobf/ij;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 290
    return-void

    .line 288
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
