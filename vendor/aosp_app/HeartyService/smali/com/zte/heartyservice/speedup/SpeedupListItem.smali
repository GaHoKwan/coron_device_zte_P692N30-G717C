.class public Lcom/zte/heartyservice/speedup/SpeedupListItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "SpeedupListItem.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private stateIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 0
    .parameter "refName"
    .parameter "appIcon"
    .parameter "stateIcon"
    .parameter "tag"

    .prologue
    .line 17
    invoke-direct {p0, p1, p4}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iput-object p2, p0, Lcom/zte/heartyservice/speedup/SpeedupListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-object p3, p0, Lcom/zte/heartyservice/speedup/SpeedupListItem;->stateIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedupListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedupListItem;->stateIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedupListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method

.method public setStateIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "stateIcon"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedupListItem;->stateIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refName :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/SpeedupListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
