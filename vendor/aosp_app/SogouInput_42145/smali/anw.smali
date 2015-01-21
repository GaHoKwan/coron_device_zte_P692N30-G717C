.class public final Lanw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Landroid/net/Uri;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Landroid/net/Uri;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 948
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanw;->a:Landroid/net/Uri;

    .line 950
    sget-object v0, Lanw;->a:Landroid/net/Uri;

    const-string v1, "report-request"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanw;->b:Landroid/net/Uri;

    .line 953
    sget-object v0, Lanw;->a:Landroid/net/Uri;

    const-string v1, "report-status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanw;->c:Landroid/net/Uri;

    .line 966
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lanw;->a:Ljava/util/regex/Pattern;

    .line 969
    const-string v0, "(.*://)?([\\w-]\\.)[\\w-](:\\d)?(/[^/.]*)*(/[^/]\\.[^/\\?])(\\?&*([^&=]=[^&=]*)&*(&[^&=]=[^&=]*)*&*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lanw;->b:Ljava/util/regex/Pattern;

    .line 977
    const-string v0, "\\s*\"([^\"]*)\"\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lanw;->c:Ljava/util/regex/Pattern;

    return-void
.end method
