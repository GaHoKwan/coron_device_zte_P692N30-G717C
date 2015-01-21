.class public final Lcom/android/mail/providers/UIProvider$MessageColumns;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageColumns"
.end annotation


# static fields
.field public static final ALWAYS_SHOW_IMAGES:Ljava/lang/String; = "alwaysShowImages"

.field public static final APPEND_REF_MESSAGE_CONTENT:Ljava/lang/String; = "appendRefMessageContent"

.field public static final ATTACHMENTS:Ljava/lang/String; = "attachments"

.field public static final ATTACHMENT_LIST_URI:Ljava/lang/String; = "attachmentListUri"

.field public static final BCC:Ljava/lang/String; = "bccAddresses"

.field public static final BODY_HTML:Ljava/lang/String; = "bodyHtml"

.field public static final BODY_TEXT:Ljava/lang/String; = "bodyText"

.field public static final CC:Ljava/lang/String; = "ccAddresses"

.field public static final CONVERSATION_ID:Ljava/lang/String; = "conversationId"

.field public static final CUSTOM_FROM_ADDRESS:Ljava/lang/String; = "customFrom"

.field public static final DATE_RECEIVED_MS:Ljava/lang/String; = "dateReceivedMs"

.field public static final DRAFT_TYPE:Ljava/lang/String; = "draftType"

.field public static final EMBEDS_EXTERNAL_RESOURCES:Ljava/lang/String; = "bodyEmbedsExternalResources"

.field public static final EVENT_INTENT_URI:Ljava/lang/String; = "eventIntentUri"

.field public static final FROM:Ljava/lang/String; = "fromAddress"

.field public static final HAS_ATTACHMENTS:Ljava/lang/String; = "hasAttachments"

.field public static final JOINED_ATTACHMENT_INFOS:Ljava/lang/String; = "joinedAttachmentInfos"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_ACCOUNT_URI:Ljava/lang/String; = "messageAccountUri"

.field public static final MESSAGE_FLAGS:Ljava/lang/String; = "messageFlags"

.field public static final QUOTE_START_POS:Ljava/lang/String; = "quotedTextStartPos"

.field public static READ:Ljava/lang/String; = null

.field public static final REF_MESSAGE_ID:Ljava/lang/String; = "refMessageId"

.field public static final REPLY_TO:Ljava/lang/String; = "replyToAddress"

.field public static final SAVE_MESSAGE_URI:Ljava/lang/String; = "saveMessageUri"

.field public static final SEND_MESSAGE_URI:Ljava/lang/String; = "sendMessageUri"

.field public static final SERVER_ID:Ljava/lang/String; = "serverMessageId"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static STARRED:Ljava/lang/String; = null

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final TO:Ljava/lang/String; = "toAddresses"

.field public static final URI:Ljava/lang/String; = "messageUri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1130
    const-string v0, "read"

    sput-object v0, Lcom/android/mail/providers/UIProvider$MessageColumns;->READ:Ljava/lang/String;

    .line 1135
    const-string v0, "starred"

    sput-object v0, Lcom/android/mail/providers/UIProvider$MessageColumns;->STARRED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
