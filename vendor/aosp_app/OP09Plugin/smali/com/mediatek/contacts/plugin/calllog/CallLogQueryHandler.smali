.class public Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;
    }
.end annotation


# static fields
.field private static final DELETE_CALLS_TOKEN:I = 0x3b

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHandler"


# instance fields
.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .parameter "contentResolver"
    .parameter "listener"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 74
    const-string v0, "CallLogQueryHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method public deleteSpecifiedCalls(Ljava/lang/String;)V
    .locals 6
    .parameter "deleteFilter"

    .prologue
    const/4 v2, 0x0

    .line 70
    const/16 v1, 0x3b

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;

    .line 64
    .local v0, listener:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;->onCallsDeleted()V

    .line 67
    :cond_0
    return-void
.end method
