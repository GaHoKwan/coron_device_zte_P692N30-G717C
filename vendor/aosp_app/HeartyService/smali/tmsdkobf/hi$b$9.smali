.class Ltmsdkobf/hi$b$9;
.super Ltmsdkobf/gy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hi$b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pG:Ltmsdkobf/hi$b;


# direct methods
.method constructor <init>(Ltmsdkobf/hi$b;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Ltmsdkobf/hi$b$9;->pG:Ltmsdkobf/hi$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, result:Z
    invoke-virtual {p0}, Ltmsdkobf/hi$b$9;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 407
    .local v0, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    iget-object v1, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    .line 409
    .local v1, phone_num:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 411
    iget-object v5, p0, Ltmsdkobf/hi$b$9;->pG:Ltmsdkobf/hi$b;

    invoke-static {v5}, Ltmsdkobf/hi$b;->b(Ltmsdkobf/hi$b;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    const/4 v2, 0x0

    .line 419
    :goto_0
    iget-wide v5, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    const-wide/16 v7, 0x5

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    :goto_1
    and-int/2addr v2, v3

    .line 422
    :cond_0
    return v2

    .line 416
    :cond_1
    iget v5, v0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    if-ne v5, v3, :cond_2

    move v2, v3

    :goto_2
    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    .line 419
    goto :goto_1
.end method

.method bZ()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Ltmsdkobf/hi$b$9;->pG:Ltmsdkobf/hi$b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    .line 428
    return-void
.end method
