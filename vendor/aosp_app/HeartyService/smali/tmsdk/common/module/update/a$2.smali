.class Ltmsdk/common/module/update/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/jy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/update/a;->update(Ljava/util/List;Ltmsdk/common/module/update/IUpdateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BW:Ltmsdk/common/module/update/UpdateInfo;

.field final synthetic BY:Ltmsdk/common/module/update/a;


# direct methods
.method constructor <init>(Ltmsdk/common/module/update/a;Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Ltmsdk/common/module/update/a$2;->BY:Ltmsdk/common/module/update/a;

    iput-object p2, p0, Ltmsdk/common/module/update/a$2;->BW:Ltmsdk/common/module/update/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cg(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    .line 383
    iget-object v3, p0, Ltmsdk/common/module/update/a$2;->BW:Ltmsdk/common/module/update/UpdateInfo;

    iget-object v0, v3, Ltmsdk/common/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v0, Ltmsdkobf/s;

    .line 384
    .local v0, confSrc:Ltmsdkobf/s;
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 391
    :goto_0
    return v1

    .line 388
    :cond_0
    invoke-virtual {v0}, Ltmsdkobf/s;->l()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, rightMd5:Ljava/lang/String;
    iget-object v3, p0, Ltmsdk/common/module/update/a$2;->BY:Ltmsdk/common/module/update/a;

    invoke-static {v3, p1, v2}, Ltmsdk/common/module/update/a;->a(Ltmsdk/common/module/update/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 390
    .local v1, isMth:Z
    const-string v3, "NumMarkerTag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataMd5Cheker isMatch() isMth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
