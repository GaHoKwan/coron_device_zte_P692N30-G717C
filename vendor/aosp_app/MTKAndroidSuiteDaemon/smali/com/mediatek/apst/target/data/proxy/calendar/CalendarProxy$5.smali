.class Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$5;
.super Lcom/mediatek/android/content/DefaultBulkInsertHelper;
.source "CalendarProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertAllEvents(Ljava/util/List;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$5;->this$0:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-direct {p0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute([Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1406
    array-length v0, p1

    .line 1407
    .local v0, expectedCount:I
    iget-object v3, p0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$5;->this$0:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-virtual {v3}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v3

    sget-object v4, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, p1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 1409
    .local v1, insertedCount:I
    if-eq v1, v0, :cond_0

    .line 1411
    iget-object v3, p0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$5;->this$0:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-virtual {v3}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getProxyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InsertAllEvents"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bulk insert attendees failed, inserted "

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

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
