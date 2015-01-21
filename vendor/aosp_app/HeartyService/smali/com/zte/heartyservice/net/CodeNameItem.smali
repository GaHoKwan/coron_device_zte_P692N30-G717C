.class public final Lcom/zte/heartyservice/net/CodeNameItem;
.super Ljava/lang/Object;
.source "CodeNameItem.java"


# instance fields
.field public final mCode:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "name"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p1, p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    instance-of v3, p1, Lcom/zte/heartyservice/net/CodeNameItem;

    if-nez v3, :cond_2

    move v1, v2

    .line 24
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 27
    .local v0, that:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v3, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    if-eqz v3, :cond_5

    :cond_3
    move v1, v2

    .line 28
    goto :goto_0

    .line 27
    :cond_4
    iget-object v3, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30
    :cond_5
    iget-object v3, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    :goto_1
    move v1, v2

    .line 31
    goto :goto_0

    .line 30
    :cond_6
    iget-object v3, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    return-object v0
.end method
