.class abstract enum Lcom/zte/heartyservice/update/AppDescriptionKey;
.super Ljava/lang/Enum;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/update/AppDescriptionKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/update/AppDescriptionKey; = null

.field public static final enum APPNAME:Lcom/zte/heartyservice/update/AppDescriptionKey; = null

.field public static final enum COUNTRY:Lcom/zte/heartyservice/update/AppDescriptionKey; = null

.field public static final enum DEVICE:Lcom/zte/heartyservice/update/AppDescriptionKey; = null

.field public static final enum OPERATOR:Lcom/zte/heartyservice/update/AppDescriptionKey; = null

.field public static final READ_DEVICE:Ljava/lang/String; = "***"

.field public static final enum VERSIONNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/zte/heartyservice/update/AppDescriptionKey$1;

    const-string v1, "APPNAME"

    const-string v2, "appName"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/heartyservice/update/AppDescriptionKey$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->APPNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;

    .line 20
    new-instance v0, Lcom/zte/heartyservice/update/AppDescriptionKey$2;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/heartyservice/update/AppDescriptionKey$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->COUNTRY:Lcom/zte/heartyservice/update/AppDescriptionKey;

    .line 27
    new-instance v0, Lcom/zte/heartyservice/update/AppDescriptionKey$3;

    const-string v1, "OPERATOR"

    const-string v2, "operator"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/heartyservice/update/AppDescriptionKey$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->OPERATOR:Lcom/zte/heartyservice/update/AppDescriptionKey;

    .line 33
    new-instance v0, Lcom/zte/heartyservice/update/AppDescriptionKey$4;

    const-string v1, "VERSIONNAME"

    const-string v2, "versionName"

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/heartyservice/update/AppDescriptionKey$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->VERSIONNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;

    .line 39
    new-instance v0, Lcom/zte/heartyservice/update/AppDescriptionKey$5;

    const-string v1, "DEVICE"

    const-string v2, "device"

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/heartyservice/update/AppDescriptionKey$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->DEVICE:Lcom/zte/heartyservice/update/AppDescriptionKey;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/heartyservice/update/AppDescriptionKey;

    sget-object v1, Lcom/zte/heartyservice/update/AppDescriptionKey;->APPNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/update/AppDescriptionKey;->COUNTRY:Lcom/zte/heartyservice/update/AppDescriptionKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/update/AppDescriptionKey;->OPERATOR:Lcom/zte/heartyservice/update/AppDescriptionKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/update/AppDescriptionKey;->VERSIONNAME:Lcom/zte/heartyservice/update/AppDescriptionKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/heartyservice/update/AppDescriptionKey;->DEVICE:Lcom/zte/heartyservice/update/AppDescriptionKey;

    aput-object v1, v0, v7

    sput-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->$VALUES:[Lcom/zte/heartyservice/update/AppDescriptionKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/zte/heartyservice/update/AppDescriptionKey;->key:Ljava/lang/String;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/heartyservice/update/AppDescriptionKey$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/update/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/update/AppDescriptionKey;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/zte/heartyservice/update/AppDescriptionKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/update/AppDescriptionKey;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/update/AppDescriptionKey;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/zte/heartyservice/update/AppDescriptionKey;->$VALUES:[Lcom/zte/heartyservice/update/AppDescriptionKey;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/update/AppDescriptionKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/update/AppDescriptionKey;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/update/AppDescriptionKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public put2JSONObject(Lcom/zte/heartyservice/update/ZTEJSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter "jsonObject"
    .parameter "value"

    .prologue
    .line 56
    const-string v0, "***"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/update/AppDescriptionKey;->putVaulefromDevice(Lcom/zte/heartyservice/update/ZTEJSONObject;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/update/AppDescriptionKey;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract putVaulefromDevice(Lcom/zte/heartyservice/update/ZTEJSONObject;)V
.end method
