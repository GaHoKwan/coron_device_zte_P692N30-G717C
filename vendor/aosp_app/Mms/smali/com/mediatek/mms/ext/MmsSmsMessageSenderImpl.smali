.class public Lcom/mediatek/mms/ext/MmsSmsMessageSenderImpl;
.super Landroid/content/ContextWrapper;
.source "MmsSmsMessageSenderImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsSmsMessageSender;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsSmsMessageSenderImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIJ)Landroid/net/Uri;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "simId"
    .parameter "ipmsgId"

    .prologue
    .line 55
    const-string v0, "Mms/MmsSmsMessageSenderImpl"

    const-string v1, "MmsSmsMessageSenderImpl: addMessageToUri()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
