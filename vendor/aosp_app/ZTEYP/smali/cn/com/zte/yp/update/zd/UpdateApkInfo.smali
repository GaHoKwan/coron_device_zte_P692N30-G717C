.class public final Lcn/com/zte/yp/update/zd/UpdateApkInfo;
.super Ljava/lang/Object;
.source "UpdateApkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c0cf4f3a7664e79L


# instance fields
.field private feature:Ljava/lang/String;

.field private hasUpdate:Z

.field private size:J

.field private url:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->hasUpdate:Z

    .line 16
    iput-object v2, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->versionName:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->versionCode:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->url:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->size:J

    .line 20
    iput-object v2, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->feature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->size:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->hasUpdate:Z

    return v0
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0
    .parameter "feature"

    .prologue
    .line 67
    iput-object p1, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->feature:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setHasUpdate(Z)V
    .locals 0
    .parameter "hasUpdate"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->hasUpdate:Z

    .line 28
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 59
    iput-wide p1, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->size:J

    .line 60
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->url:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 43
    iput-object p1, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->versionCode:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 35
    iput-object p1, p0, Lcn/com/zte/yp/update/zd/UpdateApkInfo;->versionName:Ljava/lang/String;

    .line 36
    return-void
.end method
