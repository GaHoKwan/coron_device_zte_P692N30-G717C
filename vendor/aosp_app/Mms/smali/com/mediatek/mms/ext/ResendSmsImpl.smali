.class public Lcom/mediatek/mms/ext/ResendSmsImpl;
.super Landroid/content/ContextWrapper;
.source "ResendSmsImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IResendSms;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ResendSmsImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public resendMessage(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "simId"

    .prologue
    .line 52
    const-string v0, "Mms/ResendSmsImpl"

    const-string v1, "ResendSmsImpl.resendMessage"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
