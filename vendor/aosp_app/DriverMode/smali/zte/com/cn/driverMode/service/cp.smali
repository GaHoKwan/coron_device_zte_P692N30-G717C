.class public final Lzte/com/cn/driverMode/service/cp;
.super Lorg/json/JSONObject;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "GENERIC"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cp;->a:Ljava/lang/String;

    const-string v0, "V0.0.0"

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cp;->b:Ljava/lang/String;

    iput v1, p0, Lzte/com/cn/driverMode/service/cp;->c:I

    sget-object v0, Lzte/com/cn/driverMode/service/a;->c:Lzte/com/cn/driverMode/service/a;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/driverMode/service/a;->a(Lzte/com/cn/driverMode/service/cp;Ljava/lang/String;)V

    sget-object v0, Lzte/com/cn/driverMode/service/a;->b:Lzte/com/cn/driverMode/service/a;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/driverMode/service/a;->a(Lzte/com/cn/driverMode/service/cp;Ljava/lang/String;)V

    sget-object v0, Lzte/com/cn/driverMode/service/a;->e:Lzte/com/cn/driverMode/service/a;

    const-string v1, "GENERIC"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/driverMode/service/a;->a(Lzte/com/cn/driverMode/service/cp;Ljava/lang/String;)V

    sget-object v0, Lzte/com/cn/driverMode/service/a;->d:Lzte/com/cn/driverMode/service/a;

    const-string v1, "V0.0.0"

    invoke-virtual {v0, p0, v1}, Lzte/com/cn/driverMode/service/a;->a(Lzte/com/cn/driverMode/service/cp;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "versionCode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/service/cp;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "client_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/driverMode/service/cp;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)I
    .locals 3

    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzte/com/cn/driverMode/service/a;->valueOf(Ljava/lang/String;)Lzte/com/cn/driverMode/service/a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lzte/com/cn/driverMode/service/a;->a(Lzte/com/cn/driverMode/service/cp;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lzte/com/cn/driverMode/service/cp;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "ZTE_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-direct {p0, v1, v4}, Lzte/com/cn/driverMode/service/cp;->a(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    const-string v0, "versionCode"

    :try_start_0
    invoke-virtual {p0, v0, p3}, Lzte/com/cn/driverMode/service/cp;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    const-string v0, "versionName"

    invoke-virtual {p0, v0, p2}, Lzte/com/cn/driverMode/service/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
