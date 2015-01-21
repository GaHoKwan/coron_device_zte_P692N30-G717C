.class public Lcom/android/ex/chips/MTKRecipientList;
.super Ljava/lang/Object;
.source "MTKRecipientList.java"


# instance fields
.field private mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/MTKRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    .line 45
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public addRecipient(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "contactId"
    .parameter "dataId"
    .parameter "displayName"
    .parameter "destination"

    .prologue
    .line 60
    new-instance v0, Lcom/android/ex/chips/MTKRecipient;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/chips/MTKRecipient;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, recipient:Lcom/android/ex/chips/MTKRecipient;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addRecipient(Lcom/android/ex/chips/MTKRecipient;)V
    .locals 1
    .parameter "recipient"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "displayName"
    .parameter "destination"

    .prologue
    .line 55
    new-instance v0, Lcom/android/ex/chips/MTKRecipient;

    invoke-direct {v0, p1, p2}, Lcom/android/ex/chips/MTKRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, recipient:Lcom/android/ex/chips/MTKRecipient;
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public clearRecipients()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    return-void
.end method

.method public getRecipient(I)Lcom/android/ex/chips/MTKRecipient;
    .locals 1
    .parameter "index"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKRecipient;

    return-object v0
.end method

.method public getRecipientContactId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKRecipient;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKRecipient;->getContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientDataId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKRecipient;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKRecipient;->getDataId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecipientDestination(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKRecipient;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKRecipient;->getDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientDisplayName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/MTKRecipient;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKRecipient;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/chips/MTKRecipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientList;->mRecipientList:Ljava/util/ArrayList;

    return-object v0
.end method
