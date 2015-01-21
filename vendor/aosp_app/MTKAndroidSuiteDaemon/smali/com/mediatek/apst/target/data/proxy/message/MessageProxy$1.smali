.class Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;
.super Lcom/mediatek/android/content/DefaultBulkInsertHelper;
.source "MessageProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;->importSms([BLjava/util/ArrayList;)[J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

.field final synthetic val$raw:[B

.field final synthetic val$threadIdsToReturn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;[BLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->this$0:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    iput-object p2, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->val$raw:[B

    iput-object p3, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->val$threadIdsToReturn:Ljava/util/ArrayList;

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

    .line 391
    array-length v0, p1

    .line 392
    .local v0, expectedCount:I
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->this$0:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/message/SmsContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, p1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 394
    .local v1, insertedCount:I
    if-eq v1, v0, :cond_0

    .line 396
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->this$0:Lcom/mediatek/apst/target/data/proxy/message/MessageProxy;

    invoke-virtual {v4}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getProxyName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "importSms"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->val$raw:[B

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/mediatek/apst/target/data/proxy/message/MessageProxy$1;->val$threadIdsToReturn:Ljava/util/ArrayList;

    aput-object v7, v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bulk insert SMS failed, inserted "

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

    .line 402
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
