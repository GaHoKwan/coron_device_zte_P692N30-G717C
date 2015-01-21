.class public Lcom/mediatek/mms/op09/MmsAskIfDownloadExt;
.super Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;
.source "MmsAskIfDownloadExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsAskIfDownloadExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsAskIfDownloadImpl;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public showMmsDownloadBtn()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "Mms/MmsAskIfDownloadExt"

    const-string v1, "showMmsDownloadBtn()..."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/MmsAskIfDownloadExt;->getHost()Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsAskIfDownloadHost;->showMmsDownloadBtn()V

    .line 53
    return-void
.end method
