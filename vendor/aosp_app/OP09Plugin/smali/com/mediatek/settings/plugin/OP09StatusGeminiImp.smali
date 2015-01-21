.class public Lcom/mediatek/settings/plugin/OP09StatusGeminiImp;
.super Lcom/mediatek/settings/ext/DefaultStatusGeminiExt;
.source "OP09StatusGeminiImp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusGeminiImp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultStatusGeminiExt;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public customizeNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "netWorkTypeName"

    .prologue
    .line 18
    const-string v0, "StatusGeminiImp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reNameNetworkTypeNameForCTSpec netWorkTypeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-static {p1}, Lcom/mediatek/settings/plugin/CurrentNetworkInfoStatus;->renameNetworkTypeNameForCTSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
