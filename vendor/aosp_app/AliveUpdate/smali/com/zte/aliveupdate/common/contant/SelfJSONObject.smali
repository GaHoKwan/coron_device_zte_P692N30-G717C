.class public Lcom/zte/aliveupdate/common/contant/SelfJSONObject;
.super Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;
.source "SelfJSONObject.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getClientName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/aliveupdate/common/contant/SelfJSONObject;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;-><init>()V

    .line 30
    sget-object v0, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->APPNAME:Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;

    sget-object v1, Lcom/zte/aliveupdate/common/contant/SelfJSONObject;->NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;->put2JSONObject(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "versionName"
    .parameter "versionCode"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zte/aliveupdate/common/contant/SelfJSONObject;-><init>()V

    .line 39
    const-string v0, "versionCode"

    invoke-virtual {p0, v0, p2}, Lcom/zte/aliveupdate/common/contant/SelfJSONObject;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v0, "versionName"

    invoke-virtual {p0, v0, p1}, Lcom/zte/aliveupdate/common/contant/SelfJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
