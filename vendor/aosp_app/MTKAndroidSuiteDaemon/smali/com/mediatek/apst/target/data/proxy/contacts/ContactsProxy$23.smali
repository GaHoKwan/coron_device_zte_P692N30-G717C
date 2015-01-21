.class Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;
.super Lcom/mediatek/android/content/DefaultBulkInsertHelper;
.source "ContactsProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->slowSyncAddDetailedContacts([B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

.field final synthetic val$raw:[B


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4775
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    iput-object p2, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;->val$raw:[B

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

    .line 4779
    array-length v0, p1

    .line 4780
    .local v0, expectedCount:I
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 4782
    .local v1, insertedCount:I
    if-eq v1, v0, :cond_0

    .line 4784
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;->this$0:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getProxyName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "slowSyncAddDetailedContacts"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;->val$raw:[B

    aput-object v6, v3, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bulk insert contact data failed, inserted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 4792
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
