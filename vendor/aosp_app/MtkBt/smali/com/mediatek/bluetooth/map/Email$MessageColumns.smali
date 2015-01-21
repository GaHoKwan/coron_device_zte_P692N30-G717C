.class public Lcom/mediatek/bluetooth/map/Email$MessageColumns;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageColumns"
.end annotation


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final BCC_LIST:Ljava/lang/String; = "bccList"

.field public static final CC_LIST:Ljava/lang/String; = "ccList"

.field public static final CLIENT_ID:Ljava/lang/String; = "clientId"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAG_ATTACHMENT:Ljava/lang/String; = "flagAttachment"

.field public static final FLAG_FAVORITE:Ljava/lang/String; = "flagFavorite"

.field public static final FLAG_LOADED:Ljava/lang/String; = "flagLoaded"

.field public static final FLAG_READ:Ljava/lang/String; = "flagRead"

.field public static final FROM_LIST:Ljava/lang/String; = "fromList"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MAILBOX_KEY:Ljava/lang/String; = "mailboxKey"

.field public static final MEETING_INFO:Ljava/lang/String; = "meetingInfo"

.field public static final MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final REPLY_TO_LIST:Ljava/lang/String; = "replyToList"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final TO_LIST:Ljava/lang/String; = "toList"


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/Email;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/Email;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Email$MessageColumns;->this$0:Lcom/mediatek/bluetooth/map/Email;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
