.class public Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;
.super Ljava/lang/Object;
.source "GroupEntity.java"


# instance fields
.field public count:I

.field public groupName:Ljava/lang/String;

.field public id:I

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->selected:Z

    return v0
.end method

.method public select(Z)V
    .locals 0
    .parameter "select"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->selected:Z

    .line 24
    return-void
.end method
