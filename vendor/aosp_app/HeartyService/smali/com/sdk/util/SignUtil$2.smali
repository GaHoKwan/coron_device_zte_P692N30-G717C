.class Lcom/sdk/util/SignUtil$2;
.super Lcom/sdk/http/NetCallBack;
.source "SignUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/util/SignUtil;->searchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callBack:Lcom/sdk/http/NetCallBack;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sdk/util/SignUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/util/SignUtil$2;->val$num:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdk/util/SignUtil$2;->val$callBack:Lcom/sdk/http/NetCallBack;

    .line 186
    invoke-direct {p0}, Lcom/sdk/http/NetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sdk/util/SignUtil$2;->val$callBack:Lcom/sdk/http/NetCallBack;

    invoke-virtual {v0, p1}, Lcom/sdk/http/NetCallBack;->error(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 3
    .parameter "Info"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sdk/util/SignUtil$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdk/util/SignUtil$2;->val$num:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdk/util/SignUtil$2;->val$callBack:Lcom/sdk/http/NetCallBack;

    #calls: Lcom/sdk/util/SignUtil;->requestSearchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
    invoke-static {v0, v1, v2}, Lcom/sdk/util/SignUtil;->access$3(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    .line 190
    return-void
.end method
