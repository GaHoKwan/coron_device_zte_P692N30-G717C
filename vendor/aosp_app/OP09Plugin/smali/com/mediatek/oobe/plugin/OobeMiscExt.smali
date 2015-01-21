.class public Lcom/mediatek/oobe/plugin/OobeMiscExt;
.super Lcom/mediatek/oobe/ext/DefaultOobeMiscExt;
.source "OobeMiscExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OobeMiscExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mediatek/oobe/ext/DefaultOobeMiscExt;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "simString"
    .parameter "slotId"

    .prologue
    .line 15
    const-string v0, "SIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "SIM"

    const-string v1, "UIM/SIM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_0
    const-string v0, "OobeMiscExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oobe replace string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-object p1
.end method
