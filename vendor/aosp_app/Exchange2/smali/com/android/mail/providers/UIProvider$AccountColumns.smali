.class public final Lcom/android/mail/providers/UIProvider$AccountColumns;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/providers/UIProvider$AccountColumns$SettingsColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FROM_ADDRESSES:Ljava/lang/String; = "accountFromAddresses"

.field public static final CAPABILITIES:Ljava/lang/String; = "capabilities"

.field public static final COMPOSE_URI:Ljava/lang/String; = "composeUri"

.field public static final EXPUNGE_MESSAGE_URI:Ljava/lang/String; = "expungeMessageUri"

.field public static final FOLDER_LIST_URI:Ljava/lang/String; = "folderListUri"

.field public static HELP_INTENT_URI:Ljava/lang/String; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROVIDER_VERSION:Ljava/lang/String; = "providerVersion"

.field public static final RECENT_FOLDER_LIST_URI:Ljava/lang/String; = "recentFolderListUri"

.field public static final SAVE_DRAFT_URI:Ljava/lang/String; = "saveDraftUri"

.field public static final SEARCH_URI:Ljava/lang/String; = "searchUri"

.field public static SEND_FEEDBACK_INTENT_URI:Ljava/lang/String; = null

.field public static final SEND_MAIL_URI:Ljava/lang/String; = "sendMailUri"

.field public static SETTINGS_INTENT_URI:Ljava/lang/String; = null

.field public static final SYNC_STATUS:Ljava/lang/String; = "syncStatus"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNDO_URI:Ljava/lang/String; = "undoUri"

.field public static final URI:Ljava/lang/String; = "accountUri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    const-string v0, "accountSettingsIntentUri"

    sput-object v0, Lcom/android/mail/providers/UIProvider$AccountColumns;->SETTINGS_INTENT_URI:Ljava/lang/String;

    .line 350
    const-string v0, "helpIntentUri"

    sput-object v0, Lcom/android/mail/providers/UIProvider$AccountColumns;->HELP_INTENT_URI:Ljava/lang/String;

    .line 358
    const-string v0, "sendFeedbackIntentUri"

    sput-object v0, Lcom/android/mail/providers/UIProvider$AccountColumns;->SEND_FEEDBACK_INTENT_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    return-void
.end method
