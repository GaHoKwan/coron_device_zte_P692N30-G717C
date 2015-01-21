.class public Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;
.super Ljava/lang/Object;
.source "BaiduPCSActionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PCSRawHTTPResponse"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public response:Lorg/apache/http/HttpResponse;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->response:Lorg/apache/http/HttpResponse;

    .line 1093
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSActionBase$PCSRawHTTPResponse;->message:Ljava/lang/String;

    .line 1088
    return-void
.end method
