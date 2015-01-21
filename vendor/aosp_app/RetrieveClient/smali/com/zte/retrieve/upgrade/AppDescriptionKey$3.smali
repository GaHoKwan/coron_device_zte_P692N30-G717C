.class enum Lcom/zte/retrieve/upgrade/AppDescriptionKey$3;
.super Lcom/zte/retrieve/upgrade/AppDescriptionKey;
.source "ZTEJSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/upgrade/AppDescriptionKey;
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
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/retrieve/upgrade/AppDescriptionKey;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/zte/retrieve/upgrade/AppDescriptionKey;)V

    .line 1
    return-void
.end method


# virtual methods
.method public putVaulefromDevice(Lcom/zte/retrieve/upgrade/ZTEJSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/zte/retrieve/upgrade/AppDescriptionKey$3;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GENERIC"

    invoke-virtual {p1, v0, v1}, Lcom/zte/retrieve/upgrade/ZTEJSONObject;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
