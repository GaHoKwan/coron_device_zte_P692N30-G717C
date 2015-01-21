.class public Lcom/sdk/bean/UrlBean;
.super Ljava/lang/Object;
.source "UrlBean.java"


# instance fields
.field public queryUrl:Ljava/lang/String;

.field public uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/sdk/bean/UrlBean;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sdk/bean/UrlBean;->uploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setQueryUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "queryUrl"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/sdk/bean/UrlBean;->queryUrl:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "uploadUrl"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sdk/bean/UrlBean;->uploadUrl:Ljava/lang/String;

    .line 21
    return-void
.end method
