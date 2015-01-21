.class public Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "BackgroundAutoRunListItem.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private stateType:Lcom/zte/heartyservice/common/datatype/StateType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/Object;)V
    .locals 0
    .parameter "refName"
    .parameter "appIcon"
    .parameter "stateType"
    .parameter "tag"

    .prologue
    .line 18
    invoke-direct {p0, p1, p4}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p3, p0, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 21
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStateType()Lcom/zte/heartyservice/common/datatype/StateType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method

.method public setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V
    .locals 0
    .parameter "stateType"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refName :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/BackgroundAutoRunListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
