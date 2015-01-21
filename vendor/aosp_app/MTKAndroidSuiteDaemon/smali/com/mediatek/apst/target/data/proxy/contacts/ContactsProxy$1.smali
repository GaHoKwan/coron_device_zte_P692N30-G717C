.class Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;
.super Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
.source "ContactsProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnPhone([JZ)[Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

.field final synthetic val$ids:[J

.field final synthetic val$permanently:Z


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[JZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    iput-object p3, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;->val$ids:[J

    iput-boolean p4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;->val$permanently:Z

    invoke-direct {p0, p2}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;-><init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsProxy.deleteContact$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAppend(Lcom/mediatek/android/content/ContentProviderOperationBatch;I)V
    .locals 3
    .parameter "opBatch"
    .parameter "appendPosition"

    .prologue
    .line 1951
    check-cast p1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local p1
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;->val$ids:[J

    aget-wide v0, v0, p2

    iget-boolean v2, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;->val$permanently:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendRawContactDelete(JZ)Z

    .line 1953
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
    .line 1959
    check-cast p1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method
