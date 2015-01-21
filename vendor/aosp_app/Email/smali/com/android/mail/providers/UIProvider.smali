.class public Lcom/android/mail/providers/UIProvider;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/providers/UIProvider$EditSettingsExtras;,
        Lcom/android/mail/providers/UIProvider$UpdateNotificationExtras;,
        Lcom/android/mail/providers/UIProvider$DefaultReplyBehavior;,
        Lcom/android/mail/providers/UIProvider$MessageTextSize;,
        Lcom/android/mail/providers/UIProvider$SnapHeaderValue;,
        Lcom/android/mail/providers/UIProvider$AutoAdvance;,
        Lcom/android/mail/providers/UIProvider$AttachmentColumns;,
        Lcom/android/mail/providers/UIProvider$AttachmentDestination;,
        Lcom/android/mail/providers/UIProvider$AttachmentState;,
        Lcom/android/mail/providers/UIProvider$MessageOperations;,
        Lcom/android/mail/providers/UIProvider$MessageColumns;,
        Lcom/android/mail/providers/UIProvider$MessageFlags;,
        Lcom/android/mail/providers/UIProvider$AccountCursorExtraKeys;,
        Lcom/android/mail/providers/UIProvider$CursorExtraKeys;,
        Lcom/android/mail/providers/UIProvider$CursorStatus;,
        Lcom/android/mail/providers/UIProvider$DraftType;,
        Lcom/android/mail/providers/UIProvider$ConversationOperations;,
        Lcom/android/mail/providers/UIProvider$ConversationCursorCommand;,
        Lcom/android/mail/providers/UIProvider$ConversationColumns;,
        Lcom/android/mail/providers/UIProvider$ConversationFlags;,
        Lcom/android/mail/providers/UIProvider$ConversationPersonalLevel;,
        Lcom/android/mail/providers/UIProvider$ConversationPriority;,
        Lcom/android/mail/providers/UIProvider$ConversationSendingState;,
        Lcom/android/mail/providers/UIProvider$FolderColumns;,
        Lcom/android/mail/providers/UIProvider$FolderCapabilities;,
        Lcom/android/mail/providers/UIProvider$FolderType;,
        Lcom/android/mail/providers/UIProvider$ConversationListQueryParameters;,
        Lcom/android/mail/providers/UIProvider$SearchQueryParameters;,
        Lcom/android/mail/providers/UIProvider$AccountColumns;,
        Lcom/android/mail/providers/UIProvider$AccountCapabilities;,
        Lcom/android/mail/providers/UIProvider$LastSyncResult;,
        Lcom/android/mail/providers/UIProvider$SyncStatus;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_PROJECTION:[Ljava/lang/String; = null

.field public static final ACCOUNT_CAPABILITIES_COLUMN:I = 0x4

.field public static final ACCOUNT_COMPOSE_INTENT_URI_COLUMN:I = 0x10

.field public static final ACCOUNT_EXPUNGE_MESSAGE_URI_COLUMN:I = 0xa

.field public static final ACCOUNT_FOLDER_LIST_URI_COLUMN:I = 0x5

.field public static final ACCOUNT_FROM_ADDRESSES_COLUMN:I = 0x7

.field public static final ACCOUNT_HELP_INTENT_URI_COLUMN:I = 0xe

.field public static final ACCOUNT_ID_COLUMN:I = 0x0

.field public static final ACCOUNT_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.account"

.field public static final ACCOUNT_MIME_TYPE_COLUMN:I = 0x11

.field public static final ACCOUNT_NAME_COLUMN:I = 0x1

.field public static final ACCOUNT_PROVIDER_VERISON_COLUMN:I = 0x2

.field public static final ACCOUNT_RECENT_FOLDER_LIST_URI_COLUMN:I = 0x12

.field public static final ACCOUNT_SAVE_DRAFT_URI_COLUMN:I = 0x8

.field public static final ACCOUNT_SEARCH_URI_COLUMN:I = 0x6

.field public static final ACCOUNT_SEND_FEEDBACK_INTENT_URI_COLUMN:I = 0xf

.field public static final ACCOUNT_SEND_MESSAGE_URI_COLUMN:I = 0x9

.field public static final ACCOUNT_SETTINGS_AUTO_ADVANCE_COLUMN:I = 0x14

.field public static final ACCOUNT_SETTINGS_CONFIRM_ARCHIVE_COLUMN:I = 0x1a

.field public static final ACCOUNT_SETTINGS_CONFIRM_DELETE_COLUMN:I = 0x19

.field public static final ACCOUNT_SETTINGS_CONFIRM_SEND_COLUMN:I = 0x1b

.field public static final ACCOUNT_SETTINGS_DEFAULT_INBOX_COLUMN:I = 0x1c

.field public static final ACCOUNT_SETTINGS_FORCE_REPLY_FROM_DEFAULT_COLUMN:I = 0x1d

.field public static final ACCOUNT_SETTINGS_HIDE_CHECKBOXES_COLUMN:I = 0x18

.field public static final ACCOUNT_SETTINGS_INTENT_URI_COLUMN:I = 0xc

.field public static final ACCOUNT_SETTINGS_MESSAGE_TEXT_SIZE_COLUMN:I = 0x15

.field public static final ACCOUNT_SETTINGS_REPLY_BEHAVIOR_COLUMN:I = 0x17

.field public static final ACCOUNT_SETTINGS_SIGNATURE_COLUMN:I = 0x13

.field public static final ACCOUNT_SETTINGS_SNAP_HEADERS_COLUMN:I = 0x15

.field public static final ACCOUNT_SYNC_STATUS_COLUMN:I = 0xd

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.account"

.field public static final ACCOUNT_UNDO_URI_COLUMN:I = 0xb

.field public static final ACCOUNT_URI_COLUMN:I = 0x3

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.android.mail.action.update_notification"

.field public static final ATTACHMENT_CONTENT_TYPE_COLUMN:I = 0x3

.field public static final ATTACHMENT_CONTENT_URI_COLUMN:I = 0x7

.field public static final ATTACHMENT_DESTINATION_COLUMN:I = 0x5

.field public static final ATTACHMENT_DOWNLOADED_SIZE_COLUMN:I = 0x6

.field public static final ATTACHMENT_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.attachment"

.field public static final ATTACHMENT_NAME_COLUMN:I = 0x0

.field public static final ATTACHMENT_PREVIEW_INTENT_COLUMN:I = 0x9

.field public static final ATTACHMENT_PROJECTION:[Ljava/lang/String; = null

.field public static final ATTACHMENT_SIZE_COLUMN:I = 0x1

.field public static final ATTACHMENT_STATE_COLUMN:I = 0x4

.field public static final ATTACHMENT_THUMBNAIL_URI_COLUMN:I = 0x8

.field public static final ATTACHMENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.attachment"

.field public static final ATTACHMENT_URI_COLUMN:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.mail.providers"

.field public static final CONVERSATION_DATE_RECEIVED_MS_COLUMN:I = 0x6

.field public static final CONVERSATION_FLAGS_COLUMN:I = 0x10

.field public static final CONVERSATION_FOLDER_LIST_COLUMN:I = 0xe

.field public static final CONVERSATION_HAS_ATTACHMENTS_COLUMN:I = 0x7

.field public static final CONVERSATION_ID_COLUMN:I = 0x0

.field public static final CONVERSATION_IS_SPAM_COLUMN:I = 0x12

.field public static final CONVERSATION_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.conversation"

.field public static final CONVERSATION_MESSAGE_LIST_URI_COLUMN:I = 0x2

.field public static final CONVERSATION_MUTED_COLUMN:I = 0x13

.field public static final CONVERSATION_NUM_DRAFTS_COLUMN:I = 0x9

.field public static final CONVERSATION_NUM_MESSAGES_COLUMN:I = 0x8

.field public static final CONVERSATION_PERSONAL_LEVEL_COLUMN:I = 0x11

.field public static final CONVERSATION_PRIORITY_COLUMN:I = 0xb

.field public static final CONVERSATION_PROJECTION:[Ljava/lang/String; = null

.field public static final CONVERSATION_RAW_FOLDERS_COLUMN:I = 0xf

.field public static final CONVERSATION_READ_COLUMN:I = 0xc

.field public static final CONVERSATION_SENDER_INFO_COLUMN:I = 0x5

.field public static final CONVERSATION_SENDING_STATE_COLUMN:I = 0xa

.field public static final CONVERSATION_SNIPPET_COLUMN:I = 0x4

.field public static final CONVERSATION_STARRED_COLUMN:I = 0xd

.field public static final CONVERSATION_SUBJECT_COLUMN:I = 0x3

.field public static final CONVERSATION_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.conversation"

.field public static final CONVERSATION_URI_COLUMN:I = 0x1

.field public static final EMAIL_SEPARATOR:Ljava/lang/String; = ","

.field private static final EMAIL_SEPARATOR_PATTERN:Ljava/lang/String; = "\n"

.field public static final FOLDERS_PROJECTION:[Ljava/lang/String; = null

.field public static final FOLDER_BG_COLOR_COLUMN:I = 0xf

.field public static final FOLDER_CAPABILITIES_COLUMN:I = 0x4

.field public static final FOLDER_CHILD_FOLDERS_LIST_COLUMN:I = 0x7

.field public static final FOLDER_CONVERSATION_LIST_URI_COLUMN:I = 0x6

.field public static final FOLDER_FG_COLOR_COLUMN:I = 0x10

.field public static final FOLDER_HAS_CHILDREN_COLUMN:I = 0x3

.field public static final FOLDER_ICON_RES_ID_COLUMN:I = 0xe

.field public static final FOLDER_ID_COLUMN:I = 0x0

.field public static final FOLDER_LAST_SYNC_RESULT_COLUMN:I = 0xc

.field public static final FOLDER_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.folder"

.field public static final FOLDER_LOAD_MORE_URI_COLUMN:I = 0x11

.field public static final FOLDER_NAME_COLUMN:I = 0x2

.field public static final FOLDER_REFRESH_URI_COLUMN:I = 0xa

.field public static final FOLDER_SYNC_STATUS_COLUMN:I = 0xb

.field public static final FOLDER_SYNC_WINDOW_COLUMN:I = 0x5

.field public static final FOLDER_TOTAL_COUNT_COLUMN:I = 0x9

.field public static final FOLDER_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.folder"

.field public static final FOLDER_TYPE_COLUMN:I = 0xd

.field public static final FOLDER_UNREAD_COUNT_COLUMN:I = 0x8

.field public static final FOLDER_URI_COLUMN:I = 0x1

.field public static final INVALID_CONVERSATION_ID:J = -0x1L

.field public static final INVALID_MESSAGE_ID:J = -0x1L

.field public static final LIST_PARAMS_QUERY_PARAMETER:Ljava/lang/String; = "listParams"

.field public static final MESSAGE_ACCOUNT_URI_COLUMN:I = 0x1e

.field public static final MESSAGE_ALWAYS_SHOW_IMAGES_COLUMN:I = 0x18

.field public static final MESSAGE_APPEND_REF_MESSAGE_CONTENT_COLUMN:I = 0x11

.field public static final MESSAGE_ATTACHMENTS_COLUMN:I = 0x1c

.field public static final MESSAGE_ATTACHMENT_INFO_SEPARATOR:Ljava/lang/String; = "\n"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_ATTACHMENT_LIST_URI_COLUMN:I = 0x13

.field public static final MESSAGE_BCC_COLUMN:I = 0x9

.field public static final MESSAGE_BODY_HTML_COLUMN:I = 0xc

.field public static final MESSAGE_BODY_TEXT_COLUMN:I = 0xd

.field public static final MESSAGE_CC_COLUMN:I = 0x8

.field public static final MESSAGE_CONVERSATION_URI_COLUMN:I = 0x3

.field public static final MESSAGE_CUSTOM_FROM_ADDRESS_COLUMN:I = 0x1d

.field public static final MESSAGE_DATE_RECEIVED_MS_COLUMN:I = 0xb

.field public static final MESSAGE_DRAFT_TYPE_COLUMN:I = 0x10

.field public static final MESSAGE_EMBEDS_EXTERNAL_RESOURCES_COLUMN:I = 0xe

.field public static final MESSAGE_EVENT_INTENT_COLUMN:I = 0x1f

.field public static final MESSAGE_FLAGS_COLUMN:I = 0x14

.field public static final MESSAGE_FROM_COLUMN:I = 0x6

.field public static final MESSAGE_HAS_ATTACHMENTS_COLUMN:I = 0x12

.field public static final MESSAGE_ID_COLUMN:I = 0x0

.field public static final MESSAGE_JOINED_ATTACHMENT_INFOS_COLUMN:I = 0x15

.field public static final MESSAGE_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.android.mail.message"

.field public static final MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field public static final MESSAGE_READ_COLUMN:I = 0x19

.field public static final MESSAGE_REF_MESSAGE_ID_COLUMN:I = 0xf

.field public static final MESSAGE_REPLY_TO_COLUMN:I = 0xa

.field public static final MESSAGE_SAVE_URI_COLUMN:I = 0x16

.field public static final MESSAGE_SEND_URI_COLUMN:I = 0x17

.field public static final MESSAGE_SERVER_ID_COLUMN:I = 0x1

.field public static final MESSAGE_SNIPPET_COLUMN:I = 0x5

.field public static final MESSAGE_STARRED_COLUMN:I = 0x1a

.field public static final MESSAGE_SUBJECT_COLUMN:I = 0x4

.field public static final MESSAGE_TO_COLUMN:I = 0x7

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.android.mail.message"

.field public static final MESSAGE_URI_COLUMN:I = 0x2

.field public static final QUOTED_TEXT_OFFSET_COLUMN:I = 0x1b

.field public static final SEQUENCE_QUERY_PARAMETER:Ljava/lang/String; = "seq"

.field public static final UNDO_MESSAGE_LIST_COLUMN:I

.field public static final UNDO_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "providerVersion"

    aput-object v1, v0, v5

    const-string v1, "accountUri"

    aput-object v1, v0, v6

    const-string v1, "capabilities"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "folderListUri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "searchUri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountFromAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "saveDraftUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sendMailUri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "expungeMessageUri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "undoUri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/mail/providers/UIProvider$AccountColumns;->SETTINGS_INTENT_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/mail/providers/UIProvider$AccountColumns;->HELP_INTENT_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/mail/providers/UIProvider$AccountColumns;->SEND_FEEDBACK_INTENT_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "composeUri"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "recentFolderListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "auto_advance"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "message_text_size"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "snap_headers"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "reply_behavior"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "hide_checkboxes"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "confirm_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "confirm_archive"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "confirm_send"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "default_inbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/mail/providers/UIProvider$AccountColumns$SettingsColumns;->FORCE_REPLY_FROM_DEFAULT:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 483
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "folderUri"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mail/providers/UIProvider$FolderColumns;->HAS_CHILDREN:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mail/providers/UIProvider$FolderColumns;->CAPABILITIES:Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mail/providers/UIProvider$FolderColumns;->SYNC_WINDOW:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "conversationListUri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "childFoldersListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "totalCount"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "refreshUri"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lastSyncResult"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "iconResId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "bgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fgColor"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "loadMoreUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 651
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "conversationUri"

    aput-object v1, v0, v4

    const-string v1, "messageListUri"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "senderInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mail/providers/UIProvider$ConversationColumns;->NUM_MESSAGES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/mail/providers/UIProvider$ConversationColumns;->NUM_DRAFTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/mail/providers/UIProvider$ConversationColumns;->SENDING_STATE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/mail/providers/UIProvider$ConversationColumns;->PRIORITY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/mail/providers/UIProvider$ConversationColumns;->READ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/mail/providers/UIProvider$ConversationColumns;->STARRED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "folderList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rawFolders"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "conversationFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "personalLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "spam"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "muted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 893
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "serverMessageId"

    aput-object v1, v0, v4

    const-string v1, "messageUri"

    aput-object v1, v0, v5

    const-string v1, "conversationId"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fromAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "toAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bccAddresses"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "replyToAddress"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dateReceivedMs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bodyHtml"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bodyText"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bodyEmbedsExternalResources"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "refMessageId"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "draftType"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "appendRefMessageContent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hasAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "attachmentListUri"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "messageFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "joinedAttachmentInfos"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "saveMessageUri"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sendMessageUri"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "alwaysShowImages"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/mail/providers/UIProvider$MessageColumns;->READ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/mail/providers/UIProvider$MessageColumns;->STARRED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "quotedTextStartPos"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "customFrom"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "messageAccountUri"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "eventIntentUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 1189
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    const-string v1, "_size"

    aput-object v1, v0, v4

    const-string v1, "uri"

    aput-object v1, v0, v5

    const-string v1, "contentType"

    aput-object v1, v0, v6

    const-string v1, "state"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "destination"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "downloadedSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thumbnailUri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "previewIntent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 1366
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "messageListUri"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mail/providers/UIProvider;->UNDO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    return-void
.end method

.method public static getAttachmentTypeSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1353
    const-string v0, "com.google.android.gm.allowAddAnyAttachment"

    return-object v0
.end method

.method public static getMailMaxAttachmentSize(Ljava/lang/String;)I
    .locals 1
    .parameter "account"

    .prologue
    .line 1348
    const/high16 v0, 0x50

    return v0
.end method

.method public static incrementRecipientsTimesContacted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "addressString"

    .prologue
    .line 1357
    new-instance v6, Lcom/android/common/contacts/DataUsageStatUpdater;

    invoke-direct {v6, p0}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 1358
    .local v6, statsUpdater:Lcom/android/common/contacts/DataUsageStatUpdater;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v5, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "\n"

    invoke-static {p1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1360
    .local v1, addresses:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 1361
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1363
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v5}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithAddress(Ljava/util/Collection;)Z

    .line 1364
    return-void
.end method
