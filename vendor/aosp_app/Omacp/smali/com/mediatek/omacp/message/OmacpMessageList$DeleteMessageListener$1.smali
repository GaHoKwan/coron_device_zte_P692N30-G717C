.class Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "OmacpMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 676
    const/16 v1, 0x641

    .line 677
    .local v1, token:I
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->access$1500(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    sget-object v3, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J
    invoke-static {v4}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)J

    move-result-wide v4

    #calls: Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->markAsRead(J)V
    invoke-static {v0, v4, v5}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->access$1600(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;J)V

    .line 682
    sget-object v0, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J
    invoke-static {v4}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->access$1400(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 684
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->access$1500(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
