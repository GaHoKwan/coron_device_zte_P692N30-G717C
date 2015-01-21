.class public Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt;
.super Lcom/mediatek/mms/ext/UnreadMessageNumberImpl;
.source "OP09UnreadMessageNumberExt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/OP09UnreadMessageNumberExt"

.field private static final UNREAD_URI:Ljava/lang/String; = "content://mms-sms/conversations/unread"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/UnreadMessageNumberImpl;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method public updateUnreadMessageNumber(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "Mms/OP09UnreadMessageNumberExt"

    const-string v1, "OP09UnreadMessageNumberExt: updateUnreadMessageNumber()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt$1;-><init>(Lcom/mediatek/mms/op09/OP09UnreadMessageNumberExt;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method
