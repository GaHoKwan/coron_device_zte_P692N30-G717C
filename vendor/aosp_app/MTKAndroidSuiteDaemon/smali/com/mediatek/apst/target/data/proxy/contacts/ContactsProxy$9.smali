.class Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;
.super Lcom/mediatek/android/content/DefaultBulkInsertHelper;
.source "ContactsProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->restoreDetailedContacts([BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

.field final synthetic val$contactDataConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

.field final synthetic val$outBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$raw:[B

.field final synthetic val$rawContactsConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2656
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    iput-object p2, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$raw:[B

    iput-object p3, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$rawContactsConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    iput-object p4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$contactDataConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    iput-object p5, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$outBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute([Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2660
    array-length v0, p1

    .line 2661
    .local v0, expectedCount:I
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 2663
    .local v1, insertedCount:I
    if-eq v1, v0, :cond_0

    .line 2665
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getProxyName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "restoreDetailedContacts"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$raw:[B

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$rawContactsConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$contactDataConsumer:Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;->val$outBuffer:Ljava/nio/ByteBuffer;

    aput-object v7, v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bulk insert contact data failed, inserted "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", expected "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 2673
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
