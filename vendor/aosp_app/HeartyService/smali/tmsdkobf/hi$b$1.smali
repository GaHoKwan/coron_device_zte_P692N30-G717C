.class Ltmsdkobf/hi$b$1;
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
    .line 272
    iput-object p1, p0, Ltmsdkobf/hi$b$1;->pG:Ltmsdkobf/hi$b;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0}, Ltmsdkobf/hi$b$1;->bU()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ltmsdkobf/hi$b$1;->bU()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ltmsdkobf/hi$b$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ltmsdkobf/hi$b$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method bZ()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 284
    iget-object v2, p0, Ltmsdkobf/hi$b$1;->pG:Ltmsdkobf/hi$b;

    iget-object v0, p0, Ltmsdkobf/hi$b$1;->pG:Ltmsdkobf/hi$b;

    invoke-static {v0}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;

    move-result-object v3

    invoke-virtual {p0}, Ltmsdkobf/hi$b$1;->bU()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, p0, v3, v0, v1}, Ltmsdkobf/hi$b;->a(Ltmsdkobf/hi$b;Ltmsdkobf/gy$a;Ltmsdk/common/module/aresengine/ICallLogDao;ZZ)V

    .line 285
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
