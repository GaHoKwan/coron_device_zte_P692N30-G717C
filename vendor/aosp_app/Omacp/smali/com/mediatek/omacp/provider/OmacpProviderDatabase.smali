.class public final Lcom/mediatek/omacp/provider/OmacpProviderDatabase;
.super Ljava/lang/Object;
.source "OmacpProviderDatabase.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTEXT:Ljava/lang/String; = "context"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date ASC"

.field public static final INSTALLED:Ljava/lang/String; = "installed"

.field public static final MAC:Ljava/lang/String; = "mac"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PIN_UNLOCK:Ljava/lang/String; = "pin_unlock"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SEC:Ljava/lang/String; = "sec"

.field public static final SEEN:Ljava/lang/String; = "seen"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final SERVICE_CENTER:Ljava/lang/String; = "service_center"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final STATUS_INSTALLED:I = 0x1

.field public static final STATUS_PIN_LOCKED:I = 0x1

.field public static final STATUS_PIN_UNLOCKED:I = 0x0

.field public static final STATUS_READ:I = 0x1

.field public static final STATUS_SEEN:I = 0x1

.field public static final STATUS_UNINSTALLED:I = 0x0

.field public static final STATUS_UNREAD:I = 0x0

.field public static final STATUS_UNSEEN:I = 0x0

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://omacp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omacp/provider/OmacpProviderDatabase;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
