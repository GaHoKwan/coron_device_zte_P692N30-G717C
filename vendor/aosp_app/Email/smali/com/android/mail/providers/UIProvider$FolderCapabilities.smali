.class public final Lcom/android/mail/providers/UIProvider$FolderCapabilities;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderCapabilities"
.end annotation


# static fields
.field public static final ARCHIVE:I = 0x10

.field public static final CAN_ACCEPT_MOVED_MESSAGES:I = 0x8

.field public static final CAN_HOLD_MAIL:I = 0x4

.field public static final DESTRUCTIVE_MUTE:I = 0x40

.field public static final ONLY_IMPORTANT:I = 0x100

.field public static final PARENT:I = 0x2

.field public static final REPORT_SPAM:I = 0x20

.field public static final SUPPORTS_SETTINGS:I = 0x80

.field public static final SYNCABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
