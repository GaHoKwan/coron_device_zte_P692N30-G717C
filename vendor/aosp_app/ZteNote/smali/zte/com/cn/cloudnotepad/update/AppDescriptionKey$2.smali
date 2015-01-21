.class enum Lzte/com/cn/cloudnotepad/update/AppDescriptionKey$2;
.super Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lzte/com/cn/cloudnotepad/update/AppDescriptionKey;)V

    .line 1
    return-void
.end method


# virtual methods
.method public putVaulefromDevice(Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 21
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/update/AppDescriptionKey$2;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GENERIC"

    invoke-virtual {p1, v0, v1}, Lzte/com/cn/cloudnotepad/update/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
