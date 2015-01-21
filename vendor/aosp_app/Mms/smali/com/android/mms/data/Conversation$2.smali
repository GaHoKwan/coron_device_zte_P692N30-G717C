.class final Lcom/android/mms/data/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$localSelection:Ljava/lang/String;

.field final synthetic val$queryHandler:Landroid/content/AsyncQueryHandler;

.field final synthetic val$queryToken:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/AsyncQueryHandler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/mms/data/Conversation$2;->val$localSelection:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$2;->val$queryHandler:Landroid/content/AsyncQueryHandler;

    iput p3, p0, Lcom/android/mms/data/Conversation$2;->val$queryToken:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 962
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->val$localSelection:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->val$localSelection:Ljava/lang/String;

    const-string v1, "allunread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->val$queryHandler:Landroid/content/AsyncQueryHandler;

    iget v1, p0, Lcom/android/mms/data/Conversation$2;->val$queryToken:I

    sget-object v3, Lcom/android/mms/data/Conversation;->sAllUnreadMessagesUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->val$localSelection:Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->val$queryHandler:Landroid/content/AsyncQueryHandler;

    iget v1, p0, Lcom/android/mms/data/Conversation$2;->val$queryToken:I

    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUriExtend:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION_EXTEND:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/data/Conversation$2;->val$localSelection:Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
