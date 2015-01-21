.class abstract enum Lcom/zte/retrieve/upgrade/AppDescriptionKey;
.super Ljava/lang/Enum;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/retrieve/upgrade/AppDescriptionKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey; = null

.field public static final enum COUNTRY:Lcom/zte/retrieve/upgrade/AppDescriptionKey; = null

.field public static final enum DEVICE:Lcom/zte/retrieve/upgrade/AppDescriptionKey; = null

.field private static final synthetic ENUM$VALUES:[Lcom/zte/retrieve/upgrade/AppDescriptionKey; = null

.field public static final enum OPERATOR:Lcom/zte/retrieve/upgrade/AppDescriptionKey; = null

.field public static final READ_DEVICE:Ljava/lang/String; = "***"

.field public static final enum VERSIONNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;


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

    .line 8
    new-instance v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey$1;

    const-string v1, "APPNAME"

    const-string v2, "appName"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/retrieve/upgrade/AppDescriptionKey$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->APPNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    .line 14
    new-instance v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey$2;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/retrieve/upgrade/AppDescriptionKey$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->COUNTRY:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    .line 21
    new-instance v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey$3;

    const-string v1, "OPERATOR"

    const-string v2, "operator"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/retrieve/upgrade/AppDescriptionKey$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->OPERATOR:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    .line 28
    new-instance v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey$4;

    const-string v1, "DEVICE"

    const-string v2, "device"

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/retrieve/upgrade/AppDescriptionKey$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->DEVICE:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    .line 38
    new-instance v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey$5;

    const-string v1, "VERSIONNAME"

    const-string v2, "versionName"

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/retrieve/upgrade/AppDescriptionKey$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->VERSIONNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    sget-object v1, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->APPNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->COUNTRY:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->OPERATOR:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->DEVICE:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->VERSIONNAME:Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    aput-object v1, v0, v7

    sput-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->ENUM$VALUES:[Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "key"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->key:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/retrieve/upgrade/AppDescriptionKey;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/retrieve/upgrade/AppDescriptionKey;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    return-object v0
.end method

.method public static values()[Lcom/zte/retrieve/upgrade/AppDescriptionKey;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->ENUM$VALUES:[Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    array-length v1, v0

    new-array v2, v1, [Lcom/zte/retrieve/upgrade/AppDescriptionKey;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public put2JSONObject(Lcom/zte/retrieve/upgrade/ZTEJSONObject;Ljava/lang/String;)V
    .locals 1
    .parameter "jsonObject"
    .parameter "value"

    .prologue
    .line 53
    const-string v0, "***"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->putVaulefromDevice(Lcom/zte/retrieve/upgrade/ZTEJSONObject;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/AppDescriptionKey;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract putVaulefromDevice(Lcom/zte/retrieve/upgrade/ZTEJSONObject;)V
.end method
