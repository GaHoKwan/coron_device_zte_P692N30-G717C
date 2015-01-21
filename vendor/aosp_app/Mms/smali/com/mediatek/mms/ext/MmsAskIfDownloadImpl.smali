.class public Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;
.super Landroid/content/ContextWrapper;
.source "MmsAskIfDownloadImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsAskIfDownload;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsAskIfDownloadImpl"


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;->mHost:Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;

    .line 49
    return-void
.end method


# virtual methods
.method protected getHost()Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;->mHost:Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;->mHost:Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;

    .line 53
    return-void
.end method

.method public showMmsDownloadBtn()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "Mms/MmsAskIfDownloadImpl"

    const-string v1, "showMmsDownloadBtn()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
