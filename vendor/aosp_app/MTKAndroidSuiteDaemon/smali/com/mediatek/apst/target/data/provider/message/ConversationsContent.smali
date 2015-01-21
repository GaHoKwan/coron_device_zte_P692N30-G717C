.class public Lcom/mediatek/apst/target/data/provider/message/ConversationsContent;
.super Ljava/lang/Object;
.source "ConversationsContent.java"


# static fields
.field public static final COLUMN_ADDRESS:Ljava/lang/String; = "address"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/ConversationsContent;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/message/ConversationsContent;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
