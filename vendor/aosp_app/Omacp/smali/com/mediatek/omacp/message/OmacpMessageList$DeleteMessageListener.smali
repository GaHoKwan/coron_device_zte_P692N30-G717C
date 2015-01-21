.class public Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;
.super Ljava/lang/Object;
.source "OmacpMessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omacp/message/OmacpMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private final mMessageId:J


# direct methods
.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter "messageId"
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-wide p1, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J

    .line 655
    iput-object p3, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 656
    iput-object p4, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mContext:Landroid/content/Context;

    .line 657
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 646
    iget-wide v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 646
    invoke-direct {p0, p1, p2}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->markAsRead(J)V

    return-void
.end method

.method private markAsRead(J)V
    .locals 6
    .parameter "threadId"

    .prologue
    const/4 v5, 0x1

    .line 660
    sget-object v2, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 663
    .local v0, messageUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 664
    .local v1, readContentValues:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    iget-object v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "read=0"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 670
    const-string v0, "Omacp/OmacpMessageList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OmacpMessageList DeleteMessageListener onClick mMessageId is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v0, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;

    invoke-direct {v0, p0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;-><init>(Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener;)V

    invoke-virtual {v0}, Lcom/mediatek/omacp/message/OmacpMessageList$DeleteMessageListener$1;->run()V

    .line 688
    return-void
.end method
