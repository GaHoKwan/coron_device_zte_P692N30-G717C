.class public final Lcom/android/email/mail/store/imap/ImapConstants;
.super Ljava/lang/Object;
.source "ImapConstants.java"


# static fields
.field public static final ALERT:Ljava/lang/String; = "ALERT"

.field public static final APPEND:Ljava/lang/String; = "APPEND"

.field public static final APPENDUID:Ljava/lang/String; = "APPENDUID"

.field public static final BAD:Ljava/lang/String; = "BAD"

.field public static final BADCHARSET:Ljava/lang/String; = "BADCHARSET"

.field public static final BODY:Ljava/lang/String; = "BODY"

.field public static final BODYSTRUCTURE:Ljava/lang/String; = "BODYSTRUCTURE"

.field public static final BODY_BRACKET_HEADER:Ljava/lang/String; = "BODY[HEADER"

.field public static final BYE:Ljava/lang/String; = "BYE"

.field public static final CAPABILITY:Ljava/lang/String; = "CAPABILITY"

.field public static final CHECK:Ljava/lang/String; = "CHECK"

.field public static final CLOSE:Ljava/lang/String; = "CLOSE"

.field public static final COPY:Ljava/lang/String; = "COPY"

.field public static final COPYUID:Ljava/lang/String; = "COPYUID"

.field public static final CREATE:Ljava/lang/String; = "CREATE"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final EXAMINE:Ljava/lang/String; = "EXAMINE"

.field public static final EXISTS:Ljava/lang/String; = "EXISTS"

.field public static final EXPUNGE:Ljava/lang/String; = "EXPUNGE"

.field public static final FETCH:Ljava/lang/String; = "FETCH"

.field public static final FETCH_FIELD_BODY_PEEK:Ljava/lang/String; = "BODY.PEEK[]"

.field public static final FETCH_FIELD_BODY_PEEK_BARE:Ljava/lang/String; = "BODY.PEEK"

.field public static final FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String; = null

.field public static final FETCH_FIELD_HEADERS:Ljava/lang/String; = "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

.field public static final FLAGS:Ljava/lang/String; = "FLAGS"

.field public static final FLAGS_SILENT:Ljava/lang/String; = "FLAGS.SILENT"

.field public static final FLAG_ANSWERED:Ljava/lang/String; = "\\ANSWERED"

.field public static final FLAG_DELETED:Ljava/lang/String; = "\\DELETED"

.field public static final FLAG_FLAGGED:Ljava/lang/String; = "\\FLAGGED"

.field public static final FLAG_NO_SELECT:Ljava/lang/String; = "\\NOSELECT"

.field public static final FLAG_SEEN:Ljava/lang/String; = "\\SEEN"

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final INBOX:Ljava/lang/String; = "INBOX"

.field public static final INTERNALDATE:Ljava/lang/String; = "INTERNALDATE"

.field public static final LIST:Ljava/lang/String; = "LIST"

.field public static final LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final LOGOUT:Ljava/lang/String; = "LOGOUT"

.field public static final LSUB:Ljava/lang/String; = "LSUB"

.field public static final NAMESPACE:Ljava/lang/String; = "NAMESPACE"

.field public static final NIL:Ljava/lang/String; = "NIL"

.field public static final NO:Ljava/lang/String; = "NO"

.field public static final NOOP:Ljava/lang/String; = "NOOP"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final PARSE:Ljava/lang/String; = "PARSE"

.field public static final PERMANENTFLAGS:Ljava/lang/String; = "PERMANENTFLAGS"

.field public static final PREAUTH:Ljava/lang/String; = "PREAUTH"

.field public static final READ_ONLY:Ljava/lang/String; = "READ-ONLY"

.field public static final READ_WRITE:Ljava/lang/String; = "READ-WRITE"

.field public static final RENAME:Ljava/lang/String; = "RENAME"

.field public static final RFC822_SIZE:Ljava/lang/String; = "RFC822.SIZE"

.field public static final SEARCH:Ljava/lang/String; = "SEARCH"

.field public static final SELECT:Ljava/lang/String; = "SELECT"

.field public static final STARTTLS:Ljava/lang/String; = "STARTTLS"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final STORE:Ljava/lang/String; = "STORE"

.field public static final SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final TEXT:Ljava/lang/String; = "TEXT"

.field public static final TRYCREATE:Ljava/lang/String; = "TRYCREATE"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final UIDNEXT:Ljava/lang/String; = "UIDNEXT"

.field public static final UIDPLUS:Ljava/lang/String; = "UIDPLUS"

.field public static final UIDVALIDITY:Ljava/lang/String; = "UIDVALIDITY"

.field public static final UID_COPY:Ljava/lang/String; = "UID COPY"

.field public static final UID_FETCH:Ljava/lang/String; = "UID FETCH"

.field public static final UID_SEARCH:Ljava/lang/String; = "UID SEARCH"

.field public static final UID_STORE:Ljava/lang/String; = "UID STORE"

.field public static final UNSEEN:Ljava/lang/String; = "UNSEEN"

.field public static final UNSUBSCRIBE:Ljava/lang/String; = "UNSUBSCRIBE"

.field public static final XLIST:Ljava/lang/String; = "XLIST"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "BODY.PEEK[]<0.%d>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x1400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
