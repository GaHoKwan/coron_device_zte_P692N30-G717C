.class public final Lcom/b/b/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field public static b:I

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x64

    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/b/b/a/a/a;->a:J

    sput v2, Lcom/b/b/a/a/a;->b:I

    sput v2, Lcom/b/b/a/a/a;->c:I

    const-string v0, "https://cloud.ztedevice.com/dcs/"

    sput-object v0, Lcom/b/b/a/a/a;->d:Ljava/lang/String;

    const-string v0, "999999999999999"

    sput-object v0, Lcom/b/b/a/a/a;->e:Ljava/lang/String;

    return-void
.end method
