.class Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;
.super Lcom/mediatek/android/content/DefaultInsertBatchHelper;
.source "ContactsProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertGroupMembership([JLcom/mediatek/apst/util/entity/contacts/Group;)[J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

.field final synthetic val$contactIds:[J

.field final synthetic val$group:Lcom/mediatek/apst/util/entity/contacts/Group;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[JLcom/mediatek/apst/util/entity/contacts/Group;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 4442
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    iput-object p3, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;->val$contactIds:[J

    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;->val$group:Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-direct {p0, p2}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;-><init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsProxy.insertGroupMembership$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAppend(Lcom/mediatek/android/content/ContentProviderOperationBatch;I)V
    .locals 4
    .parameter "opBatch"
    .parameter "appendPosition"

    .prologue
    .line 4452
    check-cast p1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local p1
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;->val$contactIds:[J

    aget-wide v0, v0, p2

    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;->val$group:Lcom/mediatek/apst/util/entity/contacts/Group;

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendGroupMembershipInsert(JJ)Z

    .line 4454
    return-void
.end method

.method public onApply(Lcom/mediatek/android/content/ContentProviderOperationBatch;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "opBatch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 4460
    check-cast p1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method
