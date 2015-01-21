.class public final Lcom/android/mail/providers/UIProvider$FolderColumns;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderColumns"
.end annotation


# static fields
.field public static final BG_COLOR:Ljava/lang/String; = "bgColor"

.field public static CAPABILITIES:Ljava/lang/String; = null

.field public static final CHILD_FOLDERS_LIST_URI:Ljava/lang/String; = "childFoldersListUri"

.field public static final CONVERSATION_LIST_URI:Ljava/lang/String; = "conversationListUri"

.field public static final FG_COLOR:Ljava/lang/String; = "fgColor"

.field public static HAS_CHILDREN:Ljava/lang/String; = null

.field public static final ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field public static final LAST_SYNC_RESULT:Ljava/lang/String; = "lastSyncResult"

.field public static final LOAD_MORE_URI:Ljava/lang/String; = "loadMoreUri"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final REFRESH_URI:Ljava/lang/String; = "refreshUri"

.field public static final SYNC_STATUS:Ljava/lang/String; = "syncStatus"

.field public static SYNC_WINDOW:Ljava/lang/String; = null

.field public static final TOTAL_COUNT:Ljava/lang/String; = "totalCount"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unreadCount"

.field public static final URI:Ljava/lang/String; = "folderUri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 580
    const-string v0, "capabilities"

    sput-object v0, Lcom/android/mail/providers/UIProvider$FolderColumns;->CAPABILITIES:Ljava/lang/String;

    .line 585
    const-string v0, "hasChildren"

    sput-object v0, Lcom/android/mail/providers/UIProvider$FolderColumns;->HAS_CHILDREN:Ljava/lang/String;

    .line 589
    const-string v0, "syncWindow"

    sput-object v0, Lcom/android/mail/providers/UIProvider$FolderColumns;->SYNC_WINDOW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
