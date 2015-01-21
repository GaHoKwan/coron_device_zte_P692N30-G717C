.class public final Lcom/android/mail/providers/UIProvider$ConversationColumns;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationColumns"
.end annotation


# static fields
.field public static final DATE_RECEIVED_MS:Ljava/lang/String; = "dateReceivedMs"

.field public static final FLAGS:Ljava/lang/String; = "conversationFlags"

.field public static final FOLDER_LIST:Ljava/lang/String; = "folderList"

.field public static final HAS_ATTACHMENTS:Ljava/lang/String; = "hasAttachments"

.field public static final MESSAGE_LIST_URI:Ljava/lang/String; = "messageListUri"

.field public static final MUTED:Ljava/lang/String; = "muted"

.field public static NUM_DRAFTS:Ljava/lang/String; = null

.field public static NUM_MESSAGES:Ljava/lang/String; = null

.field public static final PERSONAL_LEVEL:Ljava/lang/String; = "personalLevel"

.field public static PRIORITY:Ljava/lang/String; = null

.field public static final RAW_FOLDERS:Ljava/lang/String; = "rawFolders"

.field public static READ:Ljava/lang/String; = null

.field public static final SENDER_INFO:Ljava/lang/String; = "senderInfo"

.field public static SENDING_STATE:Ljava/lang/String; = null

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SPAM:Ljava/lang/String; = "spam"

.field public static STARRED:Ljava/lang/String; = null

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final URI:Ljava/lang/String; = "conversationUri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 762
    const-string v0, "numMessages"

    sput-object v0, Lcom/android/mail/providers/UIProvider$ConversationColumns;->NUM_MESSAGES:Ljava/lang/String;

    .line 768
    const-string v0, "numDrafts"

    sput-object v0, Lcom/android/mail/providers/UIProvider$ConversationColumns;->NUM_DRAFTS:Ljava/lang/String;

    .line 775
    const-string v0, "sendingState"

    sput-object v0, Lcom/android/mail/providers/UIProvider$ConversationColumns;->SENDING_STATE:Ljava/lang/String;

    .line 781
    const-string v0, "priority"

    sput-object v0, Lcom/android/mail/providers/UIProvider$ConversationColumns;->PRIORITY:Ljava/lang/String;

    .line 786
    const-string v0, "read"

    sput-object v0, Lcom/android/mail/providers/UIProvider$ConversationColumns;->READ:Ljava/lang/String;

    .line 791
    const-string v0, "starred"

    sput-object v0, Lcom/android/mail/providers/UIProvider$ConversationColumns;->STARRED:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    return-void
.end method
