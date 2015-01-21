.class public Lcom/iflytek/c/c;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;

.field public static final c:[[Ljava/lang/String;

.field public static d:[Ljava/lang/String;

.field public static e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Powered by <a href=\"http://dev.voicecloud.cn/msc/help.html\">iFLYTEK</a> "

    aput-object v1, v0, v3

    const-string v1, "http://dev.voicecloud.cn/msc/help.html"

    aput-object v1, v0, v4

    const-string v1, "I know"

    aput-object v1, v0, v5

    const-string v1, "Details"

    aput-object v1, v0, v6

    const-string v1, "Cancel"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Done"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Settings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "More"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Restart"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Retry"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Replay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Request result"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1.Please keep moderate speech\n2.Away from mic about 10 centimeters\n3.Please use it in a relative quiet environment\n4.Severel words can be once"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1.Please keep moderate speech\n2.Away from mic about 10 centimeters\n3.Please use it in a relative quiet environment\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/c/c;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Help"

    aput-object v1, v0, v3

    const-string v1, "Connecting server..."

    aput-object v1, v0, v4

    const-string v1, "Speak now"

    aput-object v1, v0, v5

    const-string v1, "Getting result..."

    aput-object v1, v0, v6

    const-string v1, "Getting audio..."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TTS Powered by iFLYTEK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Uploading data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/c/c;->b:[Ljava/lang/String;

    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Please keep calm tone and moderate speech"

    aput-object v2, v1, v3

    const-string v2, "Away from mic about 10 centimeters"

    aput-object v2, v1, v4

    const-string v2, "Please use it in a relative quiet environment"

    aput-object v2, v1, v5

    const-string v2, "Severel words can be once"

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Please keep calm tone and moderate speech"

    aput-object v2, v1, v3

    const-string v2, "Away from mic about 10 centimeters"

    aput-object v2, v1, v4

    const-string v2, "Please use it in a relative quiet environment"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "iFLYTEK Speech  Communicate immensely"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/c/c;->c:[[Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Network failure"

    aput-object v1, v0, v4

    const-string v1, "Connect timeout"

    aput-object v1, v0, v5

    const-string v1, "Invalid network connection"

    aput-object v1, v0, v6

    const-string v1, "Permission denied"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Invalid result"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Connect to server failed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid parameter"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Unexpected error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Recording failed"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "No match"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "No speech detected"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Coding error"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Invalid text"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Open file failed"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Audioplayer error"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Out of memory"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Text overflow"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Login check failed"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Network is busy"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Invalid data"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Invalid grammar"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Local resource failed"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "invalid user"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "invalid password"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/c/c;->d:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Error code"

    aput-object v1, v0, v3

    const-string v1, "Error reason"

    aput-object v1, v0, v4

    const-string v1, "Unexpected error"

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/c/c;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
