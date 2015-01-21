.class public Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
.super Lcom/zte/heartyservice/apksmanager/AbstractListItem;
.source "SoftwareListItem.java"


# instance fields
.field private appDisabled:Ljava/lang/Boolean;

.field private appSelected:Ljava/lang/Boolean;

.field private appSize:Ljava/lang/String;

.field public lastUpdateTime:J

.field private packageName:Ljava/lang/String;

.field public size:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appName"
    .parameter "appIcon"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "version"
    .parameter "appName"
    .parameter "packageName"
    .parameter "appIcon"
    .parameter "appSize"
    .parameter "appSelected"

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    invoke-direct {p0, p2, p4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 30
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->version:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSize:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSelected:Ljava/lang/Boolean;

    .line 33
    iput-object p3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->packageName:Ljava/lang/String;

    .line 34
    iput-wide v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->lastUpdateTime:J

    .line 35
    iput-wide v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "version"
    .parameter "appName"
    .parameter "packageName"
    .parameter "appIcon"
    .parameter "appSize"
    .parameter "appSelected"
    .parameter "appDisabled"

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0, p2, p4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->version:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSize:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSelected:Ljava/lang/Boolean;

    .line 44
    iput-object p7, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appDisabled:Ljava/lang/Boolean;

    .line 46
    iput-object p3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->packageName:Ljava/lang/String;

    .line 47
    iput-wide v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->lastUpdateTime:J

    .line 48
    iput-wide v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    .line 49
    return-void
.end method


# virtual methods
.method public getAppDisabled()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAppSelected()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppDisabled(Z)V
    .locals 1
    .parameter "appdisabled"

    .prologue
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appDisabled:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method public setAppSelected(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "appSelected"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSelected:Ljava/lang/Boolean;

    .line 91
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0
    .parameter "appSize"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->appSize:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->packageName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->version:Ljava/lang/String;

    .line 67
    return-void
.end method
