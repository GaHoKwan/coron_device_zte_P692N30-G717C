.class public final Lcom/farben/faq/common/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static final c:Landroid/net/Uri;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/farben/faq/common/d;->a:I

    sput v0, Lcom/farben/faq/common/d;->b:I

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/common/d;->c:Landroid/net/Uri;

    sput-object v1, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    sput-object v1, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    return-void
.end method
