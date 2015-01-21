.class public Lcom/zte/heartyservice/examination/ExamListItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "ExamListItem.java"


# instance fields
.field private stateType:Lcom/zte/heartyservice/common/datatype/StateType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/zte/heartyservice/common/datatype/StateType;)V
    .locals 0
    .parameter "refName"
    .parameter "tag"
    .parameter "stateType"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iput-object p3, p0, Lcom/zte/heartyservice/examination/ExamListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 13
    return-void
.end method


# virtual methods
.method public getStateType()Lcom/zte/heartyservice/common/datatype/StateType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zte/heartyservice/examination/ExamListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    return-object v0
.end method

.method public setStateType(Lcom/zte/heartyservice/common/datatype/StateType;)V
    .locals 0
    .parameter "stateType"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/zte/heartyservice/examination/ExamListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refName:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/heartyservice/examination/ExamListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  stateType::: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/examination/ExamListItem;->stateType:Lcom/zte/heartyservice/common/datatype/StateType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
