.class final enum Lcn/com/zte/yp/update/zd/AppDescriptionKey$3;
.super Lcn/com/zte/yp/update/zd/AppDescriptionKey;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/update/zd/AppDescriptionKey;
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
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/com/zte/yp/update/zd/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lcn/com/zte/yp/update/zd/AppDescriptionKey$1;)V

    return-void
.end method


# virtual methods
.method public putVaulefromDevice(Lcn/com/zte/yp/update/zd/ZTEJSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcn/com/zte/yp/update/zd/AppDescriptionKey$3;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GENERIC"

    invoke-virtual {p1, v0, v1}, Lcn/com/zte/yp/update/zd/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method