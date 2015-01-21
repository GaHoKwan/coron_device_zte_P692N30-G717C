.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->markMessageAsPinUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 352
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v4}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 353
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsReadBlocked:Z
    invoke-static {v4}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$600(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v4}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$5;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 363
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 364
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "pin_unlock"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    sget-object v4, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$700()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 369
    .local v1, messageUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    monitor-exit v5

    .line 371
    return-void

    .line 356
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
