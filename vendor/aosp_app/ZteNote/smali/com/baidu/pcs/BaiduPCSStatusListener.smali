.class public abstract Lcom/baidu/pcs/BaiduPCSStatusListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onProgress(JJ)V
.end method

.method public progressInterval()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public toContinue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
