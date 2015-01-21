.class public Lcom/zte/heartyservice/apksmanager/ApksListItem;
.super Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
.source "ApksListItem.java"


# instance fields
.field private apkPath:Ljava/lang/String;

.field private apkState:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkState:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->versionCode:I

    .line 10
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkPath:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "version"
    .parameter "versionCode"
    .parameter "appName"
    .parameter "packageName"
    .parameter "appIcon"
    .parameter "appSize"
    .parameter "appSelected"

    .prologue
    const/4 v7, 0x0

    .line 18
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    iput-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkState:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->versionCode:I

    .line 10
    iput-object v7, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkPath:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->versionCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getApkPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApkState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkState:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->versionCode:I

    return v0
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkPath:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setApkState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->apkState:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 40
    iput p1, p0, Lcom/zte/heartyservice/apksmanager/ApksListItem;->versionCode:I

    .line 41
    return-void
.end method
