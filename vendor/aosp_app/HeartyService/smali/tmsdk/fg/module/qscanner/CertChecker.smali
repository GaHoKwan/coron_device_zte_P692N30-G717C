.class public Ltmsdk/fg/module/qscanner/CertChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private EM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltmsdk/fg/module/qscanner/ApkKey;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/CertChecker;->mContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/CertChecker;->mContext:Landroid/content/Context;

    const-string v1, "trustcerts.dat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/CertChecker;->mContext:Landroid/content/Context;

    const-string v1, "label_tc"

    const-string v2, "trustcerts.dat"

    new-instance v3, Ltmsdk/fg/module/qscanner/ApkKey;

    invoke-direct {v3}, Ltmsdk/fg/module/qscanner/ApkKey;-><init>()V

    invoke-static {v0, v1, v2, v3}, Ltmsdkobf/jv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/CertChecker;->EM:Ljava/util/List;

    .line 120
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/CertChecker;->EM:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/CertChecker;->EM:Ljava/util/List;

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public checkCert(Ltmsdk/fg/module/qscanner/QScanResult;)Ltmsdk/fg/module/qscanner/QScanResult;
    .locals 5
    .parameter "result"

    .prologue
    .line 154
    iget-object v3, p0, Ltmsdk/fg/module/qscanner/CertChecker;->EM:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/fg/module/qscanner/ApkKey;

    .line 155
    .local v2, trustKey:Ltmsdk/fg/module/qscanner/ApkKey;
    iget-object v0, p1, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    .line 156
    .local v0, apkKey:Ltmsdk/fg/module/qscanner/ApkKey;
    iget-object v3, v0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    iget-object v4, v2, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iget-object v4, v2, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    iget v3, p1, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 160
    const/16 v3, 0x8

    iput v3, p1, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    .line 161
    const/4 v3, 0x1

    iput v3, p1, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    goto :goto_0

    .line 165
    .end local v0           #apkKey:Ltmsdk/fg/module/qscanner/ApkKey;
    .end local v2           #trustKey:Ltmsdk/fg/module/qscanner/ApkKey;
    :cond_1
    return-object p1
.end method

.method public getApkClass(Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 177
    iget-object v2, p0, Ltmsdk/fg/module/qscanner/CertChecker;->EM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/fg/module/qscanner/ApkKey;

    .line 178
    .local v0, apkKey:Ltmsdk/fg/module/qscanner/ApkKey;
    iget-object v2, v0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v2, 0x1

    .line 182
    .end local v0           #apkKey:Ltmsdk/fg/module/qscanner/ApkKey;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
