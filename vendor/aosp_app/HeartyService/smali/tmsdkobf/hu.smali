.class final Ltmsdkobf/hu;
.super Ltmsdkobf/fo;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/fq;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ltmsdkobf/fo;-><init>()V

    .line 21
    iput-object p1, p0, Ltmsdkobf/hu;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public bv()Ljava/io/File;
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Ltmsdkobf/hu;->mContext:Landroid/content/Context;

    const-string v2, "boa_libname"

    invoke-static {v2}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdkobf/kc;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, pathName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-object v1

    .line 45
    :cond_0
    const-string v1, "permission"

    const-string v2, "cann\'t find boa!"

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltmsdkobf/hu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib/libboa-1.0.3.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dlopenAddr()I
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Ltmsdk/bg/module/permission/NativeInterface;->dlopenAddr()I

    move-result v0

    return v0
.end method

.method public dlsymAddr()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ltmsdk/bg/module/permission/NativeInterface;->dlsymAddr()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltmsdkobf/hu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public mmapAddr()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ltmsdk/bg/module/permission/NativeInterface;->mmapAddr()I

    move-result v0

    return v0
.end method

.method public runScriptAsRoot(Ljava/util/List;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, scripts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v0

    .line 60
    .local v0, isRooted:Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Ltmsdk/common/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
