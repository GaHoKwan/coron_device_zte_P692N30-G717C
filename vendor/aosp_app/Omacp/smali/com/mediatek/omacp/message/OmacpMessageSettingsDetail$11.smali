.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->markAsRead()V
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
    .line 823
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 825
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 826
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsReadBlocked:Z
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$600(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$500(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 834
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$700()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 836
    .local v2, messageUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 837
    .local v1, mReadContentValues:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    const-string v3, "seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 841
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$11;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageNotification;->updateAllNotifications(Landroid/content/Context;)V

    .line 843
    return-void

    .line 829
    .end local v1           #mReadContentValues:Landroid/content/ContentValues;
    .end local v2           #messageUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "Omacp/OmacpMessageSettingsDetail"

    const-string v5, "OmacpMessageSettingDetail InterruptedException."

    invoke-static {v3, v5}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
