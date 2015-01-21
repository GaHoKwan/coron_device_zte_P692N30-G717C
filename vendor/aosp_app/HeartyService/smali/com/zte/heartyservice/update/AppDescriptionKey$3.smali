.class final enum Lcom/zte/heartyservice/update/AppDescriptionKey$3;
.super Lcom/zte/heartyservice/update/AppDescriptionKey;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/update/AppDescriptionKey;
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
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/heartyservice/update/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/heartyservice/update/AppDescriptionKey$1;)V

    return-void
.end method


# virtual methods
.method public putVaulefromDevice(Lcom/zte/heartyservice/update/ZTEJSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/zte/heartyservice/update/AppDescriptionKey$3;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GENERIC"

    invoke-virtual {p1, v0, v1}, Lcom/zte/heartyservice/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
