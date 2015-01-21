.class Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;
.super Ljava/lang/Object;
.source "BaiduPCSUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadTask"
.end annotation


# instance fields
.field public listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/pcs/BaiduPCSUploader;


# direct methods
.method private constructor <init>(Lcom/baidu/pcs/BaiduPCSUploader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->this$0:Lcom/baidu/pcs/BaiduPCSUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->source:Ljava/lang/String;

    .line 304
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->target:Ljava/lang/String;

    .line 305
    iput-object v0, p0, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;->listener:Lcom/baidu/pcs/BaiduPCSStatusListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/pcs/BaiduPCSUploader;Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/baidu/pcs/BaiduPCSUploader$UploadTask;-><init>(Lcom/baidu/pcs/BaiduPCSUploader;)V

    return-void
.end method
