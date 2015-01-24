.class public Lcom/android/mipop/api/e;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static hr:Ljava/lang/String;

.field private static hs:Ljava/lang/String;

.field private static ht:Ljava/lang/String;

.field private static hu:Ljava/lang/String;

.field private static hv:Ljava/lang/String;

.field private static hw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "/etc/mipop/mipop_customize.xml"

    sput-object v0, Lcom/android/mipop/api/e;->hr:Ljava/lang/String;

    const-string v0, "mipopXmlParseUtils"

    sput-object v0, Lcom/android/mipop/api/e;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/mipop/api/e;->hs:Ljava/lang/String;

    sput-object v1, Lcom/android/mipop/api/e;->ht:Ljava/lang/String;

    sput-object v1, Lcom/android/mipop/api/e;->hu:Ljava/lang/String;

    sput-object v1, Lcom/android/mipop/api/e;->hv:Ljava/lang/String;

    sput-object v1, Lcom/android/mipop/api/e;->hw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static br()I
    .locals 2

    sget-object v0, Lcom/android/mipop/api/e;->ht:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Mipop-on"

    invoke-static {v0}, Lcom/android/mipop/api/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/e;->ht:Ljava/lang/String;

    :cond_0
    const-string v0, "on"

    sget-object v1, Lcom/android/mipop/api/e;->ht:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "off"

    sget-object v1, Lcom/android/mipop/api/e;->ht:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static bs()I
    .locals 2

    sget-object v0, Lcom/android/mipop/api/e;->hu:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SoftNavibar-on"

    invoke-static {v0}, Lcom/android/mipop/api/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/e;->hu:Ljava/lang/String;

    :cond_0
    const-string v0, "on"

    sget-object v1, Lcom/android/mipop/api/e;->hu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "off"

    sget-object v1, Lcom/android/mipop/api/e;->hu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static bt()I
    .locals 2

    sget-object v0, Lcom/android/mipop/api/e;->hw:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "QuickSwitchSupport"

    invoke-static {v0}, Lcom/android/mipop/api/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/api/e;->hw:Ljava/lang/String;

    :cond_0
    const-string v0, "1"

    sget-object v1, Lcom/android/mipop/api/e;->hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string v0, "0"

    sget-object v1, Lcom/android/mipop/api/e;->hw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/android/mipop/api/e;->hr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mipop/api/e;->j(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v1, 0x0

    invoke-interface {v2, v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method
