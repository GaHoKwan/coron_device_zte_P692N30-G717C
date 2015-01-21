.class Ltmsdkobf/hg$a$1;
.super Ltmsdkobf/gy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hg$a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pm:Ltmsdkobf/hg$a;


# direct methods
.method constructor <init>(Ltmsdkobf/hg$a;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Ltmsdkobf/hg$a$1;->pm:Ltmsdkobf/hg$a;

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-virtual {p0}, Ltmsdkobf/hg$a$1;->bU()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ltmsdkobf/hg$a$1;->pm:Ltmsdkobf/hg$a;

    invoke-static {v1}, Ltmsdkobf/hg$a;->a(Ltmsdkobf/hg$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateListDao()Ltmsdk/common/module/aresengine/IContactDao;

    move-result-object v1

    invoke-virtual {p0}, Ltmsdkobf/hg$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v2

    iget-object v2, v2, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ltmsdk/common/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bZ()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 141
    .local v0, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p0}, Ltmsdkobf/hg$a$1;->bW()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 142
    invoke-virtual {p0}, Ltmsdkobf/hg$a$1;->bU()I

    move-result v1

    iput v1, v0, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 143
    invoke-virtual {p0}, Ltmsdkobf/hg$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v1

    iput-object v1, v0, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 144
    iget-object v1, v0, Ltmsdk/common/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v2, Ltmsdkobf/hg$a$1$1;

    invoke-direct {v2, p0, v0}, Ltmsdkobf/hg$a$1$1;-><init>(Ltmsdkobf/hg$a$1;Ltmsdk/common/module/aresengine/FilterResult;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0, v0}, Ltmsdkobf/hg$a$1;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 161
    const v1, 0x1d4c2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltmsdkobf/im;->a(II)V

    .line 162
    return-void
.end method
