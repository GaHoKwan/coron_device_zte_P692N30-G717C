.class public final Ltmsdk/fg/module/qscanner/ApkKey;
.super Ltmsdkobf/df;
.source "SourceFile"


# instance fields
.field public apkType:I

.field public certMd5:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public size:I

.field public softName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->version:Ljava/lang/String;

    .line 19
    iput v1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    .line 21
    iput v1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "softName"
    .parameter "certMd5"
    .parameter "version"
    .parameter "versionCode"
    .parameter "size"
    .parameter "path"
    .parameter "apkType"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->version:Ljava/lang/String;

    .line 19
    iput v1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    .line 21
    iput v1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    .line 25
    iput v1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    .line 33
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Ltmsdk/fg/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Ltmsdk/fg/module/qscanner/ApkKey;->version:Ljava/lang/String;

    .line 37
    iput p5, p0, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    .line 38
    iput p6, p0, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    .line 39
    iput-object p7, p0, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    .line 40
    iput p8, p0, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    .line 41
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p1, v3, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v2, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->version:Ljava/lang/String;

    .line 65
    iget v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    .line 66
    iget v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    .line 67
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    .line 68
    iget v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v0

    iput v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    .line 69
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 45
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 48
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->version:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 49
    iget v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->versionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 50
    iget v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->size:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 51
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->path:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 55
    :cond_0
    iget v0, p0, Ltmsdk/fg/module/qscanner/ApkKey;->apkType:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 56
    return-void
.end method
