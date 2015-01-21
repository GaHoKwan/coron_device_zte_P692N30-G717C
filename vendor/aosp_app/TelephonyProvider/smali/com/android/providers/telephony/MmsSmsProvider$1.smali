.class final Lcom/android/providers/telephony/MmsSmsProvider$1;
.super Ljava/lang/Object;
.source "MmsSmsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/MmsSmsProvider;->notifyUnreadMessageNumberChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 3013
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3016
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/providers/telephony/MmsSmsProvider;->getUnreadMessageNumber(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsProvider;->access$000(Landroid/content/Context;)I

    move-result v0

    .line 3017
    .local v0, unreadNumber:I
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/providers/telephony/MmsSmsProvider;->recordUnreadMessageNumberToSys(Landroid/content/Context;I)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->access$100(Landroid/content/Context;I)V

    .line 3018
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsProvider$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/providers/telephony/MmsSmsProvider;->broadcastUnreadMessageNumber(Landroid/content/Context;I)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/MmsSmsProvider;->access$200(Landroid/content/Context;I)V

    .line 3019
    return-void
.end method
