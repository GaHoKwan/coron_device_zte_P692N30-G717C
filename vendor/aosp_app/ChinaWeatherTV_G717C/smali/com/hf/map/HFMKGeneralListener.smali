.class public Lcom/hf/map/HFMKGeneralListener;
.super Ljava/lang/Object;
.source "HFMKGeneralListener.java"

# interfaces
.implements Lcom/baidu/mapapi/MKGeneralListener;


# static fields
.field public static final mStrKey:Ljava/lang/String; = "9DA78102DEA6924AF1A91817FBE2209C76E73EDE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public onGetNetworkState(I)V
    .locals 3
    .parameter "iError"

    .prologue
    .line 13
    const-string v0, "MyGeneralListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetNetworkState error is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public onGetPermissionState(I)V
    .locals 3
    .parameter "iError"

    .prologue
    .line 20
    const-string v0, "MyGeneralListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGetPermissionState error is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
