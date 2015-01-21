.class public final Lcom/android/mail/providers/UIProvider$AccountColumns$SettingsColumns;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider$AccountColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsColumns"
.end annotation


# static fields
.field public static final AUTO_ADVANCE:Ljava/lang/String; = "auto_advance"

.field public static final CONFIRM_ARCHIVE:Ljava/lang/String; = "confirm_archive"

.field public static final CONFIRM_DELETE:Ljava/lang/String; = "confirm_delete"

.field public static final CONFIRM_SEND:Ljava/lang/String; = "confirm_send"

.field public static final DEFAULT_INBOX:Ljava/lang/String; = "default_inbox"

.field public static FORCE_REPLY_FROM_DEFAULT:Ljava/lang/String; = null

.field public static final HIDE_CHECKBOXES:Ljava/lang/String; = "hide_checkboxes"

.field public static final MESSAGE_TEXT_SIZE:Ljava/lang/String; = "message_text_size"

.field public static final REPLY_BEHAVIOR:Ljava/lang/String; = "reply_behavior"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SNAP_HEADERS:Ljava/lang/String; = "snap_headers"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    const-string v0, "force_reply_from_default"

    sput-object v0, Lcom/android/mail/providers/UIProvider$AccountColumns$SettingsColumns;->FORCE_REPLY_FROM_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
