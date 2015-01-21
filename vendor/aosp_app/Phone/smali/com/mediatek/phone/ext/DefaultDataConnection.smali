.class public Lcom/mediatek/phone/ext/DefaultDataConnection;
.super Ljava/lang/Object;
.source "DefaultDataConnection.java"

# interfaces
.implements Lcom/mediatek/phone/ext/IDataConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDataConnection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bShowDataConn(Landroid/content/Context;ZI)Z
    .locals 2
    .parameter "context"
    .parameter "bRoaming"
    .parameter "simSlot"

    .prologue
    .line 21
    const-string v0, "DefaultDataConnection"

    const-string v1, "bShowDataConn:true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public getGprsRadioInPreferenceProperty(II)I
    .locals 3
    .parameter "commonPosition"
    .parameter "simSlot"

    .prologue
    .line 26
    const-string v0, "DefaultDataConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST:getGprsRadioInPreferenceProperty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return p1
.end method
