.class public final Ltmsdkobf/hy;
.super Ltmsdkobf/ih;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "perm-admin-root"

    invoke-direct {p0, v0}, Ltmsdkobf/ih;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public ct()V
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    .line 19
    :goto_0
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
