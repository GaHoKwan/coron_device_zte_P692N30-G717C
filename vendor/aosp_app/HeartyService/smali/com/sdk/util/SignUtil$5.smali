.class Lcom/sdk/util/SignUtil$5;
.super Lcom/sdk/http/NetCallBack;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/util/SignUtil;->requestSubmitSign(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/sdk/http/NetCallBack;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/util/SignUtil$5;->val$callBack:Lcom/sdk/http/NetCallBack;

    .line 412
    invoke-direct {p0}, Lcom/sdk/http/NetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sdk/util/SignUtil$5;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v0, p1}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 4
    .parameter "Info"

    .prologue
    .line 416
    iget-object v3, p0, Lcom/sdk/util/SignUtil$5;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 417
    .local v0, finalDb:Lnet/tsz/afinal/FinalDb;
    const-string v1, "update NumInfo_native set isSubmit=0"

    .line 418
    .local v1, sql:Ljava/lang/String;
    new-instance v2, Lnet/tsz/afinal/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;-><init>()V

    .line 419
    .local v2, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    invoke-virtual {v2, v1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 421
    iget-object v3, p0, Lcom/sdk/util/SignUtil$5;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v3, p1}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V

    .line 422
    return-void
.end method
