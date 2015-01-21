.class public Lcom/zte/heartyservice/common/datatype/CommonListItem;
.super Ljava/lang/Object;
.source "CommonListItem.java"


# instance fields
.field private refName:Ljava/lang/String;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "refName"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->refName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "refName"
    .parameter "tag"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->refName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->tag:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public getRefName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->refName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setRefName(Ljava/lang/String;)V
    .locals 0
    .parameter "refName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->refName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListItem;->tag:Ljava/lang/Object;

    .line 41
    return-void
.end method
