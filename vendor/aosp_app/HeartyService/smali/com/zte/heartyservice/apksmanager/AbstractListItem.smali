.class public Lcom/zte/heartyservice/apksmanager/AbstractListItem;
.super Ljava/lang/Object;
.source "AbstractListItem.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private index:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->type:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "appName"
    .parameter "appIcon"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->type:I

    .line 23
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->appName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->index:I

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->appName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 48
    iput p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->index:I

    .line 49
    return-void
.end method
