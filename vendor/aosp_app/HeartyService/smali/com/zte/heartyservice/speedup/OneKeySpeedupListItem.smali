.class public Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "OneKeySpeedupListItem.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private comments:Ljava/lang/String;

.field private stateType:Lcom/zte/heartyservice/common/datatype/StateType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/zte/heartyservice/common/datatype/StateType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "refName"
    .parameter "appIcon"
    .parameter "stateType"
    .parameter "comments"
    .parameter "tag"

    .prologue
    .line 19
    invoke-direct {p0, p1, p5}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object p3, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 22
    iput-object p4, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->comments:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getStateType()Lcom/zte/heartyservice/common/datatype/StateType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0
    .parameter "comments"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->comments:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V
    .locals 0
    .parameter "stateType"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refName :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   comments :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/speedup/OneKeySpeedupListItem;->comments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
