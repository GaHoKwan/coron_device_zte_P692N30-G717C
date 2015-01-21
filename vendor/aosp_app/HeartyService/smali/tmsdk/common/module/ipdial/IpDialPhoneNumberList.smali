.class public final Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/ipdial/IpDialPhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 22
    invoke-direct {p0}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->copyFrom(Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;)V

    .line 24
    return-void
.end method


# virtual methods
.method public add(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)V
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->exists(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    return-void
.end method

.method public copyFrom(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/ipdial/IpDialPhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/ipdial/IpDialPhoneNumber;>;"
    if-eqz p1, :cond_0

    .line 53
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    .line 55
    .local v0, c:Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    new-instance v2, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    invoke-direct {v2, v0}, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;-><init>(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)V

    invoke-virtual {p0, v2}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->add(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)V

    goto :goto_0

    .line 58
    .end local v0           #c:Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public copyFrom(Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 41
    iget-object v2, p1, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    .line 42
    .local v0, c:Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    iget-object v2, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    new-instance v3, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    invoke-direct {v3, v0}, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;-><init>(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0           #c:Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public exists(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)Z
    .locals 5
    .parameter "phoneNumber"

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    iget-object v3, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    .line 106
    .local v1, s:Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    invoke-virtual {v1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdkobf/lo;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get(I)Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 122
    if-ltz p1, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/ipdial/IpDialPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
