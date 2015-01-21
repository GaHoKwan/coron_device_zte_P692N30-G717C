.class final Lat;
.super Lal;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Type:ssf"

    sput-object v0, Lat;->a:Ljava/lang/String;

    .line 13
    const-string v0, "Information miss"

    sput-object v0, Lat;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ln;)Las;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    sget-object v1, Lat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 24
    const-string v3, "http://shouji.sogou.com/wap/?c=skin&amp;a=platform&amp;platform_type=android&amp;client"

    .line 25
    sget-object v1, Lat;->b:Ljava/lang/String;

    .line 26
    sget-object v2, Lat;->b:Ljava/lang/String;

    .line 27
    sget-object v0, Lat;->b:Ljava/lang/String;

    .line 28
    array-length v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 29
    aget-object v5, v4, v7

    if-eqz v5, :cond_2

    .line 30
    aget-object v0, v4, v7

    .line 32
    :cond_2
    aget-object v5, v4, v8

    if-eqz v5, :cond_3

    .line 33
    aget-object v1, v4, v8

    .line 35
    :cond_3
    aget-object v5, v4, v9

    if-eqz v5, :cond_4

    .line 36
    aget-object v2, v4, v9

    .line 38
    :cond_4
    aget-object v5, v4, v10

    if-eqz v5, :cond_5

    .line 39
    aget-object v3, v4, v10

    .line 44
    :cond_5
    new-instance v4, Las;

    invoke-direct {v4, v3, v1, v2, v0}, Las;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method
