.class Ltmsdk/fg/module/qscanner/e$1;
.super Ltmsdkobf/jv$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/fg/module/qscanner/e;->b(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fi:Ljava/util/ArrayList;

.field final synthetic Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

.field final synthetic Fk:Ltmsdk/fg/module/qscanner/e;


# direct methods
.method constructor <init>(Ltmsdk/fg/module/qscanner/e;Ljava/util/ArrayList;Ltmsdk/fg/module/qscanner/QScanListenerV2;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/e$1;->Fk:Ltmsdk/fg/module/qscanner/e;

    iput-object p2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fi:Ljava/util/ArrayList;

    iput-object p3, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    invoke-direct {p0}, Ltmsdkobf/jv$a;-><init>()V

    return-void
.end method


# virtual methods
.method public eU()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 172
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e$1;->Fk:Ltmsdk/fg/module/qscanner/e;

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    invoke-static {v1, v0, v2}, Ltmsdk/fg/module/qscanner/e;->a(Ltmsdk/fg/module/qscanner/e;ILtmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 173
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e$1;->Fk:Ltmsdk/fg/module/qscanner/e;

    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    invoke-static {v1, v0, v2}, Ltmsdk/fg/module/qscanner/e;->b(Ltmsdk/fg/module/qscanner/e;ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    const/4 v4, 0x1

    .line 142
    iget-boolean v2, p0, Ltmsdk/fg/module/qscanner/e$1;->xB:Z

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 146
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    invoke-virtual {v0, v4}, Ltmsdk/common/module/software/AppEntity;->setApkFlag(Z)V

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltmsdk/common/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fk:Ltmsdk/fg/module/qscanner/e;

    invoke-static {v2, v0}, Ltmsdk/fg/module/qscanner/e;->a(Ltmsdk/fg/module/qscanner/e;Ltmsdk/common/module/software/AppEntity;)Ltmsdk/common/module/qscanner/QScanResultEntity;

    move-result-object v1

    .line 149
    .local v1, scanResult:Ltmsdk/common/module/qscanner/QScanResultEntity;
    if-eqz v1, :cond_0

    .line 150
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fi:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3, v1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onScanProgress(IILtmsdk/common/module/qscanner/QScanResultEntity;)V

    goto :goto_0
.end method

.method public h(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 161
    iget-boolean v0, p0, Ltmsdk/fg/module/qscanner/e$1;->xB:Z

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e$1;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ltmsdk/fg/module/qscanner/QScanListenerV2;->onFoundElseFile(ILjava/io/File;)V

    goto :goto_0
.end method
