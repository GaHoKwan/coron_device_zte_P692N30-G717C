.class public Lcom/zte/bspatch/BspatchUtil;
.super Ljava/lang/Object;
.source "BspatchUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/zte/bspatch/BspatchUtil;->loadLib()V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static loadLib()V
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v1

    const-string v2, "libbspatch-jni.so"

    invoke-virtual {v1, v2}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 15
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public native bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
