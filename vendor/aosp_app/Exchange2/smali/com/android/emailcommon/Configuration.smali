.class public Lcom/android/emailcommon/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final EAS_DEFAULT_PORT:I = 0x50

.field public static final EAS_DEFAULT_SSL_PORT:I = 0x1bb

.field public static final EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS:Ljava/lang/String; = "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

.field public static final IMAP_DEFAULT_PORT:I = 0x8f

.field public static final IMAP_DEFAULT_SSL_PORT:I = 0x3e1

.field public static IS_TEST:Z = false

.field public static final POP3_DEFAULT_PORT:I = 0x6e

.field public static final POP3_DEFAULT_SSL_PORT:I = 0x3e3

.field public static final SMTP_DEFAULT_PORT:I = 0x19

.field public static final SMTP_DEFAULT_SSL_PORT:I = 0x1d1

.field public static mIsRunTestcase:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    .line 37
    sput-boolean v0, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openTest()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    .line 41
    sput-boolean v0, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    .line 42
    return-void
.end method

.method public static shutDownTest()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    .line 46
    sput-boolean v0, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    .line 47
    return-void
.end method
