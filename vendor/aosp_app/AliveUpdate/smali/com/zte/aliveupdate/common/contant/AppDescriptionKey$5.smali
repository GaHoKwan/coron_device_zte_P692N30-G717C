.class final enum Lcom/zte/aliveupdate/common/contant/AppDescriptionKey$5;
.super Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/aliveupdate/common/contant/AppDescriptionKey$1;)V

    return-void
.end method


# virtual methods
.method public putVaulefromDevice(Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 46
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getInnerDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, deviceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/aliveupdate/common/contant/AppDescriptionKey$5;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/zte/aliveupdate/common/contant/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method