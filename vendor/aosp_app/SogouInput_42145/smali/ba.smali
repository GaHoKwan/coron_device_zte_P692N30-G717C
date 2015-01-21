.class public Lba;
.super Lal;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "http://weixin.qq.com/"

    sput-object v0, Lba;->a:Ljava/lang/String;

    .line 8
    const-string v0, "sinaweibo://userinfo?uid"

    sput-object v0, Lba;->b:Ljava/lang/String;

    .line 9
    const-string v0, "http://weibo.cn/qr/userinfo?uid"

    sput-object v0, Lba;->c:Ljava/lang/String;

    .line 11
    const-string v0, "Information miss"

    sput-object v0, Lba;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ln;)Laz;
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    sget-object v0, Lba;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lba;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lba;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Laz;

    invoke-direct {v0, v1}, Laz;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
