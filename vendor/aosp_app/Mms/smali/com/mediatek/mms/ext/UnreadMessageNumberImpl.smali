.class public Lcom/mediatek/mms/ext/UnreadMessageNumberImpl;
.super Landroid/content/ContextWrapper;
.source "UnreadMessageNumberImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IUnreadMessageNumber;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/UnreadMessageNumberImpl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method public updateUnreadMessageNumber(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "Mms/UnreadMessageNumberImpl"

    const-string v1, "UnreadMessageNumberImpl: updateUnreadMessageNumber()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
