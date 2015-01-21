.class public Lcom/mediatek/mms/op09/ResendSmsExt;
.super Lcom/mediatek/mms/ext/ResendSmsImpl;
.source "ResendSmsExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ResendSmsExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/ResendSmsImpl;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method


# virtual methods
.method public resendMessage(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "simId"

    .prologue
    .line 56
    const-string v0, "Mms/ResendSmsExt"

    const-string v1, "ResendSmsExt.resendMessage"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/mms/op09/ResendSmsExt$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/mms/op09/ResendSmsExt$1;-><init>(Lcom/mediatek/mms/op09/ResendSmsExt;Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method
